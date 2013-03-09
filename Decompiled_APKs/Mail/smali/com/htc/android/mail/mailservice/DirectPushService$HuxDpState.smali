.class Lcom/htc/android/mail/mailservice/DirectPushService$HuxDpState;
.super Lcom/htc/android/mail/mailservice/DirectPushService$State;
.source "DirectPushService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/mailservice/DirectPushService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HuxDpState"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1715
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/android/mail/mailservice/DirectPushService$State;-><init>(Lcom/htc/android/mail/mailservice/DirectPushService$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/mail/mailservice/DirectPushService$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1715
    invoke-direct {p0}, Lcom/htc/android/mail/mailservice/DirectPushService$HuxDpState;-><init>()V

    return-void
.end method


# virtual methods
.method public enterAction(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V
    .locals 6
    .parameter "fsm"

    .prologue
    .line 1797
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "DirectPushService"

    const-string v2, ">> HuxDpState"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1798
    :cond_0
    new-instance v0, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;

    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getAccountId()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;-><init>(Landroid/content/Context;J)V

    .line 1799
    .local v0, instance:Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushInstance;
    invoke-virtual {v0}, Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushInstance;->listen()V

    .line 1800
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/mailservice/DirectPushService$HuxDpState;->setInstance(Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushInstance;)V

    .line 1801
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getAccountId()J

    move-result-wide v2

    const-wide/32 v4, 0x1a8ce0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/htc/android/mail/mailservice/DirectPushService;->addRestartDpAlarm(Landroid/content/Context;JJ)V

    .line 1802
    return-void
.end method

.method public exitAction(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V
    .locals 4
    .parameter "fsm"

    .prologue
    .line 1805
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "DirectPushService"

    const-string v2, "<< HuxDpState"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1806
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/mail/mailservice/DirectPushService$HuxDpState;->getInstance()Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushInstance;

    move-result-object v0

    .line 1807
    .local v0, instance:Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushInstance;
    if-eqz v0, :cond_1

    .line 1808
    invoke-virtual {v0}, Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushInstance;->stopListening()V

    .line 1809
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/mailservice/DirectPushService$HuxDpState;->setInstance(Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushInstance;)V

    .line 1811
    :cond_1
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getAccountId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/htc/android/mail/mailservice/DirectPushService;->cancelRestartDpAlarm(Landroid/content/Context;J)V

    .line 1812
    return-void
.end method

.method public onChangeToIdle(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V
    .locals 0
    .parameter "fsm"

    .prologue
    .line 1793
    return-void
.end method

.method public onConnected(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V
    .locals 5
    .parameter "fsm"

    .prologue
    const/4 v4, 0x1

    .line 1755
    const/4 v0, 0x0

    .line 1756
    .local v0, state:Lcom/htc/android/mail/mailservice/DirectPushService$State;
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->isAirPlaneModeOn(Landroid/content/Context;)Z
    invoke-static {v1}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$1800(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1757
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/mail/MailCommon;->checkNetwork(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1758
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "DirectPushService"

    const-string v2, "network exists, already hux dp, do nothing"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1782
    :cond_0
    :goto_0
    return-void

    .line 1760
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/mailservice/DirectPushService$HuxDpState;->exitAction(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V

    .line 1761
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "DirectPushService"

    const-string v2, "no network, set scheduled sync alarm"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1762
    :cond_2
    iget-object v1, p1, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->mStateFactory:Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;

    invoke-interface {v1}, Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;->getPollState()Lcom/htc/android/mail/mailservice/DirectPushService$State;

    move-result-object v0

    .line 1763
    invoke-virtual {v0, p1}, Lcom/htc/android/mail/mailservice/DirectPushService$State;->enterAction(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V

    .line 1764
    invoke-virtual {p1, v0}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->changeState(Lcom/htc/android/mail/mailservice/DirectPushService$State;)V

    goto :goto_0

    .line 1767
    :cond_3
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/mailservice/DirectPushService$HuxDpState;->exitAction(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V

    .line 1768
    iget-object v1, p1, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->mStateFactory:Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;

    invoke-interface {v1}, Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;->getIdleState()Lcom/htc/android/mail/mailservice/DirectPushService$State;

    move-result-object v0

    .line 1769
    invoke-virtual {v0, p1}, Lcom/htc/android/mail/mailservice/DirectPushService$State;->enterAction(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V

    .line 1770
    invoke-virtual {p1, v0}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->changeState(Lcom/htc/android/mail/mailservice/DirectPushService$State;)V

    .line 1772
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getAccountId()J

    move-result-wide v2

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->isAdditionalSyncWhenErrorEnabled(Landroid/content/Context;J)Z
    invoke-static {v1, v2, v3}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$1900(Landroid/content/Context;J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1773
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/mail/MailCommon;->checkNetwork(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1774
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getAccountId()J

    move-result-wide v2

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setAdditionalSyncWhenErrorAlarmEnabled(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V
    invoke-static {v1, v2, v3, p1, v4}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$700(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V

    goto :goto_0

    .line 1775
    :cond_4
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->isAnyNetworkSettingOn(Landroid/content/Context;)Z
    invoke-static {v1}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$800(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1776
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getAccountId()J

    move-result-wide v2

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setAdditionalSyncWhenErrorAlarmEnabled(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V
    invoke-static {v1, v2, v3, p1, v4}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$700(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V

    goto :goto_0

    .line 1778
    :cond_5
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getAccountId()J

    move-result-wide v2

    const/4 v4, 0x0

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setAdditionalSyncWhenErrorAlarmEnabled(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V
    invoke-static {v1, v2, v3, p1, v4}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$700(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V

    goto :goto_0
.end method

.method public onDisconnected(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V
    .locals 5
    .parameter "fsm"

    .prologue
    const/4 v4, 0x1

    .line 1722
    const/4 v0, 0x0

    .line 1723
    .local v0, state:Lcom/htc/android/mail/mailservice/DirectPushService$State;
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->isAirPlaneModeOn(Landroid/content/Context;)Z
    invoke-static {v1}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$1800(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1724
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/mail/MailCommon;->checkNetwork(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1725
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "DirectPushService"

    const-string v2, "network exists, already hux dp, do nothing"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1752
    :cond_0
    :goto_0
    return-void

    .line 1727
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/mailservice/DirectPushService$HuxDpState;->exitAction(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V

    .line 1728
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->isAnyNetworkSettingOn(Landroid/content/Context;)Z
    invoke-static {v1}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$800(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1729
    iget-object v1, p1, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->mStateFactory:Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;

    invoke-interface {v1}, Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;->getPollState()Lcom/htc/android/mail/mailservice/DirectPushService$State;

    move-result-object v0

    .line 1733
    :goto_1
    invoke-virtual {v0, p1}, Lcom/htc/android/mail/mailservice/DirectPushService$State;->enterAction(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V

    .line 1734
    invoke-virtual {p1, v0}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->changeState(Lcom/htc/android/mail/mailservice/DirectPushService$State;)V

    goto :goto_0

    .line 1731
    :cond_2
    iget-object v1, p1, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->mStateFactory:Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;

    invoke-interface {v1}, Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;->getIdleState()Lcom/htc/android/mail/mailservice/DirectPushService$State;

    move-result-object v0

    goto :goto_1

    .line 1737
    :cond_3
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/mailservice/DirectPushService$HuxDpState;->exitAction(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V

    .line 1738
    iget-object v1, p1, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->mStateFactory:Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;

    invoke-interface {v1}, Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;->getIdleState()Lcom/htc/android/mail/mailservice/DirectPushService$State;

    move-result-object v0

    .line 1739
    invoke-virtual {v0, p1}, Lcom/htc/android/mail/mailservice/DirectPushService$State;->enterAction(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V

    .line 1740
    invoke-virtual {p1, v0}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->changeState(Lcom/htc/android/mail/mailservice/DirectPushService$State;)V

    .line 1742
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getAccountId()J

    move-result-wide v2

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->isAdditionalSyncWhenErrorEnabled(Landroid/content/Context;J)Z
    invoke-static {v1, v2, v3}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$1900(Landroid/content/Context;J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1743
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/mail/MailCommon;->checkNetwork(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1744
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getAccountId()J

    move-result-wide v2

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setAdditionalSyncWhenErrorAlarmEnabled(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V
    invoke-static {v1, v2, v3, p1, v4}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$700(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V

    goto :goto_0

    .line 1745
    :cond_4
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->isAnyNetworkSettingOn(Landroid/content/Context;)Z
    invoke-static {v1}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$800(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1746
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getAccountId()J

    move-result-wide v2

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setAdditionalSyncWhenErrorAlarmEnabled(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V
    invoke-static {v1, v2, v3, p1, v4}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$700(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V

    goto :goto_0

    .line 1748
    :cond_5
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getAccountId()J

    move-result-wide v2

    const/4 v4, 0x0

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setAdditionalSyncWhenErrorAlarmEnabled(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V
    invoke-static {v1, v2, v3, p1, v4}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$700(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V

    goto :goto_0
.end method

.method public onReceiveHuxSms(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V
    .locals 0
    .parameter "fsm"

    .prologue
    .line 1792
    return-void
.end method

.method public onStartDp(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V
    .locals 4
    .parameter "fsm"

    .prologue
    .line 1717
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DirectPushService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "already Start Dp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getAccountId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1718
    :cond_0
    return-void
.end method

.method public onStopDp(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V
    .locals 2
    .parameter "fsm"

    .prologue
    .line 1785
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/mailservice/DirectPushService$HuxDpState;->exitAction(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V

    .line 1787
    iget-object v1, p1, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->mStateFactory:Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;

    invoke-interface {v1}, Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;->getStopState()Lcom/htc/android/mail/mailservice/DirectPushService$State;

    move-result-object v0

    .line 1788
    .local v0, state:Lcom/htc/android/mail/mailservice/DirectPushService$State;
    invoke-virtual {v0, p1}, Lcom/htc/android/mail/mailservice/DirectPushService$State;->enterAction(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V

    .line 1789
    invoke-virtual {p1, v0}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->changeState(Lcom/htc/android/mail/mailservice/DirectPushService$State;)V

    .line 1790
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1815
    const-string v0, "HuxDpState"

    return-object v0
.end method
