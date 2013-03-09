.class public Lcom/android/phone/util/Auxiliary;
.super Ljava/lang/Object;
.source "Auxiliary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/util/Auxiliary$Views;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static notify3DLockscreen()V
    .locals 2

    .prologue
    .line 47
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 48
    .local v0, ringingCall:Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    .line 49
    invoke-static {v0}, Lcom/android/phone/util/Auxiliary;->notify3DLockscreen(Lcom/android/internal/telephony/Call;)V

    .line 51
    :cond_0
    return-void
.end method

.method public static notify3DLockscreen(Lcom/android/internal/telephony/Call;)V
    .locals 8
    .parameter "call"

    .prologue
    .line 59
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 60
    .local v0, app:Lcom/android/phone/PhoneApp;
    sget-boolean v5, Lcom/android/phone/util/BuildUtils;->INCOMING_CALL_3D_LOCKSCREEN:Z

    if-eqz v5, :cond_1

    sget-object v5, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    iget-object v6, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    if-ne v5, v6, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 63
    const/4 v2, 0x0

    .line 64
    .local v2, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    .line 65
    .local v4, phoneType:I
    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 66
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    .line 74
    :goto_0
    const/4 v1, 0x0

    .line 76
    .local v1, ci:Lcom/android/internal/telephony/CallerInfo;
    if-eqz v2, :cond_0

    .line 77
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v3

    .line 78
    .local v3, o:Ljava/lang/Object;
    instance-of v5, v3, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v5, :cond_5

    move-object v1, v3

    .line 79
    check-cast v1, Lcom/android/internal/telephony/CallerInfo;

    .line 84
    .end local v3           #o:Ljava/lang/Object;
    :cond_0
    :goto_1
    iget-object v5, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    if-eqz v5, :cond_1

    if-eqz v1, :cond_1

    .line 86
    iget-object v5, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    iget-object v6, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v5, v6, v1}, Lcom/android/phone/CallNotifier;->broadcastRingingcall(Ljava/lang/String;Lcom/android/internal/telephony/CallerInfo;)V

    .line 90
    .end local v1           #ci:Lcom/android/internal/telephony/CallerInfo;
    .end local v2           #conn:Lcom/android/internal/telephony/Connection;
    .end local v4           #phoneType:I
    :cond_1
    return-void

    .line 67
    .restart local v2       #conn:Lcom/android/internal/telephony/Connection;
    .restart local v4       #phoneType:I
    :cond_2
    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    .line 69
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    goto :goto_0

    .line 71
    :cond_4
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected phone type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 80
    .restart local v1       #ci:Lcom/android/internal/telephony/CallerInfo;
    .restart local v3       #o:Ljava/lang/Object;
    :cond_5
    instance-of v5, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v5, :cond_0

    .line 81
    check-cast v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v3           #o:Ljava/lang/Object;
    iget-object v1, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto :goto_1
.end method
