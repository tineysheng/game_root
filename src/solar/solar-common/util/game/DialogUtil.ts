import BaseUtil from "@/BaseUtil";
import KeyCode from "@/KeyCode";

type PlayerBaseDialogData = {
    dialog: dialog,
    onClickButtonCallBack?: (index: number, text: string) => void
    buttons: {
        [bid: number]: {
            _sl_index: number
            _sl_text: string
        }
    }
}
/**
 * 通过全局每个玩家通用一个对话框实例 减少回调注册
 */
export default class DialogUtil {

    private static _sl_base_dialog_datas: {
        [pid: number]: PlayerBaseDialogData
    } = {};


    private static getBaseDialog(playerId: number): PlayerBaseDialogData {
        if (isAsync){
            log.errorWithTraceBack("不能在异步环境使用此对话框！");
            return null;
        }
        let baseDialogData = DialogUtil._sl_base_dialog_datas[playerId];
        if (baseDialogData == null) {
            let dialog = DialogCreate();
            baseDialogData = {
                dialog: dialog,
                buttons: {}
            };
            DialogUtil._sl_base_dialog_datas[playerId] = baseDialogData;
            // onclick Trigger
            let trigger = CreateTrigger();
            TriggerRegisterDialogEvent(trigger, dialog);
            TriggerAddAction(trigger, () => {
                let dialogData = DialogUtil._sl_base_dialog_datas[GetPlayerId(GetTriggerPlayer())];
                if (dialogData == null) {
                    return;
                }
                let button = GetClickedButton();
                let buttonData = dialogData.buttons[GetHandleId(button)];
                if (buttonData == null) {
                    return;
                }
                dialogData.onClickButtonCallBack?.(buttonData._sl_index,
                    buttonData._sl_text);
            });
        }
        let baseDialog = baseDialogData.dialog;
        DialogClear(baseDialog);
        return baseDialogData;

    }

    /**
     *
     * @param playerId 显示对话框的玩家
     * @param title 对话框标题
     * @param onClickButtonCallBack 点击对话框里的按钮时的回调
     * @param buttonTexts 按钮文字列表[]
     */
    static show(playerId: number, title: string, onClickButtonCallBack: (index: number, text: string) => void, ...buttonTexts: string[]): dialog {
        let baseDialogData = DialogUtil.getBaseDialog(playerId);
        baseDialogData.onClickButtonCallBack = onClickButtonCallBack;
        DialogSetMessage(baseDialogData.dialog, title);
        for (let i = 0; i < buttonTexts.length; i++) {
            let buttonText = buttonTexts[i];
            let hotKey = i < 10 ? KeyCode['VK_' + (i + 1)] : 0
            let button = DialogAddButton(baseDialogData.dialog, buttonText, hotKey);
            baseDialogData.buttons[GetHandleId(button)] = {
                _sl_index: i,
                _sl_text: buttonText,
            };
        }
        //
        DialogDisplay(Player(playerId), baseDialogData.dialog, true);
        return baseDialogData.dialog;

    }

    /**
     *
     * @param playerId 显示对话框的玩家
     * @param title 对话框标题
     * @param lifeTime 最大点击时间限制 超过这个时间则默认选择第一个
     * @param onClickButtonCallBack 点击对话框里的按钮时的回调
     * @param buttonTexts 按钮文字列表[]
     */
    static showWithTimeLimit(playerId: number, title: string, lifeTime: number, onClickButtonCallBack: (index: number, text: string) => void, ...buttonTexts: string[]): dialog {
        let baseDialogData = DialogUtil.getBaseDialog(playerId);
        let dialog = baseDialogData.dialog;
        baseDialogData.onClickButtonCallBack = (index, text) => {
            tl.destroy();
            onClickButtonCallBack(index, text);
        };
        DialogSetMessage(dialog, title);
        let tl = BaseUtil.onTimer(1, c => {
            if (c > lifeTime) {
                onClickButtonCallBack(0, buttonTexts[0])
                return false;
            }
            DialogSetMessage(dialog, title + " （|cffff0000剩余" + (lifeTime - c) + "|r）");
            return true;
        });
        for (let i = 0; i < buttonTexts.length; i++) {
            let buttonText = buttonTexts[i];
            let hotKey = i < 10 ? KeyCode['VK_' + (i + 1)] : 0
            let button = DialogAddButton(dialog, buttonText, hotKey);
            baseDialogData.buttons[GetHandleId(button)] = {
                _sl_index: i,
                _sl_text: buttonText,
            };
        }
        //

        DialogDisplay(Player(playerId), dialog, true);
        // onclick Trigger
        return dialog;


    }

}