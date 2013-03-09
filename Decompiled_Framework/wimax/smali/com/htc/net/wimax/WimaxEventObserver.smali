.class public interface abstract Lcom/htc/net/wimax/WimaxEventObserver;
.super Ljava/lang/Object;
.source "WimaxEventObserver.java"


# virtual methods
.method public abstract AuthNaiRejected()V
.end method

.method public abstract AuthenticationNaiRejectedNotification()V
.end method

.method public abstract AuthenticationState(Z)V
.end method

.method public abstract AuthenticationStateNotification(Z)V
.end method

.method public abstract BackoffStateChangeNotification(Z)V
.end method

.method public abstract BaseMacAddrChangeNotification(J)V
.end method

.method public abstract BsFoundNotification(Lcom/htc/net/wimax/Wimax4GBaseStationInfo;)V
.end method

.method public abstract FrequencyChangeNotification(J)V
.end method

.method public abstract HandoverFailedNotification()V
.end method

.method public abstract HandoverStartedNotification(Lcom/htc/net/wimax/Wimax4GBaseStationInfo;)V
.end method

.method public abstract HandoverSucceededNotification(Z)V
.end method

.method public abstract LinkRetentionStateChange(Lcom/sqn/dcc/LinkRetentionStateChange;)V
.end method

.method public abstract Log(ILjava/lang/String;)V
.end method

.method public abstract MeetEntryCriteriaNotification(Lcom/htc/net/wimax/Wimax4GBaseStationInfo;)V
.end method

.method public abstract MeetExitCriteriaNotification()V
.end method

.method public abstract NdsAutodetectEnterCriteriaExtBandNotification(Lcom/sqn/dcc/ScanResultExtBand;)V
.end method

.method public abstract NdsAutodetectExitCriteriaNotification()V
.end method

.method public abstract NdsBackoffStarted(Z)V
.end method

.method public abstract NdsBsFoundExtBandNotification(Lcom/sqn/dcc/ScanResultExtBand;)V
.end method

.method public abstract NdsRoundCompleteNotification()V
.end method

.method public abstract NdsStateNotification(I)V
.end method

.method public abstract SsStateNotification(Lcom/sqn/dcc/swmSsState;)V
.end method

.method public abstract WimaxFatalErrorNotification(Ljava/lang/String;)V
.end method

.method public abstract WimaxReadyNotification()V
.end method

.method public abstract WimaxReboot()V
.end method

.method public abstract WimaxRegisterNotification()V
.end method

.method public abstract WimaxStateChangeNotificaion(Lcom/htc/net/wimax/HTCWimax4GInfo$WimaxState;)V
.end method
