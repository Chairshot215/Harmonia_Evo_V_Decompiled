.class Lcom/android/phone/HtcCdmaPrlUpdateSetting$4;
.super Landroid/os/Handler;
.source "HtcCdmaPrlUpdateSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/HtcCdmaPrlUpdateSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/HtcCdmaPrlUpdateSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/HtcCdmaPrlUpdateSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting$4;->this$0:Lcom/android/phone/HtcCdmaPrlUpdateSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 223
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 226
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting$4;->this$0:Lcom/android/phone/HtcCdmaPrlUpdateSetting;

    #getter for: Lcom/android/phone/HtcCdmaPrlUpdateSetting;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->access$400(Lcom/android/phone/HtcCdmaPrlUpdateSetting;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting$4;->this$0:Lcom/android/phone/HtcCdmaPrlUpdateSetting;

    #calls: Lcom/android/phone/HtcCdmaPrlUpdateSetting;->updatePrlVersion()V
    invoke-static {v1}, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->access$500(Lcom/android/phone/HtcCdmaPrlUpdateSetting;)V

    goto :goto_0

    .line 233
    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting$4;->this$0:Lcom/android/phone/HtcCdmaPrlUpdateSetting;

    #calls: Lcom/android/phone/HtcCdmaPrlUpdateSetting;->isRadioOn()Z
    invoke-static {v1}, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->access$600(Lcom/android/phone/HtcCdmaPrlUpdateSetting;)Z

    move-result v1

    if-ne v1, v6, :cond_1

    .line 235
    iget-object v1, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting$4;->this$0:Lcom/android/phone/HtcCdmaPrlUpdateSetting;

    #calls: Lcom/android/phone/HtcCdmaPrlUpdateSetting;->updatePrlVersion()V
    invoke-static {v1}, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->access$500(Lcom/android/phone/HtcCdmaPrlUpdateSetting;)V

    goto :goto_0

    .line 240
    :cond_1
    iget-object v1, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting$4;->this$0:Lcom/android/phone/HtcCdmaPrlUpdateSetting;

    #getter for: Lcom/android/phone/HtcCdmaPrlUpdateSetting;->mNeedTurnOnRadio:Z
    invoke-static {v1}, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->access$700(Lcom/android/phone/HtcCdmaPrlUpdateSetting;)Z

    move-result v1

    if-ne v1, v6, :cond_0

    .line 241
    iget-object v1, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting$4;->this$0:Lcom/android/phone/HtcCdmaPrlUpdateSetting;

    #getter for: Lcom/android/phone/HtcCdmaPrlUpdateSetting;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->access$400(Lcom/android/phone/HtcCdmaPrlUpdateSetting;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1, v6}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    goto :goto_0

    .line 249
    :pswitch_2
    iget-object v1, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting$4;->this$0:Lcom/android/phone/HtcCdmaPrlUpdateSetting;

    #calls: Lcom/android/phone/HtcCdmaPrlUpdateSetting;->setIsUpdating(Z)V
    invoke-static {v1, v6}, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->access$800(Lcom/android/phone/HtcCdmaPrlUpdateSetting;Z)V

    .line 253
    iget-object v1, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting$4;->this$0:Lcom/android/phone/HtcCdmaPrlUpdateSetting;

    iget-object v2, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting$4;->this$0:Lcom/android/phone/HtcCdmaPrlUpdateSetting;

    #getter for: Lcom/android/phone/HtcCdmaPrlUpdateSetting;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->access$1000(Lcom/android/phone/HtcCdmaPrlUpdateSetting;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting$4;->this$0:Lcom/android/phone/HtcCdmaPrlUpdateSetting;

    const v4, 0x7f0e01b4

    invoke-virtual {v3, v4}, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting$4;->this$0:Lcom/android/phone/HtcCdmaPrlUpdateSetting;

    const v5, 0x7f0e01af

    invoke-virtual {v4, v5}, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v2, v3, v4, v6, v7}, Lcom/htc/app/HtcProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/htc/app/HtcProgressDialog;

    move-result-object v2

    #setter for: Lcom/android/phone/HtcCdmaPrlUpdateSetting;->mDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v1, v2}, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->access$902(Lcom/android/phone/HtcCdmaPrlUpdateSetting;Lcom/htc/app/HtcProgressDialog;)Lcom/htc/app/HtcProgressDialog;

    .line 256
    iget-object v1, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting$4;->this$0:Lcom/android/phone/HtcCdmaPrlUpdateSetting;

    #getter for: Lcom/android/phone/HtcCdmaPrlUpdateSetting;->mDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v1}, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->access$900(Lcom/android/phone/HtcCdmaPrlUpdateSetting;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    goto :goto_0

    .line 263
    :pswitch_3
    iget-object v1, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting$4;->this$0:Lcom/android/phone/HtcCdmaPrlUpdateSetting;

    #calls: Lcom/android/phone/HtcCdmaPrlUpdateSetting;->setIsUpdating(Z)V
    invoke-static {v1, v7}, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->access$800(Lcom/android/phone/HtcCdmaPrlUpdateSetting;Z)V

    .line 265
    iget-object v1, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting$4;->this$0:Lcom/android/phone/HtcCdmaPrlUpdateSetting;

    #getter for: Lcom/android/phone/HtcCdmaPrlUpdateSetting;->mDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v1}, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->access$900(Lcom/android/phone/HtcCdmaPrlUpdateSetting;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 266
    iget-object v1, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting$4;->this$0:Lcom/android/phone/HtcCdmaPrlUpdateSetting;

    #getter for: Lcom/android/phone/HtcCdmaPrlUpdateSetting;->mDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v1}, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->access$900(Lcom/android/phone/HtcCdmaPrlUpdateSetting;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 267
    iget-object v1, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting$4;->this$0:Lcom/android/phone/HtcCdmaPrlUpdateSetting;

    const/4 v2, 0x0

    #setter for: Lcom/android/phone/HtcCdmaPrlUpdateSetting;->mDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v1, v2}, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->access$902(Lcom/android/phone/HtcCdmaPrlUpdateSetting;Lcom/htc/app/HtcProgressDialog;)Lcom/htc/app/HtcProgressDialog;

    .line 270
    :cond_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 272
    .local v0, errorCode:I
    iget-object v1, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting$4;->this$0:Lcom/android/phone/HtcCdmaPrlUpdateSetting;

    #getter for: Lcom/android/phone/HtcCdmaPrlUpdateSetting;->ERROR_NONE:I
    invoke-static {v1}, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->access$000(Lcom/android/phone/HtcCdmaPrlUpdateSetting;)I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 273
    iget-object v1, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting$4;->this$0:Lcom/android/phone/HtcCdmaPrlUpdateSetting;

    const/16 v2, 0x3ea

    #calls: Lcom/android/phone/HtcCdmaPrlUpdateSetting;->showWarningMessage(I)V
    invoke-static {v1, v2}, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->access$1100(Lcom/android/phone/HtcCdmaPrlUpdateSetting;I)V

    .line 278
    :goto_1
    const/16 v1, 0x3ec

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/phone/HtcCdmaPrlUpdateSetting$4;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 275
    :cond_3
    iget-object v1, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting$4;->this$0:Lcom/android/phone/HtcCdmaPrlUpdateSetting;

    const/16 v2, 0x3eb

    #calls: Lcom/android/phone/HtcCdmaPrlUpdateSetting;->showWarningMessage(I)V
    invoke-static {v1, v2}, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->access$1100(Lcom/android/phone/HtcCdmaPrlUpdateSetting;I)V

    goto :goto_1

    .line 223
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
