.class Lcom/android/phone/SkypeIncomingCallArc$6;
.super Landroid/content/BroadcastReceiver;
.source "SkypeIncomingCallArc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SkypeIncomingCallArc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SkypeIncomingCallArc;


# direct methods
.method constructor <init>(Lcom/android/phone/SkypeIncomingCallArc;)V
    .locals 0
    .parameter

    .prologue
    .line 683
    iput-object p1, p0, Lcom/android/phone/SkypeIncomingCallArc$6;->this$0:Lcom/android/phone/SkypeIncomingCallArc;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 686
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.PS_CALL_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 688
    const-string v2, "SkypeIncomingCallArc"

    const-string v3, ">>>>>>>> receive intent for PS_CALL_STATE_CHANGED......"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    const-string v2, "clientName"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 691
    const-string v2, "clientName"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 694
    :cond_0
    const-string v2, "state"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 696
    const-string v2, "state"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 697
    .local v0, mCallState:I
    const-string v2, "SkypeIncomingCallArc"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receive intent for PS_CALL_STATE_CHANGED......state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    if-nez v0, :cond_1

    .line 700
    const-string v2, "SkypeIncomingCallArc"

    const-string v3, "Caller hang up the call....."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->forceWakeUpScreen()V

    .line 702
    iget-object v2, p0, Lcom/android/phone/SkypeIncomingCallArc$6;->this$0:Lcom/android/phone/SkypeIncomingCallArc;

    #getter for: Lcom/android/phone/SkypeIncomingCallArc;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/SkypeIncomingCallArc;->access$400(Lcom/android/phone/SkypeIncomingCallArc;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    .line 703
    .local v1, state:Lcom/android/internal/telephony/Phone$State;
    sget-object v2, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/SkypeIncomingCallArc$6;->this$0:Lcom/android/phone/SkypeIncomingCallArc;

    #getter for: Lcom/android/phone/SkypeIncomingCallArc;->incallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v2}, Lcom/android/phone/SkypeIncomingCallArc;->access$500(Lcom/android/phone/SkypeIncomingCallArc;)Lcom/android/phone/InCallScreen;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 705
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/phone/PhoneApp;->showKeyguardWithAnimation(Z)V

    .line 708
    :goto_0
    iget-object v2, p0, Lcom/android/phone/SkypeIncomingCallArc$6;->this$0:Lcom/android/phone/SkypeIncomingCallArc;

    #getter for: Lcom/android/phone/SkypeIncomingCallArc;->mHtcLockScreenControl:Lcom/android/phone/widget/HtcLockScreenControl;
    invoke-static {v2}, Lcom/android/phone/SkypeIncomingCallArc;->access$600(Lcom/android/phone/SkypeIncomingCallArc;)Lcom/android/phone/widget/HtcLockScreenControl;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/phone/widget/HtcLockScreenControl;->setVisibility(I)V

    .line 709
    iget-object v2, p0, Lcom/android/phone/SkypeIncomingCallArc$6;->this$0:Lcom/android/phone/SkypeIncomingCallArc;

    invoke-virtual {v2}, Lcom/android/phone/SkypeIncomingCallArc;->release()V

    .line 726
    .end local v0           #mCallState:I
    .end local v1           #state:Lcom/android/internal/telephony/Phone$State;
    :cond_1
    :goto_1
    return-void

    .line 707
    .restart local v0       #mCallState:I
    .restart local v1       #state:Lcom/android/internal/telephony/Phone$State;
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/phone/PhoneApp;->showKeyguard(Z)V

    goto :goto_0

    .line 712
    .end local v0           #mCallState:I
    .end local v1           #state:Lcom/android/internal/telephony/Phone$State;
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.Reject_PS_Call"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 714
    iget-object v2, p0, Lcom/android/phone/SkypeIncomingCallArc$6;->this$0:Lcom/android/phone/SkypeIncomingCallArc;

    invoke-virtual {v2}, Lcom/android/phone/SkypeIncomingCallArc;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gsm.lockscreen.mode.status"

    const-string v4, "false"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 715
    const-string v2, "SkypeIncomingCallArc"

    const-string v3, ">>> DeclineCall from Broadcast, set lockscreen mode :false "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    iget-object v2, p0, Lcom/android/phone/SkypeIncomingCallArc$6;->this$0:Lcom/android/phone/SkypeIncomingCallArc;

    #calls: Lcom/android/phone/SkypeIncomingCallArc;->setResultDeclineCall()V
    invoke-static {v2}, Lcom/android/phone/SkypeIncomingCallArc;->access$700(Lcom/android/phone/SkypeIncomingCallArc;)V

    .line 717
    iget-object v2, p0, Lcom/android/phone/SkypeIncomingCallArc$6;->this$0:Lcom/android/phone/SkypeIncomingCallArc;

    invoke-virtual {v2}, Lcom/android/phone/SkypeIncomingCallArc;->release()V

    goto :goto_1

    .line 718
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.Handle_PS_Call"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 721
    const-string v2, "SkypeIncomingCallArc"

    const-string v3, ">>> Handle PS call from Broadcast, set lockscreen mode :false "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
