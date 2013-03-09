.class public interface abstract Lcom/htc/opensense/album/plugin/IUIHandler;
.super Ljava/lang/Object;
.source "IUIHandler.java"


# static fields
.field public static final UICMD_CANCEL_PICKER_MODE:I = 0x10200008

.field public static final UICMD_DELETE_PARAM_BEGIN:I = 0x0

.field public static final UICMD_DELETE_PARAM_END:I = 0x1

.field public static final UICMD_ENTER_DELETEPICKER_MODE:I = 0x10200007

.field public static final UICMD_ENTER_MULTIPICKER_MODE:I = 0x10200006

.field public static final UICMD_ENTER_SINGLEPICKER_MODE:I = 0x10200005

.field public static final UICMD_GOTO_PREVIOUS_LIST:I = 0x10200009

.field public static final UICMD_PICKER_RESULT:I = 0x10300001

.field public static final UICMD_REFRESH:I = 0x10200001

.field public static final UICMD_REFRESH_PARAM_BEGIN:I = 0x1

.field public static final UICMD_REFRESH_PARAM_END:I = 0x0

.field public static final UICMD_REFRESH_PARAM_ONLY_INVALIDATE:I = 0x2

.field public static final UICMD_SHOW_HIDE_DESCRIPTION:I = 0x10200003

.field public static final UICMD_SHOW_HIDE_TAG:I = 0x10200004

.field public static final UICMD_VIEW:I = 0x10200002


# virtual methods
.method public abstract notifyUICommand(II)I
.end method

.method public abstract notifyUICommand(ILjava/lang/Object;)I
.end method
