.class final Lcom/android/phone/PhoneUtils$6;
.super Ljava/lang/Object;
.source "PhoneUtils.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneUtils;->displayMMIComplete(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Lcom/htc/widget/HtcAlertDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$inputText:Landroid/widget/EditText;

.field final synthetic val$mmiCode:Lcom/android/internal/telephony/MmiCode;

.field final synthetic val$newDialog:Lcom/htc/widget/HtcAlertDialog;

.field final synthetic val$phone:Lcom/android/internal/telephony/Phone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/Phone;Landroid/widget/EditText;Lcom/htc/widget/HtcAlertDialog;Lcom/android/internal/telephony/MmiCode;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1859
    iput-object p1, p0, Lcom/android/phone/PhoneUtils$6;->val$phone:Lcom/android/internal/telephony/Phone;

    iput-object p2, p0, Lcom/android/phone/PhoneUtils$6;->val$inputText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/phone/PhoneUtils$6;->val$newDialog:Lcom/htc/widget/HtcAlertDialog;

    iput-object p4, p0, Lcom/android/phone/PhoneUtils$6;->val$mmiCode:Lcom/android/internal/telephony/MmiCode;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1861
    sparse-switch p2, :sswitch_data_0

    .line 1878
    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    .line 1864
    :sswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 1865
    iget-object v1, p0, Lcom/android/phone/PhoneUtils$6;->val$phone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/PhoneUtils$6;->val$inputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->sendUssdResponse(Ljava/lang/String;)V

    .line 1866
    iget-object v1, p0, Lcom/android/phone/PhoneUtils$6;->val$newDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    goto :goto_0

    .line 1871
    :sswitch_1
    iget-object v1, p0, Lcom/android/phone/PhoneUtils$6;->val$mmiCode:Lcom/android/internal/telephony/MmiCode;

    invoke-interface {v1}, Lcom/android/internal/telephony/MmiCode;->isCancelable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1872
    iget-object v1, p0, Lcom/android/phone/PhoneUtils$6;->val$mmiCode:Lcom/android/internal/telephony/MmiCode;

    invoke-interface {v1}, Lcom/android/internal/telephony/MmiCode;->cancel()V

    .line 1874
    :cond_1
    iget-object v1, p0, Lcom/android/phone/PhoneUtils$6;->val$newDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    goto :goto_0

    .line 1861
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x5 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method
