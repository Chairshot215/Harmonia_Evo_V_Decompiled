.class Lcom/android/phone/InCallScreen$DialogClickListener;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DialogClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;


# direct methods
.method public constructor <init>(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 9991
    iput-object p1, p0, Lcom/android/phone/InCallScreen$DialogClickListener;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9993
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 9997
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 10030
    :goto_0
    iget-object v3, p0, Lcom/android/phone/InCallScreen$DialogClickListener;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCSPScallManageDialog:Landroid/app/Dialog;
    invoke-static {v3}, Lcom/android/phone/InCallScreen;->access$6200(Lcom/android/phone/InCallScreen;)Landroid/app/Dialog;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 10032
    iget-object v3, p0, Lcom/android/phone/InCallScreen$DialogClickListener;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCSPScallManageDialog:Landroid/app/Dialog;
    invoke-static {v3}, Lcom/android/phone/InCallScreen;->access$6200(Lcom/android/phone/InCallScreen;)Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 10035
    :cond_0
    iget-object v3, p0, Lcom/android/phone/InCallScreen$DialogClickListener;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v4, 0x0

    #setter for: Lcom/android/phone/InCallScreen;->mCSPScallManageDialog:Landroid/app/Dialog;
    invoke-static {v3, v4}, Lcom/android/phone/InCallScreen;->access$6202(Lcom/android/phone/InCallScreen;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 10036
    return-void

    .line 10001
    :pswitch_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_VoIP_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10003
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VoIP_RESUME_CALL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10004
    .local v2, voipIntent:Landroid/content/Intent;
    const-string v3, "ResumeType"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 10005
    iget-object v3, p0, Lcom/android/phone/InCallScreen$DialogClickListener;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/phone/InCallScreen;->access$900(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 10008
    .end local v2           #voipIntent:Landroid/content/Intent;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MERLIN_RESUME_CALL"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10009
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "ResumeType"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 10010
    iget-object v3, p0, Lcom/android/phone/InCallScreen$DialogClickListener;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/phone/InCallScreen;->access$900(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 10012
    iget-object v3, p0, Lcom/android/phone/InCallScreen$DialogClickListener;->this$0:Lcom/android/phone/InCallScreen;

    #setter for: Lcom/android/phone/InCallScreen;->mDismissCSPSCallDialog:Z
    invoke-static {v3, v4}, Lcom/android/phone/InCallScreen;->access$6102(Lcom/android/phone/InCallScreen;Z)Z

    goto :goto_0

    .line 10017
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_1
    iget-object v3, p0, Lcom/android/phone/InCallScreen$DialogClickListener;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InCallScreen;->finishImmediatelyIfNecessary()V

    .line 10018
    iget-object v3, p0, Lcom/android/phone/InCallScreen$DialogClickListener;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v3}, Lcom/android/phone/InCallScreen;->access$1600(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    .line 10019
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v1, v3, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 10020
    .local v1, notifier:Lcom/android/phone/CallNotifier;
    if-eqz v1, :cond_2

    .line 10021
    invoke-virtual {v1}, Lcom/android/phone/CallNotifier;->setupPSCallIdleState()V

    .line 10022
    :cond_2
    iget-object v3, p0, Lcom/android/phone/InCallScreen$DialogClickListener;->this$0:Lcom/android/phone/InCallScreen;

    #setter for: Lcom/android/phone/InCallScreen;->mDismissCSPSCallDialog:Z
    invoke-static {v3, v4}, Lcom/android/phone/InCallScreen;->access$6102(Lcom/android/phone/InCallScreen;Z)Z

    goto :goto_0

    .line 9997
    :pswitch_data_0
    .packed-switch 0x7f08007c
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
