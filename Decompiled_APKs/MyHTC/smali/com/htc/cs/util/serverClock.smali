.class public Lcom/htc/cs/util/serverClock;
.super Ljava/lang/Object;
.source "serverClock.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private csContext:Landroid/content/Context;

.field private final preferenceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "ServiceClock"

    iput-object v0, p0, Lcom/htc/cs/util/serverClock;->TAG:Ljava/lang/String;

    .line 19
    const-string v0, "CSShared"

    iput-object v0, p0, Lcom/htc/cs/util/serverClock;->preferenceName:Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcom/htc/cs/util/serverClock;->csContext:Landroid/content/Context;

    .line 26
    return-void
.end method

.method public static CurrentGMTTime()J
    .locals 16

    .prologue
    .line 133
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 134
    .local v2, c:Ljava/util/Calendar;
    const/16 v12, 0xf

    invoke-virtual {v2, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    int-to-long v9, v12

    .line 135
    .local v9, mOffset:J
    const/16 v12, 0xb

    invoke-virtual {v2, v12}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 136
    .local v6, mHour:I
    const/16 v12, 0xc

    invoke-virtual {v2, v12}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 137
    .local v8, mMinute:I
    const/16 v12, 0xd

    invoke-virtual {v2, v12}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 138
    .local v11, mSec:I
    const/16 v12, 0xe

    invoke-virtual {v2, v12}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 139
    .local v7, mMiliSec:I
    const/16 v12, 0x9

    invoke-virtual {v2, v12}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 141
    .local v3, mAM_PM:I
    const-wide/32 v12, 0x36ee80

    div-long/2addr v9, v12

    .line 143
    int-to-long v12, v6

    sub-long v4, v12, v9

    .line 145
    .local v4, mCurrent:J
    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-gez v12, :cond_0

    .line 146
    if-nez v3, :cond_2

    .line 147
    const-wide/16 v12, 0x18

    add-long/2addr v4, v12

    .line 151
    :cond_0
    :goto_0
    const-wide/16 v12, 0x18

    cmp-long v12, v4, v12

    if-lez v12, :cond_1

    .line 152
    const-wide/16 v12, 0x18

    sub-long/2addr v4, v12

    .line 154
    :cond_1
    const-wide/16 v12, 0x3c

    mul-long/2addr v12, v4

    int-to-long v14, v8

    add-long/2addr v12, v14

    const-wide/16 v14, 0x3c

    mul-long/2addr v12, v14

    int-to-long v14, v11

    add-long/2addr v12, v14

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    int-to-long v14, v7

    add-long v0, v12, v14

    .line 157
    .local v0, GMTTimeInMSec:J
    return-wide v0

    .line 149
    .end local v0           #GMTTimeInMSec:J
    :cond_2
    const-wide/16 v12, 0xc

    add-long/2addr v4, v12

    goto :goto_0
.end method

.method private PreferenceElapsedTime()J
    .locals 6

    .prologue
    .line 173
    iget-object v3, p0, Lcom/htc/cs/util/serverClock;->csContext:Landroid/content/Context;

    const-string v4, "CSShared"

    iget-object v5, p0, Lcom/htc/cs/util/serverClock;->csContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 175
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v3, "ElapsedTime"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 176
    .local v1, time:J
    return-wide v1
.end method

.method private PreferenceGMTTime()J
    .locals 6

    .prologue
    .line 166
    iget-object v3, p0, Lcom/htc/cs/util/serverClock;->csContext:Landroid/content/Context;

    const-string v4, "CSShared"

    iget-object v5, p0, Lcom/htc/cs/util/serverClock;->csContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 168
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v3, "GMTTime"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 169
    .local v1, time:J
    return-wide v1
.end method

.method private PreferencePhoneUUID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 161
    iget-object v1, p0, Lcom/htc/cs/util/serverClock;->csContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getPhoneUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, handsetDeviceId:Ljava/lang/String;
    return-object v0
.end method

.method private PreferenceServerTime()J
    .locals 6

    .prologue
    .line 180
    iget-object v3, p0, Lcom/htc/cs/util/serverClock;->csContext:Landroid/content/Context;

    const-string v4, "CSShared"

    iget-object v5, p0, Lcom/htc/cs/util/serverClock;->csContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 182
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v3, "ServerTime"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 183
    .local v1, time:J
    return-wide v1
.end method

.method private saveTimesToPreference(JJJ)V
    .locals 5
    .parameter "curGMTTime"
    .parameter "CurrentElapsedTime"
    .parameter "svrTime"

    .prologue
    .line 188
    iget-object v2, p0, Lcom/htc/cs/util/serverClock;->csContext:Landroid/content/Context;

    const-string v3, "CSShared"

    iget-object v4, p0, Lcom/htc/cs/util/serverClock;->csContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 190
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 191
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "GMTTime"

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 192
    const-string v2, "ElapsedTime"

    invoke-interface {v0, v2, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 193
    const-string v2, "ServerTime"

    invoke-interface {v0, v2, p5, p6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 194
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 195
    return-void
.end method


# virtual methods
.method public ServerTime()J
    .locals 13

    .prologue
    const-wide/16 v10, 0x0

    .line 114
    invoke-direct {p0}, Lcom/htc/cs/util/serverClock;->PreferenceServerTime()J

    move-result-wide v8

    .line 115
    .local v8, svrTime:J
    cmp-long v12, v8, v10

    if-nez v12, :cond_0

    .line 129
    :goto_0
    return-wide v10

    .line 118
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 119
    .local v0, CurrentElapsedTime:J
    invoke-direct {p0}, Lcom/htc/cs/util/serverClock;->PreferenceElapsedTime()J

    move-result-wide v2

    .line 120
    .local v2, PrefETime:J
    invoke-static {}, Lcom/htc/cs/util/serverClock;->CurrentGMTTime()J

    move-result-wide v4

    .line 125
    .local v4, curGMTTime:J
    sub-long v6, v0, v2

    .line 127
    .local v6, differentTime:J
    add-long/2addr v8, v6

    move-wide v10, v8

    .line 129
    goto :goto_0
.end method

.method public powerOnProcess()Z
    .locals 12

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/htc/cs/util/serverClock;->PreferenceServerTime()J

    move-result-wide v5

    .line 89
    .local v5, svrTime:J
    const-wide/16 v10, 0x0

    cmp-long v0, v5, v10

    if-nez v0, :cond_0

    .line 90
    const/4 v0, 0x0

    .line 110
    :goto_0
    return v0

    .line 92
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 93
    .local v3, CurrentElapsedTime:J
    invoke-direct {p0}, Lcom/htc/cs/util/serverClock;->PreferenceGMTTime()J

    move-result-wide v8

    .line 94
    .local v8, prefGMTTime:J
    invoke-static {}, Lcom/htc/cs/util/serverClock;->CurrentGMTTime()J

    move-result-wide v1

    .line 101
    .local v1, curGMTTime:J
    sub-long v10, v1, v8

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 102
    .local v7, diff:Ljava/lang/Long;
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    add-long/2addr v5, v10

    move-object v0, p0

    .line 107
    invoke-direct/range {v0 .. v6}, Lcom/htc/cs/util/serverClock;->saveTimesToPreference(JJJ)V

    .line 110
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public readServerClock()Ljava/lang/Long;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/htc/cs/util/serverClock;->PreferencePhoneUUID()Ljava/lang/String;

    move-result-object v12

    .line 31
    .local v12, phoneUUID:Ljava/lang/String;
    const-wide/high16 v1, -0x8000

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 32
    .local v13, serverMS:Ljava/lang/Long;
    if-nez v12, :cond_0

    .line 33
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v12

    .line 35
    :cond_0
    if-eqz v12, :cond_1

    .line 36
    invoke-static {v12}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    .line 37
    .local v4, handsetDeviceId:Ljava/util/UUID;
    new-instance v0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;

    iget-object v1, p0, Lcom/htc/cs/util/serverClock;->csContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getServerName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/cs/util/serverClock;->csContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getCMSURI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v5, " "

    const-string v6, " "

    iget-object v7, p0, Lcom/htc/cs/util/serverClock;->csContext:Landroid/content/Context;

    invoke-direct/range {v0 .. v7}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/UUID;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 42
    .local v0, restProxy:Lcom/htc/cscore/restapi/proxy/RestServicesProxy;
    invoke-virtual {v0}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->GetServerTime()Ljava/util/Date;

    move-result-object v14

    .line 43
    .local v14, tempservertime:Ljava/util/Date;
    invoke-virtual {v14}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 55
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 57
    .local v8, CurrentElapsedTime:J
    invoke-static {}, Lcom/htc/cs/util/serverClock;->CurrentGMTTime()J

    move-result-wide v6

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/htc/cs/util/serverClock;->saveTimesToPreference(JJJ)V

    .line 60
    iget-object v1, p0, Lcom/htc/cs/util/serverClock;->csContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->GetVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setServerVersionNumber(Landroid/content/Context;Ljava/lang/String;)V

    .line 64
    .end local v0           #restProxy:Lcom/htc/cscore/restapi/proxy/RestServicesProxy;
    .end local v4           #handsetDeviceId:Ljava/util/UUID;
    .end local v8           #CurrentElapsedTime:J
    .end local v14           #tempservertime:Ljava/util/Date;
    :cond_1
    return-object v13
.end method

.method public timeChange()Z
    .locals 9

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/htc/cs/util/serverClock;->PreferenceServerTime()J

    move-result-wide v5

    .line 72
    .local v5, svrTime:J
    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-nez v0, :cond_0

    .line 73
    const/4 v0, 0x0

    .line 81
    :goto_0
    return v0

    .line 75
    :cond_0
    invoke-static {}, Lcom/htc/cs/util/serverClock;->CurrentGMTTime()J

    move-result-wide v1

    .line 76
    .local v1, curGMTTime:J
    invoke-direct {p0}, Lcom/htc/cs/util/serverClock;->PreferenceElapsedTime()J

    move-result-wide v3

    .local v3, PrefETime:J
    move-object v0, p0

    .line 78
    invoke-direct/range {v0 .. v6}, Lcom/htc/cs/util/serverClock;->saveTimesToPreference(JJJ)V

    .line 81
    const/4 v0, 0x1

    goto :goto_0
.end method
