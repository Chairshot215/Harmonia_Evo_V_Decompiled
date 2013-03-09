.class Lcom/htc/android/mail/mailservice/DirectPushService$HuxShortDpState;
.super Lcom/htc/android/mail/mailservice/DirectPushService$State;
.source "DirectPushService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/mailservice/DirectPushService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HuxShortDpState"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2094
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/android/mail/mailservice/DirectPushService$State;-><init>(Lcom/htc/android/mail/mailservice/DirectPushService$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/mail/mailservice/DirectPushService$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2094
    invoke-direct {p0}, Lcom/htc/android/mail/mailservice/DirectPushService$HuxShortDpState;-><init>()V

    return-void
.end method


# virtual methods
.method public enterAction(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V
    .locals 6
    .parameter "fsm"

    .prologue
    const/4 v4, 0x0

    .line 2249
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "DirectPushService"

    const-string v2, ">> HuxShortDpState"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2250
    :cond_0
    new-instance v0, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;

    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getAccountId()J

    move-result-wide v2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/htc/android/mail/mailservice/DirectPushService$ImapIdleInstance;-><init>(Landroid/content/Context;JZZ)V

    .line 2251
    .local v0, instance:Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushInstance;
    invoke-virtual {v0}, Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushInstance;->listen()V

    .line 2252
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/mailservice/DirectPushService$HuxShortDpState;->setInstance(Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushInstance;)V

    .line 2253
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getAccountId()J

    move-result-wide v2

    const-wide/32 v4, 0x493e0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/htc/android/mail/mailservice/DirectPushService;->addChangeToIdleAlarm(Landroid/content/Context;JJ)V

    .line 2254
    return-void
.end method

.method public exitAction(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V
    .locals 4
    .parameter "fsm"

    .prologue
    .line 2257
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "DirectPushService"

    const-string v2, "<< HuxShortDpState"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2258
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/mail/mailservice/DirectPushService$HuxShortDpState;->getInstance()Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushInstance;

    move-result-object v0

    .line 2259
    .local v0, instance:Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushInstance;
    if-eqz v0, :cond_1

    .line 2260
    invoke-virtual {v0}, Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushInstance;->stopListening()V

    .line 2261
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/mailservice/DirectPushService$HuxShortDpState;->setInstance(Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushInstance;)V

    .line 2264
    :cond_1
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getAccountId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/htc/android/mail/mailservice/DirectPushService;->cancelChangeToIdleAlarm(Landroid/content/Context;J)V

    .line 2265
    return-void
.end method

.method public onChangeToIdle(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V
    .locals 5
    .parameter "fsm"

    .prologue
    const/4 v4, 0x1

    .line 2230
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "DirectPushService"

    const-string v2, ">> hux onChangeToIdle"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2231
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/mailservice/DirectPushService$HuxShortDpState;->exitAction(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V

    .line 2233
    iget-object v1, p1, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->mStateFactory:Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;

    invoke-interface {v1}, Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;->getIdleState()Lcom/htc/android/mail/mailservice/DirectPushService$State;

    move-result-object v0

    .line 2234
    .local v0, state:Lcom/htc/android/mail/mailservice/DirectPushService$State;
    invoke-virtual {v0, p1}, Lcom/htc/android/mail/mailservice/DirectPushService$State;->enterAction(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V

    .line 2235
    invoke-virtual {p1, v0}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->changeState(Lcom/htc/android/mail/mailservice/DirectPushService$State;)V

    .line 2237
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getAccountId()J

    move-result-wide v2

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->isAdditionalSyncWhenErrorEnabled(Landroid/content/Context;J)Z
    invoke-static {v1, v2, v3}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$1900(Landroid/content/Context;J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2238
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/mail/MailCommon;->checkNetwork(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2239
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getAccountId()J

    move-result-wide v2

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setAdditionalSyncWhenErrorAlarmEnabled(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V
    invoke-static {v1, v2, v3, p1, v4}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$700(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V

    .line 2246
    :cond_1
    :goto_0
    return-void

    .line 2240
    :cond_2
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->isAnyNetworkSettingOn(Landroid/content/Context;)Z
    invoke-static {v1}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$800(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2241
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getAccountId()J

    move-result-wide v2

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setAdditionalSyncWhenErrorAlarmEnabled(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V
    invoke-static {v1, v2, v3, p1, v4}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$700(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V

    goto :goto_0

    .line 2243
    :cond_3
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getAccountId()J

    move-result-wide v2

    const/4 v4, 0x0

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setAdditionalSyncWhenErrorAlarmEnabled(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V
    invoke-static {v1, v2, v3, p1, v4}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$700(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V

    goto :goto_0
.end method

.method public onConnected(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V
    .locals 5
    .parameter "fsm"

    .prologue
    const/4 v4, 0x1

    .line 2164
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "DirectPushService"

    const-string v2, ">> hux onConnected"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2165
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/mailservice/DirectPushService$HuxShortDpState;->exitAction(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V

    .line 2167
    const/4 v0, 0x0

    .line 2168
    .local v0, state:Lcom/htc/android/mail/mailservice/DirectPushService$State;
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->isAirPlaneModeOn(Landroid/content/Context;)Z
    invoke-static {v1}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$1800(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2169
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/mail/MailCommon;->checkNetwork(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2170
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "DirectPushService"

    const-string v2, "network exists, start push mode"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2171
    :cond_1
    iget-object v1, p1, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->mStateFactory:Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;

    invoke-interface {v1}, Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;->getDpState()Lcom/htc/android/mail/mailservice/DirectPushService$State;

    move-result-object v0

    .line 2189
    :cond_2
    :goto_0
    invoke-virtual {v0, p1}, Lcom/htc/android/mail/mailservice/DirectPushService$State;->enterAction(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V

    .line 2190
    invoke-virtual {p1, v0}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->changeState(Lcom/htc/android/mail/mailservice/DirectPushService$State;)V

    .line 2191
    return-void

    .line 2173
    :cond_3
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "DirectPushService"

    const-string v2, "no network, set scheduled sync alarm"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2174
    :cond_4
    iget-object v1, p1, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->mStateFactory:Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;

    invoke-interface {v1}, Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;->getPollState()Lcom/htc/android/mail/mailservice/DirectPushService$State;

    move-result-object v0

    goto :goto_0

    .line 2177
    :cond_5
    iget-object v1, p1, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->mStateFactory:Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;

    invoke-interface {v1}, Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;->getIdleState()Lcom/htc/android/mail/mailservice/DirectPushService$State;

    move-result-object v0

    .line 2179
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getAccountId()J

    move-result-wide v2

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->isAdditionalSyncWhenErrorEnabled(Landroid/content/Context;J)Z
    invoke-static {v1, v2, v3}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$1900(Landroid/content/Context;J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2180
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/mail/MailCommon;->checkNetwork(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2181
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getAccountId()J

    move-result-wide v2

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setAdditionalSyncWhenErrorAlarmEnabled(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V
    invoke-static {v1, v2, v3, p1, v4}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$700(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V

    goto :goto_0

    .line 2182
    :cond_6
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->isAnyNetworkSettingOn(Landroid/content/Context;)Z
    invoke-static {v1}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$800(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2183
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getAccountId()J

    move-result-wide v2

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setAdditionalSyncWhenErrorAlarmEnabled(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V
    invoke-static {v1, v2, v3, p1, v4}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$700(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V

    goto :goto_0

    .line 2185
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

    .line 2131
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "DirectPushService"

    const-string v2, ">> hux onDisconnected"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2132
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/mailservice/DirectPushService$HuxShortDpState;->exitAction(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V

    .line 2134
    const/4 v0, 0x0

    .line 2135
    .local v0, state:Lcom/htc/android/mail/mailservice/DirectPushService$State;
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->isAirPlaneModeOn(Landroid/content/Context;)Z
    invoke-static {v1}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$1800(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2136
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/mail/MailCommon;->checkNetwork(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2137
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "DirectPushService"

    const-string v2, "network exists, start push mode"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2138
    :cond_1
    iget-object v1, p1, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->mStateFactory:Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;

    invoke-interface {v1}, Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;->getDpState()Lcom/htc/android/mail/mailservice/DirectPushService$State;

    move-result-object v0

    .line 2159
    :cond_2
    :goto_0
    invoke-virtual {v0, p1}, Lcom/htc/android/mail/mailservice/DirectPushService$State;->enterAction(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V

    .line 2160
    invoke-virtual {p1, v0}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->changeState(Lcom/htc/android/mail/mailservice/DirectPushService$State;)V

    .line 2161
    return-void

    .line 2140
    :cond_3
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->isAnyNetworkSettingOn(Landroid/content/Context;)Z
    invoke-static {v1}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$800(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2141
    iget-object v1, p1, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->mStateFactory:Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;

    invoke-interface {v1}, Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;->getPollState()Lcom/htc/android/mail/mailservice/DirectPushService$State;

    move-result-object v0

    goto :goto_0

    .line 2143
    :cond_4
    iget-object v1, p1, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->mStateFactory:Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;

    invoke-interface {v1}, Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;->getIdleState()Lcom/htc/android/mail/mailservice/DirectPushService$State;

    move-result-object v0

    goto :goto_0

    .line 2147
    :cond_5
    iget-object v1, p1, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->mStateFactory:Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;

    invoke-interface {v1}, Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;->getIdleState()Lcom/htc/android/mail/mailservice/DirectPushService$State;

    move-result-object v0

    .line 2149
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getAccountId()J

    move-result-wide v2

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->isAdditionalSyncWhenErrorEnabled(Landroid/content/Context;J)Z
    invoke-static {v1, v2, v3}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$1900(Landroid/content/Context;J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2150
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/mail/MailCommon;->checkNetwork(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2151
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getAccountId()J

    move-result-wide v2

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setAdditionalSyncWhenErrorAlarmEnabled(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V
    invoke-static {v1, v2, v3, p1, v4}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$700(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V

    goto :goto_0

    .line 2152
    :cond_6
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->isAnyNetworkSettingOn(Landroid/content/Context;)Z
    invoke-static {v1}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$800(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2153
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getAccountId()J

    move-result-wide v2

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setAdditionalSyncWhenErrorAlarmEnabled(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V
    invoke-static {v1, v2, v3, p1, v4}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$700(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V

    goto :goto_0

    .line 2155
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

    .line 2203
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "DirectPushService"

    const-string v2, ">> hux onReceiveSMS"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2204
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/mailservice/DirectPushService$HuxShortDpState;->exitAction(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V

    .line 2206
    const/4 v0, 0x0

    .line 2207
    .local v0, state:Lcom/htc/android/mail/mailservice/DirectPushService$State;
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/mail/MailCommon;->checkNetwork(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2208
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "DirectPushService"

    const-string v2, "network exists, start short push mode"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2209
    :cond_1
    iget-object v1, p1, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->mStateFactory:Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;

    invoke-interface {v1}, Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;->getShortDpState()Lcom/htc/android/mail/mailservice/DirectPushService$State;

    move-result-object v0

    .line 2225
    :cond_2
    :goto_0
    invoke-virtual {v0, p1}, Lcom/htc/android/mail/mailservice/DirectPushService$State;->enterAction(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V

    .line 2226
    invoke-virtual {p1, v0}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->changeState(Lcom/htc/android/mail/mailservice/DirectPushService$State;)V

    .line 2227
    return-void

    .line 2211
    :cond_3
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "DirectPushService"

    const-string v2, "no network, set scheduled sync alarm"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2212
    :cond_4
    iget-object v1, p1, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->mStateFactory:Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;

    invoke-interface {v1}, Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;->getIdleState()Lcom/htc/android/mail/mailservice/DirectPushService$State;

    move-result-object v0

    .line 2214
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getAccountId()J

    move-result-wide v2

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->isAdditionalSyncWhenErrorEnabled(Landroid/content/Context;J)Z
    invoke-static {v1, v2, v3}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$1900(Landroid/content/Context;J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2215
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/mail/MailCommon;->checkNetwork(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2216
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getAccountId()J

    move-result-wide v2

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setAdditionalSyncWhenErrorAlarmEnabled(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V
    invoke-static {v1, v2, v3, p1, v4}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$700(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V

    goto :goto_0

    .line 2217
    :cond_5
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->isAnyNetworkSettingOn(Landroid/content/Context;)Z
    invoke-static {v1}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$800(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2218
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getAccountId()J

    move-result-wide v2

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setAdditionalSyncWhenErrorAlarmEnabled(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V
    invoke-static {v1, v2, v3, p1, v4}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$700(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V

    goto :goto_0

    .line 2220
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

    .line 2097
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "DirectPushService"

    const-string v2, ">> hux onStartDp"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2098
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/mailservice/DirectPushService$HuxShortDpState;->exitAction(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V

    .line 2100
    const/4 v0, 0x0

    .line 2101
    .local v0, state:Lcom/htc/android/mail/mailservice/DirectPushService$State;
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->isAirPlaneModeOn(Landroid/content/Context;)Z
    invoke-static {v1}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$1800(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2102
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/mail/MailCommon;->checkNetwork(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2103
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "DirectPushService"

    const-string v2, "network exists, start push mode"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2104
    :cond_1
    iget-object v1, p1, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->mStateFactory:Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;

    invoke-interface {v1}, Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;->getDpState()Lcom/htc/android/mail/mailservice/DirectPushService$State;

    move-result-object v0

    .line 2126
    :cond_2
    :goto_0
    invoke-virtual {v0, p1}, Lcom/htc/android/mail/mailservice/DirectPushService$State;->enterAction(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V

    .line 2127
    invoke-virtual {p1, v0}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->changeState(Lcom/htc/android/mail/mailservice/DirectPushService$State;)V

    .line 2128
    return-void

    .line 2106
    :cond_3
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->isAnyNetworkSettingOn(Landroid/content/Context;)Z
    invoke-static {v1}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$800(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2107
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "DirectPushService"

    const-string v2, "no network, set scheduled sync alarm"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2108
    :cond_4
    iget-object v1, p1, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->mStateFactory:Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;

    invoke-interface {v1}, Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;->getPollState()Lcom/htc/android/mail/mailservice/DirectPushService$State;

    move-result-object v0

    goto :goto_0

    .line 2110
    :cond_5
    iget-object v1, p1, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->mStateFactory:Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;

    invoke-interface {v1}, Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;->getIdleState()Lcom/htc/android/mail/mailservice/DirectPushService$State;

    move-result-object v0

    goto :goto_0

    .line 2114
    :cond_6
    iget-object v1, p1, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->mStateFactory:Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;

    invoke-interface {v1}, Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;->getIdleState()Lcom/htc/android/mail/mailservice/DirectPushService$State;

    move-result-object v0

    .line 2116
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getAccountId()J

    move-result-wide v2

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->isAdditionalSyncWhenErrorEnabled(Landroid/content/Context;J)Z
    invoke-static {v1, v2, v3}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$1900(Landroid/content/Context;J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2117
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/mail/MailCommon;->checkNetwork(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2118
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getAccountId()J

    move-result-wide v2

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setAdditionalSyncWhenErrorAlarmEnabled(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V
    invoke-static {v1, v2, v3, p1, v4}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$700(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V

    goto :goto_0

    .line 2119
    :cond_7
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->isAnyNetworkSettingOn(Landroid/content/Context;)Z
    invoke-static {v1}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$800(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2120
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getAccountId()J

    move-result-wide v2

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setAdditionalSyncWhenErrorAlarmEnabled(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V
    invoke-static {v1, v2, v3, p1, v4}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$700(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V

    goto :goto_0

    .line 2122
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
    .line 2194
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "DirectPushService"

    const-string v2, ">> hux onStopDp"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2195
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/mailservice/DirectPushService$HuxShortDpState;->exitAction(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V

    .line 2197
    iget-object v1, p1, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->mStateFactory:Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;

    invoke-interface {v1}, Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;->getStopState()Lcom/htc/android/mail/mailservice/DirectPushService$State;

    move-result-object v0

    .line 2198
    .local v0, state:Lcom/htc/android/mail/mailservice/DirectPushService$State;
    invoke-virtual {v0, p1}, Lcom/htc/android/mail/mailservice/DirectPushService$State;->enterAction(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V

    .line 2199
    invoke-virtual {p1, v0}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->changeState(Lcom/htc/android/mail/mailservice/DirectPushService$State;)V

    .line 2200
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2268
    const-string v0, "HuxShortDpState"

    return-object v0
.end method
