import ActorItem from "@/ActorItem";
import ActorAbility from "@/ActorAbility";
import DataBase from "@/DataBase";

export default class MessageUtil {

    static hookEventCallBacks: {
        [type: string]: ((msg: any) => boolean)[]
    } = {}

    /** 返回true 表示忽略此次点击  eventId 1=左键点击*/
    static windowEventCallBacks: ((this: void, eventId: number) => boolean)[] = [];


    private static _sl_isInitialized = false

    // private static _sl_lastReleaseItem = null

    /**
     *
     * @param callBack 返回true 表示忽略此次点击
     */
    static addWindowEventCallBack(callBack: ((this: void, eventId: number) => boolean)) {
        MessageUtil.windowEventCallBacks.push(callBack)
    }


    private static _sl_onHookMsg(msg: any): boolean {
        let type = msg.type;
        if (type == null) {
            return true
        }
        if (type == "key_down") {
            // MessageUtil._sl_lastReleaseItem = null
        } else if (type == "mouse_ability") {//鼠标点击技能
            if (msg.ability == null) {
                return true
            }
            let actor: ActorAbility = DataBase.getAbilityTypeSolarData(id2string(msg.ability), false)?._SL_solarActorAbility;
            if (actor != null) {
                if (actor.isPassive() || actor.isDisable() || actor.isHide()) {
                    return false
                }
                //目前只能监听到左键点击技能
                let b = actor.localClick(msg.code == 4 ? 2 : 1, msg.x, msg.y);
                if (b == false) {
                    return false;
                }
            }
        } else if (type == "mouse_item") {
            //点击技能时 msg.ability 为0
            let order: number = msg.order;
            let itemIndex = order - 852008
            // if (MessageUtil._sl_lastReleaseItem != null) {
            //     MessageUtil._sl_lastReleaseItem = null
            //     return true
            // }
            // if (msg.code == 4) {
            //     MessageUtil._sl_lastReleaseItem = itemIndex
            //     return true;
            // }
            let item = UnitItemInSlot(selection(), itemIndex);
            let actor: ActorItem = DataBase.getItemSolarData(item, false)?._SL_solarActorItem;
            if (actor != null) {
                //左键点击被动物品 拦截 (模拟被动物品 在准备施放技能时发布停止命令即可 这里拦截可能会导致 选择物品目标 交换物品位置不可用)
                // if (msg.code == 1 && actor.isPassive() || actor.isDisable() || actor.isHide()) {
                //     return false
                // }
                let b = actor.localClick(msg.code == 4 ? 2 : 1, msg.x, msg.y);
                //返回false 可能会导致 选择物品目标 交换物品位置不可用
                if (b == false) {
                    return false;
                }
            }
        }

        let hookEventCallBacks = MessageUtil.hookEventCallBacks[type];
        if (hookEventCallBacks == null) {
            return true;
        }
        for (let callBack of hookEventCallBacks) {
            let f = callBack(msg);
            if (f == false) {
                return f
            }
        }
        return true;
    }

    static _sl_init_message_hook() {
        if (MessageUtil._sl_isInitialized) {
            return;
        }
        MessageUtil._sl_isInitialized = true;
        //
        if (isEmbedJapi == false && isDebug) {
            print("提示：部分we注册message.hook事件会导致释放技能崩溃!(标准ydwe不会！)")
        }
        //
        const message: NoSelf = require('jass.message')
        let hook: (this: void, msg) => boolean = message.hook;
        if (hook == null) {
            message.hook = function (msg: any) {
                return MessageUtil._sl_onHookMsg(msg);
            }
        } else {
            message.hook = function (this: void, msg: any) {
                let flag = MessageUtil._sl_onHookMsg(msg);
                if (flag == false) {
                    //返回fasle 表示拦截
                    return flag;
                }
                return hook(msg);
            }
        }
        //窗口根事件 可以在这里做一些比message.hook 还要提前的事件处理
        if (isEmbedJapi) {
            let oldWindowEventCallBack: (this: void, eventId: number) => boolean = _G["WindowEventCallBack"];
            if (oldWindowEventCallBack == null) {
                _G["WindowEventCallBack"] = function (this: void, eventId: number) {
                    for (let windowEventCallBack of MessageUtil.windowEventCallBacks) {
                        let flag = windowEventCallBack(eventId);
                        if (flag == true) {
                            return true;
                        }
                    }
                    return false;
                }
            } else {
                _G["WindowEventCallBack"] = function (this: void, eventId: number) {
                    for (let windowEventCallBack of MessageUtil.windowEventCallBacks) {
                        let flag = windowEventCallBack(eventId);
                        if (flag == true) {
                            return true;
                        }
                    }
                    return oldWindowEventCallBack(eventId);
                }
            }
        }

    }

}