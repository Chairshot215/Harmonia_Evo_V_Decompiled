.class public Lcom/htc/clock/util/time/CurLocationTimeCtrl;
.super Lcom/htc/clock/util/time/TimeCtrl;
.source "CurLocationTimeCtrl.java"

# interfaces
.implements Lcom/htc/clock/util/location/LocationListener;


# instance fields
.field private mCheckAutoTimeAlready:Z

.field private mLocCtrl:Lcom/htc/clock/util/location/LocationCtrl;

.field private mLocCtrlNeedRegister:Z

.field private m_bAutoSyn:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Lcom/htc/clock/util/time/TimeCtrl;-><init>()V

    .line 20
    iput-boolean v0, p0, Lcom/htc/clock/util/time/CurLocationTimeCtrl;->mLocCtrlNeedRegister:Z

    .line 21
    iput-boolean v0, p0, Lcom/htc/clock/util/time/CurLocationTimeCtrl;->mCheckAutoTimeAlready:Z

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/clock/util/time/CurLocationTimeCtrl;->m_bAutoSyn:Z

    return-void
.end method

.method public static isTimeAutoState(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 196
    const-string v2, "isTimeAutoState~"

    invoke-static {v2}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 198
    const/16 v0, 0x64

    .line 200
    .local v0, autoTimeZone:I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_time_zone"

    invoke-static {v2, v3}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 205
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isTimeAutoState~ isTimeAutoState~ autoTimeZone:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 206
    if-lez v0, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 202
    :catch_0
    move-exception v1

    .line 203
    .local v1, snfe:Landroid/provider/Settings$SettingNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isTimeAutoState~ exception snfe:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 206
    .end local v1           #snfe:Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public checkCurTimezoneProblem()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 143
    iget-boolean v6, p0, Lcom/htc/clock/util/time/CurLocationTimeCtrl;->m_bAutoSyn:Z

    if-eqz v6, :cond_4

    .line 144
    iget-object v6, p0, Lcom/htc/clock/util/time/CurLocationTimeCtrl;->mLocCtrl:Lcom/htc/clock/util/location/LocationCtrl;

    if-nez v6, :cond_0

    .line 174
    :goto_0
    return v4

    .line 147
    :cond_0
    iget-object v6, p0, Lcom/htc/clock/util/time/CurLocationTimeCtrl;->mLocCtrl:Lcom/htc/clock/util/location/LocationCtrl;

    invoke-virtual {v6}, Lcom/htc/clock/util/location/LocationCtrl;->getTimeZoneId()Ljava/lang/String;

    move-result-object v3

    .line 148
    .local v3, timeZoneStr:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkCurTimezoneProblem~ timZoneStr = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 149
    const/4 v1, 0x0

    .line 150
    .local v1, locTz:Ljava/util/TimeZone;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 151
    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 156
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkCurTimezoneProblem~ locTz = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Lcom/htc/clock/util/time/CurLocationTimeCtrl;->getCalendar()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    .line 158
    .local v0, SysTz:Ljava/util/TimeZone;
    invoke-virtual {p0}, Lcom/htc/clock/util/time/CurLocationTimeCtrl;->getCalendar()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, systz:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkCurTimezoneProblem~ SysTz = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 160
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkCurTimezoneProblem~ systzID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v0, v1}, Ljava/util/TimeZone;->hasSameRules(Ljava/util/TimeZone;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v4, v5

    .line 163
    goto/16 :goto_0

    .line 154
    .end local v0           #SysTz:Ljava/util/TimeZone;
    .end local v2           #systz:Ljava/lang/String;
    :cond_1
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    goto :goto_1

    .line 165
    .restart local v0       #SysTz:Ljava/util/TimeZone;
    .restart local v2       #systz:Ljava/lang/String;
    :cond_2
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v4, v5

    .line 166
    goto/16 :goto_0

    .line 169
    :cond_3
    const-string v5, "checkCurTimezoneProblem~ timezone not the same~"

    invoke-static {v5}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0           #SysTz:Ljava/util/TimeZone;
    .end local v1           #locTz:Ljava/util/TimeZone;
    .end local v2           #systz:Ljava/lang/String;
    .end local v3           #timeZoneStr:Ljava/lang/String;
    :cond_4
    move v4, v5

    .line 174
    goto/16 :goto_0
.end method

.method public checkSystemAutoSynTimezone()Z
    .locals 4

    .prologue
    .line 180
    const/4 v1, 0x0

    .line 181
    .local v1, ret:Z
    iget-object v2, p0, Lcom/htc/clock/util/time/TimeCtrl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/clock/util/time/CurLocationTimeCtrl;->isTimeAutoState(Landroid/content/Context;)Z

    move-result v0

    .line 182
    .local v0, isAuto:Z
    iget-boolean v2, p0, Lcom/htc/clock/util/time/CurLocationTimeCtrl;->m_bAutoSyn:Z

    if-eq v2, v0, :cond_0

    .line 183
    const/4 v1, 0x1

    .line 184
    iput-boolean v0, p0, Lcom/htc/clock/util/time/CurLocationTimeCtrl;->m_bAutoSyn:Z

    .line 186
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkSystemAutoSynTimezone~ m_bAutoSyn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/clock/util/time/CurLocationTimeCtrl;->m_bAutoSyn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 187
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/clock/util/time/CurLocationTimeCtrl;->mCheckAutoTimeAlready:Z

    .line 188
    return v1
.end method

.method public getCalendar()Ljava/util/Calendar;
    .locals 5

    .prologue
    .line 115
    iget-boolean v2, p0, Lcom/htc/clock/util/time/CurLocationTimeCtrl;->m_bAutoSyn:Z

    if-eqz v2, :cond_1

    .line 116
    iget-object v2, p0, Lcom/htc/clock/util/time/TimeCtrl;->mCalendar:Ljava/util/Calendar;

    if-nez v2, :cond_0

    .line 117
    const-string v2, "TimeCtrl~ getCalendar null"

    invoke-static {v2}, Lcom/htc/clock/util/MyLog;->e(Ljava/lang/String;)V

    .line 118
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/clock/util/time/TimeCtrl;->mCalendar:Ljava/util/Calendar;

    .line 123
    :goto_0
    iget-object v2, p0, Lcom/htc/clock/util/time/TimeCtrl;->mCalendar:Ljava/util/Calendar;

    .line 138
    :goto_1
    return-object v2

    .line 121
    :cond_0
    iget-object v2, p0, Lcom/htc/clock/util/time/TimeCtrl;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0

    .line 127
    :cond_1
    const/4 v0, 0x0

    .line 128
    .local v0, timeZoneStr:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/clock/util/time/CurLocationTimeCtrl;->mLocCtrl:Lcom/htc/clock/util/location/LocationCtrl;

    if-eqz v2, :cond_2

    .line 129
    iget-object v2, p0, Lcom/htc/clock/util/time/CurLocationTimeCtrl;->mLocCtrl:Lcom/htc/clock/util/location/LocationCtrl;

    invoke-virtual {v2}, Lcom/htc/clock/util/location/LocationCtrl;->getTimeZoneId()Ljava/lang/String;

    move-result-object v0

    .line 131
    :cond_2
    const/4 v1, 0x0

    .line 132
    .local v1, tz:Ljava/util/TimeZone;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 133
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 138
    :goto_2
    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    goto :goto_1

    .line 136
    :cond_3
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    goto :goto_2
.end method

.method public getTimeZoneCity()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 210
    iget-object v0, p0, Lcom/htc/clock/util/time/CurLocationTimeCtrl;->mLocCtrl:Lcom/htc/clock/util/location/LocationCtrl;

    .line 211
    .local v0, locCtrl:Lcom/htc/clock/util/location/LocationCtrl;
    if-nez v0, :cond_0

    .line 212
    const-string v2, "CurLocationTimeCtrl~ getTimeZoneCity~ Ctrl is not init"

    invoke-static {v2}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 229
    :goto_0
    return-object v1

    .line 215
    :cond_0
    iget-boolean v2, p0, Lcom/htc/clock/util/time/CurLocationTimeCtrl;->mCheckAutoTimeAlready:Z

    if-nez v2, :cond_1

    .line 216
    const-string v2, "CurLocationTimeCtrl~ getTimeZoneCity~ setting not init"

    invoke-static {v2}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 219
    :cond_1
    const-string v1, "CurLocationTimeCtrl~ getTimeZoneCity~"

    invoke-static {v1}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 220
    iget-boolean v1, p0, Lcom/htc/clock/util/time/CurLocationTimeCtrl;->m_bAutoSyn:Z

    if-eqz v1, :cond_3

    .line 221
    invoke-virtual {p0}, Lcom/htc/clock/util/time/CurLocationTimeCtrl;->checkCurTimezoneProblem()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 222
    sget-object v1, Lcom/htc/clock/util/location/LocationUtil;->sDefaultLocName:Ljava/lang/String;

    goto :goto_0

    .line 225
    :cond_2
    invoke-virtual {v0}, Lcom/htc/clock/util/location/LocationCtrl;->getLocName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 229
    :cond_3
    invoke-virtual {v0}, Lcom/htc/clock/util/location/LocationCtrl;->getLocName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected handlerInit()V
    .locals 2

    .prologue
    .line 95
    const-string v0, "CurLocationTimeCtrl~ handlerInit"

    invoke-static {v0}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/htc/clock/util/time/CurLocationTimeCtrl;->mLocCtrl:Lcom/htc/clock/util/location/LocationCtrl;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/clock/util/time/CurLocationTimeCtrl;->mLocCtrlNeedRegister:Z

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/htc/clock/util/time/CurLocationTimeCtrl;->mLocCtrl:Lcom/htc/clock/util/location/LocationCtrl;

    iget-object v1, p0, Lcom/htc/clock/util/time/TimeCtrl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p0}, Lcom/htc/clock/util/location/LocationCtrl;->register(Landroid/os/Handler;Lcom/htc/clock/util/location/LocationListener;)V

    .line 99
    :cond_0
    invoke-super {p0}, Lcom/htc/clock/util/time/TimeCtrl;->handlerInit()V

    .line 100
    return-void
.end method

.method protected handlerSettingChanged()V
    .locals 3

    .prologue
    .line 104
    iget-boolean v2, p0, Lcom/htc/clock/util/time/CurLocationTimeCtrl;->mCheckAutoTimeAlready:Z

    if-nez v2, :cond_2

    const/4 v1, 0x1

    .line 105
    .local v1, firstCheck:Z
    :goto_0
    invoke-virtual {p0}, Lcom/htc/clock/util/time/CurLocationTimeCtrl;->checkSystemAutoSynTimezone()Z

    move-result v0

    .line 108
    .local v0, changed:Z
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 109
    :cond_0
    invoke-super {p0}, Lcom/htc/clock/util/time/TimeCtrl;->handlerTimeZoneChanged()V

    .line 111
    :cond_1
    invoke-super {p0}, Lcom/htc/clock/util/time/TimeCtrl;->handlerSettingChanged()V

    .line 112
    return-void

    .line 104
    .end local v0           #changed:Z
    .end local v1           #firstCheck:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Lcom/htc/clock/util/time/TimeCtrl$OnTimeListener;ILandroid/os/Handler;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "listener"
    .parameter "type"
    .parameter "handler"
    .parameter "timezone"

    .prologue
    .line 24
    const-string v0, "CurLocationTimeCtrl~ init"

    invoke-static {v0}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 25
    or-int/lit8 p3, p3, 0xc

    .line 26
    iget-object v0, p0, Lcom/htc/clock/util/time/CurLocationTimeCtrl;->mLocCtrl:Lcom/htc/clock/util/location/LocationCtrl;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/htc/clock/util/location/LocationCtrl;

    invoke-direct {v0, p1}, Lcom/htc/clock/util/location/LocationCtrl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/clock/util/time/CurLocationTimeCtrl;->mLocCtrl:Lcom/htc/clock/util/location/LocationCtrl;

    .line 28
    iget-object v0, p0, Lcom/htc/clock/util/time/CurLocationTimeCtrl;->mLocCtrl:Lcom/htc/clock/util/location/LocationCtrl;

    invoke-virtual {v0}, Lcom/htc/clock/util/location/LocationCtrl;->addCurLoc()Z

    .line 29
    iget-object v0, p0, Lcom/htc/clock/util/time/CurLocationTimeCtrl;->mLocCtrl:Lcom/htc/clock/util/location/LocationCtrl;

    const-string v1, "cur"

    invoke-virtual {v0, v1}, Lcom/htc/clock/util/location/LocationCtrl;->setLocKey(Ljava/lang/String;)V

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/clock/util/time/CurLocationTimeCtrl;->mLocCtrlNeedRegister:Z

    .line 33
    :cond_0
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-super/range {v0 .. v5}, Lcom/htc/clock/util/time/TimeCtrl;->init(Landroid/content/Context;Lcom/htc/clock/util/time/TimeCtrl$OnTimeListener;ILandroid/os/Handler;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/htc/clock/util/time/TimeCtrl$OnTimeListener;Lcom/htc/clock/util/location/LocationCtrl;ILandroid/os/Handler;)V
    .locals 6
    .parameter "context"
    .parameter "listener"
    .parameter "locCtrl"
    .parameter "type"
    .parameter "handler"

    .prologue
    .line 38
    or-int/lit8 p4, p4, 0xc

    .line 39
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move-object v4, p5

    invoke-super/range {v0 .. v5}, Lcom/htc/clock/util/time/TimeCtrl;->init(Landroid/content/Context;Lcom/htc/clock/util/time/TimeCtrl$OnTimeListener;ILandroid/os/Handler;Ljava/lang/String;)V

    .line 40
    iput-object p3, p0, Lcom/htc/clock/util/time/CurLocationTimeCtrl;->mLocCtrl:Lcom/htc/clock/util/location/LocationCtrl;

    .line 41
    return-void
.end method

.method public isChinaLocationService()Z
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x0

    return v0
.end method

.method public isHelpTurnOnLoc()Z
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x0

    return v0
.end method

.method public isResume()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public isTimezoneAutoSyn()Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/htc/clock/util/time/CurLocationTimeCtrl;->m_bAutoSyn:Z

    return v0
.end method

.method public onCityUpdate(Lcom/htc/clock/util/location/LocationCtrl;)V
    .locals 1
    .parameter "weatherCtrl"

    .prologue
    .line 64
    const-string v0, "CurLocationTimeCtrl~ onCityUpdate"

    invoke-static {v0}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 65
    invoke-super {p0}, Lcom/htc/clock/util/time/TimeCtrl;->onTimeZoneChanged()V

    .line 67
    return-void
.end method

.method public onTempUnitChange(Lcom/htc/clock/util/location/LocationCtrl;)V
    .locals 0
    .parameter "weatherCtrl"

    .prologue
    .line 73
    return-void
.end method

.method protected onTimeZoneChange()V
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/htc/clock/util/time/CurLocationTimeCtrl;->m_bAutoSyn:Z

    if-eqz v0, :cond_0

    .line 83
    invoke-super {p0}, Lcom/htc/clock/util/time/TimeCtrl;->onTimeZoneChanged()V

    .line 85
    :cond_0
    return-void
.end method

.method public onWeatherUpdate(Lcom/htc/clock/util/location/LocationCtrl;)V
    .locals 0
    .parameter "weatherCtrl"

    .prologue
    .line 79
    return-void
.end method

.method public uninit()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "CurLocationTimeCtrl~ uninit"

    invoke-static {v0}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/htc/clock/util/time/CurLocationTimeCtrl;->mLocCtrl:Lcom/htc/clock/util/location/LocationCtrl;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/clock/util/time/CurLocationTimeCtrl;->mLocCtrlNeedRegister:Z

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/htc/clock/util/time/CurLocationTimeCtrl;->mLocCtrl:Lcom/htc/clock/util/location/LocationCtrl;

    invoke-virtual {v0}, Lcom/htc/clock/util/location/LocationCtrl;->unRegister()V

    .line 48
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/clock/util/time/CurLocationTimeCtrl;->mLocCtrl:Lcom/htc/clock/util/location/LocationCtrl;

    .line 49
    invoke-super {p0}, Lcom/htc/clock/util/time/TimeCtrl;->uninit()V

    .line 50
    return-void
.end method
