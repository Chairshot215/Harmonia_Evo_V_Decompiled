.class Lcom/htc/android/mail/mailservice/DirectPushService$HuxPollState;
.super Lcom/htc/android/mail/mailservice/DirectPushService$State;
.source "DirectPushService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/mailservice/DirectPushService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HuxPollState"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1821
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/android/mail/mailservice/DirectPushService$State;-><init>(Lcom/htc/android/mail/mailservice/DirectPushService$1;)V

    .line 1822
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService$State;->type:I

    .line 1823
    return-void
.end method


# virtual methods
.method public enterAction(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V
    .locals 5
    .parameter "fsm"

    .prologue
    .line 1931
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DirectPushService"

    const-string v1, ">> HuxPollState"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1932
    :cond_0
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getAccountId()J

    move-result-wide v1

    const-wide/32 v3, 0xdbba0

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->addScheduleSyncAlarm(Landroid/content/Context;JJ)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$300(Landroid/content/Context;JJ)V

    .line 1933
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getAccountId()J

    move-result-wide v1

    const/4 v3, 0x0

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setAdditionalSyncWhenErrorAlarmEnabled(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V
    invoke-static {v0, v1, v2, p1, v3}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$700(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V

    .line 1934
    return-void
.end method

.method public exitAction(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V
    .locals 3
    .parameter "fsm"

    .prologue
    .line 1936
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DirectPushService"

    const-string v1, "<< HuxPollState"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1937
    :cond_0
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getAccountId()J

    move-result-wide v1

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->cancelScheduleSyncAlarm(Landroid/content/Context;J)V
    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$1700(Landroid/content/Context;J)V

    .line 1938
    return-void
.end method

.method public onChangeToIdle(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V
    .locals 0
    .parameter "fsm"

    .prologue
    .line 1927
    return-void
.end method

.method public onConnected(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V
    .locals 5
    .parameter "fsm"

    .prologue
    const/4 v4, 0x1

    .line 1890
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/mailservice/DirectPushService$HuxPollState;->exitAction(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V

    .line 1892
    const/4 v0, 0x0

    .line 1893
    .local v0, state:Lcom/htc/android/mail/mailservice/DirectPushService$State;
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->isAirPlaneModeOn(Landroid/content/Context;)Z
    invoke-static {v1}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$1800(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1894
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/mail/MailCommon;->checkNetwork(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1895
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "DirectPushService"

    const-string v2, "network exists, start push mode"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1896
    :cond_0
    iget-object v1, p1, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->mStateFactory:Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;

    invoke-interface {v1}, Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;->getDpState()Lcom/htc/android/mail/mailservice/DirectPushService$State;

    move-result-object v0

    .line 1914
    :cond_1
    :goto_0
    invoke-virtual {v0, p1}, Lcom/htc/android/mail/mailservice/DirectPushService$State;->enterAction(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V

    .line 1915
    invoke-virtual {p1, v0}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->changeState(Lcom/htc/android/mail/mailservice/DirectPushService$State;)V

    .line 1916
    return-void

    .line 1898
    :cond_2
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "DirectPushService"

    const-string v2, "no network, set scheduled sync alarm"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1899
    :cond_3
    iget-object v1, p1, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->mStateFactory:Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;

    invoke-interface {v1}, Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;->getPollState()Lcom/htc/android/mail/mailservice/DirectPushService$State;

    move-result-object v0

    goto :goto_0

    .line 1902
    :cond_4
    iget-object v1, p1, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->mStateFactory:Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;

    invoke-interface {v1}, Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;->getIdleState()Lcom/htc/android/mail/mailservice/DirectPushService$State;

    move-result-object v0

    .line 1904
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getAccountId()J

    move-result-wide v2

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->isAdditionalSyncWhenErrorEnabled(Landroid/content/Context;J)Z
    invoke-static {v1, v2, v3}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$1900(Landroid/content/Context;J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1905
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/mail/MailCommon;->checkNetwork(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1906
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getAccountId()J

    move-result-wide v2

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setAdditionalSyncWhenErrorAlarmEnabled(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V
    invoke-static {v1, v2, v3, p1, v4}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$700(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V

    goto :goto_0

    .line 1907
    :cond_5
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->isAnyNetworkSettingOn(Landroid/content/Context;)Z
    invoke-static {v1}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$800(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1908
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getAccountId()J

    move-result-wide v2

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setAdditionalSyncWhenErrorAlarmEnabled(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V
    invoke-static {v1, v2, v3, p1, v4}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$700(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V

    goto :goto_0

    .line 1910
    :cond_6
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

    .line 1859
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/mailservice/DirectPushService$HuxPollState;->exitAction(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V

    .line 1861
    const/4 v0, 0x0

    .line 1862
    .local v0, state:Lcom/htc/android/mail/mailservice/DirectPushService$State;
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->isAirPlaneModeOn(Landroid/content/Context;)Z
    invoke-static {v1}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$1800(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1863
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/mail/MailCommon;->checkNetwork(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1864
    iget-object v1, p1, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->mStateFactory:Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;

    invoke-interface {v1}, Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;->getDpState()Lcom/htc/android/mail/mailservice/DirectPushService$State;

    move-result-object v0

    .line 1885
    :cond_0
    :goto_0
    invoke-virtual {v0, p1}, Lcom/htc/android/mail/mailservice/DirectPushService$State;->enterAction(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V

    .line 1886
    invoke-virtual {p1, v0}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->changeState(Lcom/htc/android/mail/mailservice/DirectPushService$State;)V

    .line 1887
    return-void

    .line 1866
    :cond_1
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->isAnyNetworkSettingOn(Landroid/content/Context;)Z
    invoke-static {v1}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$800(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1867
    iget-object v1, p1, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->mStateFactory:Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;

    invoke-interface {v1}, Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;->getPollState()Lcom/htc/android/mail/mailservice/DirectPushService$State;

    move-result-object v0

    goto :goto_0

    .line 1869
    :cond_2
    iget-object v1, p1, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->mStateFactory:Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;

    invoke-interface {v1}, Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;->getIdleState()Lcom/htc/android/mail/mailservice/DirectPushService$State;

    move-result-object v0

    goto :goto_0

    .line 1873
    :cond_3
    iget-object v1, p1, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->mStateFactory:Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;

    invoke-interface {v1}, Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;->getIdleState()Lcom/htc/android/mail/mailservice/DirectPushService$State;

    move-result-object v0

    .line 1875
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getAccountId()J

    move-result-wide v2

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->isAdditionalSyncWhenErrorEnabled(Landroid/content/Context;J)Z
    invoke-static {v1, v2, v3}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$1900(Landroid/content/Context;J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1876
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/mail/MailCommon;->checkNetwork(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1877
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getAccountId()J

    move-result-wide v2

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setAdditionalSyncWhenErrorAlarmEnabled(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V
    invoke-static {v1, v2, v3, p1, v4}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$700(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V

    goto :goto_0

    .line 1878
    :cond_4
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->isAnyNetworkSettingOn(Landroid/content/Context;)Z
    invoke-static {v1}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$800(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1879
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getAccountId()J

    move-result-wide v2

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setAdditionalSyncWhenErrorAlarmEnabled(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V
    invoke-static {v1, v2, v3, p1, v4}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$700(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V

    goto :goto_0

    .line 1881
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
    .line 1926
    return-void
.end method

.method public onStartDp(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V
    .locals 5
    .parameter "fsm"

    .prologue
    const/4 v4, 0x1

    .line 1826
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/mailservice/DirectPushService$HuxPollState;->exitAction(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V

    .line 1828
    const/4 v0, 0x0

    .line 1829
    .local v0, state:Lcom/htc/android/mail/mailservice/DirectPushService$State;
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->isAirPlaneModeOn(Landroid/content/Context;)Z
    invoke-static {v1}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$1800(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1830
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/mail/MailCommon;->checkNetwork(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1831
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "DirectPushService"

    const-string v2, "network exists, start push mode"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1832
    :cond_0
    iget-object v1, p1, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->mStateFactory:Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;

    invoke-interface {v1}, Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;->getDpState()Lcom/htc/android/mail/mailservice/DirectPushService$State;

    move-result-object v0

    .line 1854
    :cond_1
    :goto_0
    invoke-virtual {v0, p1}, Lcom/htc/android/mail/mailservice/DirectPushService$State;->enterAction(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V

    .line 1855
    invoke-virtual {p1, v0}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->changeState(Lcom/htc/android/mail/mailservice/DirectPushService$State;)V

    .line 1856
    return-void

    .line 1834
    :cond_2
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->isAnyNetworkSettingOn(Landroid/content/Context;)Z
    invoke-static {v1}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$800(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1835
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "DirectPushService"

    const-string v2, "no network, set scheduled sync alarm"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1836
    :cond_3
    iget-object v1, p1, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->mStateFactory:Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;

    invoke-interface {v1}, Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;->getPollState()Lcom/htc/android/mail/mailservice/DirectPushService$State;

    move-result-object v0

    goto :goto_0

    .line 1838
    :cond_4
    iget-object v1, p1, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->mStateFactory:Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;

    invoke-interface {v1}, Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;->getIdleState()Lcom/htc/android/mail/mailservice/DirectPushService$State;

    move-result-object v0

    goto :goto_0

    .line 1842
    :cond_5
    iget-object v1, p1, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->mStateFactory:Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;

    invoke-interface {v1}, Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;->getIdleState()Lcom/htc/android/mail/mailservice/DirectPushService$State;

    move-result-object v0

    .line 1844
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getAccountId()J

    move-result-wide v2

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->isAdditionalSyncWhenErrorEnabled(Landroid/content/Context;J)Z
    invoke-static {v1, v2, v3}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$1900(Landroid/content/Context;J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1845
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/mail/MailCommon;->checkNetwork(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1846
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getAccountId()J

    move-result-wide v2

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setAdditionalSyncWhenErrorAlarmEnabled(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V
    invoke-static {v1, v2, v3, p1, v4}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$700(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V

    goto :goto_0

    .line 1847
    :cond_6
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->isAnyNetworkSettingOn(Landroid/content/Context;)Z
    invoke-static {v1}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$800(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1848
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getAccountId()J

    move-result-wide v2

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setAdditionalSyncWhenErrorAlarmEnabled(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V
    invoke-static {v1, v2, v3, p1, v4}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$700(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V

    goto :goto_0

    .line 1850
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
    .locals 2
    .parameter "fsm"

    .prologue
    .line 1919
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/mailservice/DirectPushService$HuxPollState;->exitAction(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V

    .line 1921
    iget-object v1, p1, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->mStateFactory:Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;

    invoke-interface {v1}, Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;->getStopState()Lcom/htc/android/mail/mailservice/DirectPushService$State;

    move-result-object v0

    .line 1922
    .local v0, state:Lcom/htc/android/mail/mailservice/DirectPushService$State;
    invoke-virtual {v0, p1}, Lcom/htc/android/mail/mailservice/DirectPushService$State;->enterAction(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V

    .line 1923
    invoke-virtual {p1, v0}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->changeState(Lcom/htc/android/mail/mailservice/DirectPushService$State;)V

    .line 1924
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1941
    const-string v0, "HuxPollState"

    return-object v0
.end method
