.class public Lcom/android/internal/telephony/MMDataConnectionTracker;
.super Lcom/android/internal/telephony/DataConnectionTracker;
.source "MMDataConnectionTracker.java"


# static fields
.field public static final DATA_CONNECTION_POOL_SIZE:I = 0x8

.field private static final INTENT_RECONNECT_ALARM:Ljava/lang/String; = "com.android.internal.telephony.gprs-reconnect"

.field private static final LOG_TAG:Ljava/lang/String; = "DUMMY_MMDCT"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->printNotImplmentedMsg()V

    return-void
.end method

.method private printNotImplmentedMsg()V
    .locals 2

    const-string v0, "DUMMY_MMDCT"

    const-string v1, "FIX!! DUMMY MMDCT should not be called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public _getActiveApnString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public _isApnTypeActive(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected checkIfPreferredApnCanHandle(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public disableDnsCheck(Z)V
    .locals 0

    return-void
.end method

.method public disconnectAllConnections(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->printNotImplmentedMsg()V

    return-void
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public get3GPPAPNParams(ILandroid/os/Message;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->printNotImplmentedMsg()V

    return-void
.end method

.method protected getActionIntentDataStallAlarm()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getActionIntentReconnectAlarm()Ljava/lang/String;
    .locals 1

    const-string v0, "com.android.internal.telephony.gprs-reconnect"

    return-object v0
.end method

.method protected getActiveApnString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getActiveApnTypes()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAllDataConnections()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/DataConnection;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->printNotImplmentedMsg()V

    return-void
.end method

.method protected getDnsServers(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getEHRPDAPNParams(ILandroid/os/Message;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->printNotImplmentedMsg()V

    return-void
.end method

.method protected getGateway(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getInterfaceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getIpAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLTEAPNParams(ILandroid/os/Message;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->printNotImplmentedMsg()V

    return-void
.end method

.method public declared-synchronized getState(Ljava/lang/String;)Lcom/android/internal/telephony/DataConnectionTracker$State;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method protected gotoIdleAndNotifyDataConnection(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected ifAnyApnSettingSupportDUN()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected ifPreferredApnSupportDUN()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isApnTypeActive(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isApnTypeAvailable(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isApnTypeSupported(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isDataAllowed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDataConnectionAsDesired()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDataConnectivityPossible()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->printNotImplmentedMsg()V

    const/4 v0, 0x0

    return v0
.end method

.method protected isDataPossible(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDisconnected()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDnsCheckDisabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method logd(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method logi(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method logv(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method logw(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public notifyDataConnection(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onCleanUpAllConnections(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onCleanUpConnection(ZILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onCleanUpConnection(ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onDataSetupComplete(Landroid/os/AsyncResult;)V
    .locals 0

    return-void
.end method

.method protected onDisconnectDone(ILandroid/os/AsyncResult;)V
    .locals 0

    return-void
.end method

.method protected onDisconnectDone(Landroid/os/AsyncResult;)V
    .locals 0

    return-void
.end method

.method protected onRadioAvailable()V
    .locals 0

    return-void
.end method

.method protected onRadioOffOrNotAvailable()V
    .locals 0

    return-void
.end method

.method protected onResetDone(Landroid/os/AsyncResult;)V
    .locals 0

    return-void
.end method

.method protected onRoamingOff()V
    .locals 0

    return-void
.end method

.method protected onRoamingOn()V
    .locals 0

    return-void
.end method

.method protected onTrySetupData(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->printNotImplmentedMsg()V

    const/4 v0, 0x0

    return v0
.end method

.method protected onVoiceCallEnded()V
    .locals 0

    return-void
.end method

.method protected onVoiceCallStarted()V
    .locals 0

    return-void
.end method

.method public resetRadioForDisconnectingPdn()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->printNotImplmentedMsg()V

    const/4 v0, 0x0

    return v0
.end method

.method protected restartRadio()V
    .locals 0

    return-void
.end method

.method public set3GPPAPNParams(IILjava/lang/String;IIILandroid/os/Message;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->printNotImplmentedMsg()V

    return-void
.end method

.method public setActiveDataTrackerID(I)V
    .locals 0

    return-void
.end method

.method public declared-synchronized setDataConnectionAsDesired(ZLandroid/os/Message;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->printNotImplmentedMsg()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setEHRPDAPNParams(IILjava/lang/String;IIILandroid/os/Message;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->printNotImplmentedMsg()V

    return-void
.end method

.method public setLTEAPNParams(IILjava/lang/String;IIILandroid/os/Message;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/MMDataConnectionTracker;->printNotImplmentedMsg()V

    return-void
.end method

.method protected setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V
    .locals 0

    return-void
.end method

.method protected startNetStatPoll()V
    .locals 0

    return-void
.end method

.method protected stopNetStatPoll()V
    .locals 0

    return-void
.end method
