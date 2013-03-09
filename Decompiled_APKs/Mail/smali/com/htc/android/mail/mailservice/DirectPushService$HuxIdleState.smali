.class Lcom/htc/android/mail/mailservice/DirectPushService$HuxIdleState;
.super Lcom/htc/android/mail/mailservice/DirectPushService$State;
.source "DirectPushService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/mailservice/DirectPushService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HuxIdleState"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1945
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/android/mail/mailservice/DirectPushService$State;-><init>(Lcom/htc/android/mail/mailservice/DirectPushService$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/mail/mailservice/DirectPushService$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1945
    invoke-direct {p0}, Lcom/htc/android/mail/mailservice/DirectPushService$HuxIdleState;-><init>()V

    return-void
.end method


# virtual methods
.method public enterAction(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V
    .locals 2
    .parameter "fsm"

    .prologue
    .line 2082
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DirectPushService"

    const-string v1, ">> HuxIdleState"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2083
    :cond_0
    return-void
.end method

.method public exitAction(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V
    .locals 2
    .parameter "fsm"

    .prologue
    .line 2086
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DirectPushService"

    const-string v1, "<< HuxIdleState"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2087
    :cond_0
    return-void
.end method

.method public onChangeToIdle(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V
    .locals 0
    .parameter "fsm"

    .prologue
    .line 2079
    return-void
.end method

.method public onConnected(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V
    .locals 5
    .parameter "fsm"

    .prologue
    const/4 v4, 0x1

    .line 2014
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "DirectPushService"

    const-string v2, ">> hux onConnected"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2015
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/mailservice/DirectPushService$HuxIdleState;->exitAction(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V

    .line 2017
    const/4 v0, 0x0

    .line 2018
    .local v0, state:Lcom/htc/android/mail/mailservice/DirectPushService$State;
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->isAirPlaneModeOn(Landroid/content/Context;)Z
    invoke-static {v1}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$1800(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2019
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/mail/MailCommon;->checkNetwork(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2020
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "DirectPushService"

    const-string v2, "network exists, start push mode"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2021
    :cond_1
    iget-object v1, p1, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->mStateFactory:Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;

    invoke-interface {v1}, Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;->getDpState()Lcom/htc/android/mail/mailservice/DirectPushService$State;

    move-result-object v0

    .line 2039
    :cond_2
    :goto_0
    invoke-virtual {v0, p1}, Lcom/htc/android/mail/mailservice/DirectPushService$State;->enterAction(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V

    .line 2040
    invoke-virtual {p1, v0}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->changeState(Lcom/htc/android/mail/mailservice/DirectPushService$State;)V

    .line 2041
    return-void

    .line 2023
    :cond_3
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "DirectPushService"

    const-string v2, "no network, set scheduled sync alarm"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2024
    :cond_4
    iget-object v1, p1, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->mStateFactory:Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;

    invoke-interface {v1}, Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;->getPollState()Lcom/htc/android/mail/mailservice/DirectPushService$State;

    move-result-object v0

    goto :goto_0

    .line 2027
    :cond_5
    iget-object v1, p1, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->mStateFactory:Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;

    invoke-interface {v1}, Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;->getIdleState()Lcom/htc/android/mail/mailservice/DirectPushService$State;

    move-result-object v0

    .line 2029
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getAccountId()J

    move-result-wide v2

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->isAdditionalSyncWhenErrorEnabled(Landroid/content/Context;J)Z
    invoke-static {v1, v2, v3}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$1900(Landroid/content/Context;J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2030
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/mail/MailCommon;->checkNetwork(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2031
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getAccountId()J

    move-result-wide v2

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setAdditionalSyncWhenErrorAlarmEnabled(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V
    invoke-static {v1, v2, v3, p1, v4}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$700(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V

    goto :goto_0

    .line 2032
    :cond_6
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->isAnyNetworkSettingOn(Landroid/content/Context;)Z
    invoke-static {v1}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$800(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2033
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getAccountId()J

    move-result-wide v2

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setAdditionalSyncWhenErrorAlarmEnabled(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V
    invoke-static {v1, v2, v3, p1, v4}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$700(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V

    goto :goto_0

    .line 2035
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

.method public onDisconnected(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V
    .locals 5
    .parameter "fsm"

    .prologue
    const/4 v4, 0x1

    .line 1981
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "DirectPushService"

    const-string v2, ">> hux onDisconnected"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1982
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/mailservice/DirectPushService$HuxIdleState;->exitAction(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V

    .line 1984
    const/4 v0, 0x0

    .line 1985
    .local v0, state:Lcom/htc/android/mail/mailservice/DirectPushService$State;
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->isAirPlaneModeOn(Landroid/content/Context;)Z
    invoke-static {v1}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$1800(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1986
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/mail/MailCommon;->checkNetwork(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1987
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "DirectPushService"

    const-string v2, "network exists, start push mode"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1988
    :cond_1
    iget-object v1, p1, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->mStateFactory:Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;

    invoke-interface {v1}, Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;->getDpState()Lcom/htc/android/mail/mailservice/DirectPushService$State;

    move-result-object v0

    .line 2009
    :cond_2
    :goto_0
    invoke-virtual {v0, p1}, Lcom/htc/android/mail/mailservice/DirectPushService$State;->enterAction(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V

    .line 2010
    invoke-virtual {p1, v0}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->changeState(Lcom/htc/android/mail/mailservice/DirectPushService$State;)V

    .line 2011
    return-void

    .line 1990
    :cond_3
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->isAnyNetworkSettingOn(Landroid/content/Context;)Z
    invoke-static {v1}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$800(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1991
    iget-object v1, p1, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->mStateFactory:Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;

    invoke-interface {v1}, Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;->getPollState()Lcom/htc/android/mail/mailservice/DirectPushService$State;

    move-result-object v0

    goto :goto_0

    .line 1993
    :cond_4
    iget-object v1, p1, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->mStateFactory:Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;

    invoke-interface {v1}, Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;->getIdleState()Lcom/htc/android/mail/mailservice/DirectPushService$State;

    move-result-object v0

    goto :goto_0

    .line 1997
    :cond_5
    iget-object v1, p1, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->mStateFactory:Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;

    invoke-interface {v1}, Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;->getIdleState()Lcom/htc/android/mail/mailservice/DirectPushService$State;

    move-result-object v0

    .line 1999
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getAccountId()J

    move-result-wide v2

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->isAdditionalSyncWhenErrorEnabled(Landroid/content/Context;J)Z
    invoke-static {v1, v2, v3}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$1900(Landroid/content/Context;J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2000
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/mail/MailCommon;->checkNetwork(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2001
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getAccountId()J

    move-result-wide v2

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setAdditionalSyncWhenErrorAlarmEnabled(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V
    invoke-static {v1, v2, v3, p1, v4}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$700(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V

    goto :goto_0

    .line 2002
    :cond_6
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->isAnyNetworkSettingOn(Landroid/content/Context;)Z
    invoke-static {v1}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$800(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2003
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getAccountId()J

    move-result-wide v2

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setAdditionalSyncWhenErrorAlarmEnabled(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V
    invoke-static {v1, v2, v3, p1, v4}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$700(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V

    goto :goto_0

    .line 2005
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

.method public onReceiveHuxSms(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V
    .locals 5
    .parameter "fsm"

    .prologue
    const/4 v4, 0x1

    .line 2053
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "DirectPushService"

    const-string v2, ">> hux onReceiveSMS"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2054
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/mailservice/DirectPushService$HuxIdleState;->exitAction(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V

    .line 2056
    const/4 v0, 0x0

    .line 2057
    .local v0, state:Lcom/htc/android/mail/mailservice/DirectPushService$State;
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/mail/MailCommon;->checkNetwork(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2058
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "DirectPushService"

    const-string v2, "network exists, start short push mode"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2059
    :cond_1
    iget-object v1, p1, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->mStateFactory:Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;

    invoke-interface {v1}, Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;->getShortDpState()Lcom/htc/android/mail/mailservice/DirectPushService$State;

    move-result-object v0

    .line 2075
    :cond_2
    :goto_0
    invoke-virtual {v0, p1}, Lcom/htc/android/mail/mailservice/DirectPushService$State;->enterAction(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V

    .line 2076
    invoke-virtual {p1, v0}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->changeState(Lcom/htc/android/mail/mailservice/DirectPushService$State;)V

    .line 2077
    return-void

    .line 2061
    :cond_3
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "DirectPushService"

    const-string v2, "no network, set Idle state"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2062
    :cond_4
    iget-object v1, p1, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->mStateFactory:Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;

    invoke-interface {v1}, Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;->getIdleState()Lcom/htc/android/mail/mailservice/DirectPushService$State;

    move-result-object v0

    .line 2064
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getAccountId()J

    move-result-wide v2

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->isAdditionalSyncWhenErrorEnabled(Landroid/content/Context;J)Z
    invoke-static {v1, v2, v3}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$1900(Landroid/content/Context;J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2065
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/mail/MailCommon;->checkNetwork(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2066
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getAccountId()J

    move-result-wide v2

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setAdditionalSyncWhenErrorAlarmEnabled(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V
    invoke-static {v1, v2, v3, p1, v4}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$700(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V

    goto :goto_0

    .line 2067
    :cond_5
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->isAnyNetworkSettingOn(Landroid/content/Context;)Z
    invoke-static {v1}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$800(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2068
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getAccountId()J

    move-result-wide v2

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setAdditionalSyncWhenErrorAlarmEnabled(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V
    invoke-static {v1, v2, v3, p1, v4}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$700(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V

    goto :goto_0

    .line 2070
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

.method public onStartDp(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V
    .locals 5
    .parameter "fsm"

    .prologue
    const/4 v4, 0x1

    .line 1947
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "DirectPushService"

    const-string v2, ">> hux onStartDp"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1948
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/mailservice/DirectPushService$HuxIdleState;->exitAction(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V

    .line 1950
    const/4 v0, 0x0

    .line 1951
    .local v0, state:Lcom/htc/android/mail/mailservice/DirectPushService$State;
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->isAirPlaneModeOn(Landroid/content/Context;)Z
    invoke-static {v1}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$1800(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1952
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/mail/MailCommon;->checkNetwork(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1953
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "DirectPushService"

    const-string v2, "network exists, start push mode"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1954
    :cond_1
    iget-object v1, p1, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->mStateFactory:Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;

    invoke-interface {v1}, Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;->getDpState()Lcom/htc/android/mail/mailservice/DirectPushService$State;

    move-result-object v0

    .line 1976
    :cond_2
    :goto_0
    invoke-virtual {v0, p1}, Lcom/htc/android/mail/mailservice/DirectPushService$State;->enterAction(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V

    .line 1977
    invoke-virtual {p1, v0}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->changeState(Lcom/htc/android/mail/mailservice/DirectPushService$State;)V

    .line 1978
    return-void

    .line 1956
    :cond_3
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->isAnyNetworkSettingOn(Landroid/content/Context;)Z
    invoke-static {v1}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$800(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1957
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "DirectPushService"

    const-string v2, "no network, set scheduled sync alarm"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1958
    :cond_4
    iget-object v1, p1, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->mStateFactory:Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;

    invoke-interface {v1}, Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;->getPollState()Lcom/htc/android/mail/mailservice/DirectPushService$State;

    move-result-object v0

    goto :goto_0

    .line 1960
    :cond_5
    iget-object v1, p1, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->mStateFactory:Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;

    invoke-interface {v1}, Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;->getIdleState()Lcom/htc/android/mail/mailservice/DirectPushService$State;

    move-result-object v0

    goto :goto_0

    .line 1964
    :cond_6
    iget-object v1, p1, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->mStateFactory:Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;

    invoke-interface {v1}, Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;->getIdleState()Lcom/htc/android/mail/mailservice/DirectPushService$State;

    move-result-object v0

    .line 1966
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getAccountId()J

    move-result-wide v2

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->isAdditionalSyncWhenErrorEnabled(Landroid/content/Context;J)Z
    invoke-static {v1, v2, v3}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$1900(Landroid/content/Context;J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1967
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/mail/MailCommon;->checkNetwork(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1968
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getAccountId()J

    move-result-wide v2

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setAdditionalSyncWhenErrorAlarmEnabled(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V
    invoke-static {v1, v2, v3, p1, v4}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$700(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V

    goto :goto_0

    .line 1969
    :cond_7
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->isAnyNetworkSettingOn(Landroid/content/Context;)Z
    invoke-static {v1}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$800(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1970
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getAccountId()J

    move-result-wide v2

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setAdditionalSyncWhenErrorAlarmEnabled(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V
    invoke-static {v1, v2, v3, p1, v4}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$700(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V

    goto :goto_0

    .line 1972
    :cond_8
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
    .locals 3
    .parameter "fsm"

    .prologue
    .line 2044
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "DirectPushService"

    const-string v2, ">> hux onStopDp"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2045
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/mailservice/DirectPushService$HuxIdleState;->exitAction(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V

    .line 2047
    iget-object v1, p1, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->mStateFactory:Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;

    invoke-interface {v1}, Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;->getStopState()Lcom/htc/android/mail/mailservice/DirectPushService$State;

    move-result-object v0

    .line 2048
    .local v0, state:Lcom/htc/android/mail/mailservice/DirectPushService$State;
    invoke-virtual {v0, p1}, Lcom/htc/android/mail/mailservice/DirectPushService$State;->enterAction(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V

    .line 2049
    invoke-virtual {p1, v0}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->changeState(Lcom/htc/android/mail/mailservice/DirectPushService$State;)V

    .line 2050
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2090
    const-string v0, "HuxIdleState"

    return-object v0
.end method
