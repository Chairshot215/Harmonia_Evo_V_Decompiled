.class Lcom/htc/android/mail/mailservice/DirectPushService$HuxStopState;
.super Lcom/htc/android/mail/mailservice/DirectPushService$State;
.source "DirectPushService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/mailservice/DirectPushService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HuxStopState"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1654
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/android/mail/mailservice/DirectPushService$State;-><init>(Lcom/htc/android/mail/mailservice/DirectPushService$1;)V

    .line 1655
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService$State;->type:I

    .line 1656
    return-void
.end method


# virtual methods
.method public enterAction(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V
    .locals 4
    .parameter "fsm"

    .prologue
    .line 1703
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DirectPushService"

    const-string v1, ">> HuxStopState"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1704
    :cond_0
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getAccountId()J

    move-result-wide v1

    const/4 v3, 0x0

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setAdditionalSyncWhenErrorAlarmEnabled(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V
    invoke-static {v0, v1, v2, p1, v3}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$700(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V

    .line 1705
    return-void
.end method

.method public exitAction(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V
    .locals 2
    .parameter "fsm"

    .prologue
    .line 1707
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DirectPushService"

    const-string v1, "<< HuxStopState"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1708
    :cond_0
    return-void
.end method

.method public onChangeToIdle(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V
    .locals 0
    .parameter "fsm"

    .prologue
    .line 1700
    return-void
.end method

.method public onConnected(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V
    .locals 0
    .parameter "fsm"

    .prologue
    .line 1693
    return-void
.end method

.method public onDisconnected(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V
    .locals 0
    .parameter "fsm"

    .prologue
    .line 1691
    return-void
.end method

.method public onReceiveHuxSms(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V
    .locals 0
    .parameter "fsm"

    .prologue
    .line 1699
    return-void
.end method

.method public onStartDp(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V
    .locals 5
    .parameter "fsm"

    .prologue
    const/4 v4, 0x1

    .line 1659
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/mailservice/DirectPushService$HuxStopState;->exitAction(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V

    .line 1661
    const/4 v0, 0x0

    .line 1662
    .local v0, state:Lcom/htc/android/mail/mailservice/DirectPushService$State;
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->isAirPlaneModeOn(Landroid/content/Context;)Z
    invoke-static {v1}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$1800(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1663
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/mail/MailCommon;->checkNetwork(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1664
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "DirectPushService"

    const-string v2, "network exists, start push mode"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1665
    :cond_0
    iget-object v1, p1, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->mStateFactory:Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;

    invoke-interface {v1}, Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;->getDpState()Lcom/htc/android/mail/mailservice/DirectPushService$State;

    move-result-object v0

    .line 1687
    :cond_1
    :goto_0
    invoke-virtual {v0, p1}, Lcom/htc/android/mail/mailservice/DirectPushService$State;->enterAction(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V

    .line 1688
    invoke-virtual {p1, v0}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->changeState(Lcom/htc/android/mail/mailservice/DirectPushService$State;)V

    .line 1689
    return-void

    .line 1667
    :cond_2
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->isAnyNetworkSettingOn(Landroid/content/Context;)Z
    invoke-static {v1}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$800(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1668
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "DirectPushService"

    const-string v2, "no network, set scheduled sync alarm"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1669
    :cond_3
    iget-object v1, p1, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->mStateFactory:Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;

    invoke-interface {v1}, Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;->getPollState()Lcom/htc/android/mail/mailservice/DirectPushService$State;

    move-result-object v0

    goto :goto_0

    .line 1671
    :cond_4
    iget-object v1, p1, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->mStateFactory:Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;

    invoke-interface {v1}, Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;->getIdleState()Lcom/htc/android/mail/mailservice/DirectPushService$State;

    move-result-object v0

    goto :goto_0

    .line 1675
    :cond_5
    iget-object v1, p1, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->mStateFactory:Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;

    invoke-interface {v1}, Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;->getIdleState()Lcom/htc/android/mail/mailservice/DirectPushService$State;

    move-result-object v0

    .line 1677
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getAccountId()J

    move-result-wide v2

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->isAdditionalSyncWhenErrorEnabled(Landroid/content/Context;J)Z
    invoke-static {v1, v2, v3}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$1900(Landroid/content/Context;J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1678
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/mail/MailCommon;->checkNetwork(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1679
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getAccountId()J

    move-result-wide v2

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setAdditionalSyncWhenErrorAlarmEnabled(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V
    invoke-static {v1, v2, v3, p1, v4}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$700(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V

    goto :goto_0

    .line 1680
    :cond_6
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->isAnyNetworkSettingOn(Landroid/content/Context;)Z
    invoke-static {v1}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$800(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1681
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getAccountId()J

    move-result-wide v2

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setAdditionalSyncWhenErrorAlarmEnabled(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V
    invoke-static {v1, v2, v3, p1, v4}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$700(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V

    goto :goto_0

    .line 1683
    :cond_7
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getAccountId()J

    move-result-wide v2

    const/4 v4, 0x0

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setAdditionalSyncWhenErrorAlarmEnabled(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V
    invoke-static {v1, v2, v3, p1, v4}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$700(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V

    goto :goto_0
.end method

.method public onStopDp(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V
    .locals 4
    .parameter "fsm"

    .prologue
    .line 1696
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DirectPushService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "already Stop Dp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getAccountId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1697
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1711
    const-string v0, "HuxStopState"

    return-object v0
.end method
