.class public Lcom/htc/reportagent/budget/BudgetManager;
.super Ljava/lang/Object;
.source "BudgetManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/reportagent/budget/BudgetManager$1;,
        Lcom/htc/reportagent/budget/BudgetManager$Event;,
        Lcom/htc/reportagent/budget/BudgetManager$NetworkType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final _DEBUG:Z


# instance fields
.field private mAlarmIntent:Landroid/app/PendingIntent;

.field private mContext:Landroid/content/Context;

.field private mMobileNetwork:Lcom/htc/reportagent/budget/network/Network;

.field private mOtherNetwork:Lcom/htc/reportagent/budget/network/Network;

.field private mPolicy:Lcom/htc/utils/ulog/UPolicy;

.field private mPref:Lcom/htc/reportagent/budget/BudgetPreference;

.field private mTotalNetwork:Lcom/htc/reportagent/budget/network/Network;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/htc/reportagent/budget/BudgetManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/reportagent/budget/BudgetManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/reportagent/budget/BudgetManager;->mAlarmIntent:Landroid/app/PendingIntent;

    .line 57
    iput-object p1, p0, Lcom/htc/reportagent/budget/BudgetManager;->mContext:Landroid/content/Context;

    .line 58
    invoke-static {}, Lcom/htc/reportagent/ReportUPolicy;->getInstance()Lcom/htc/utils/ulog/UPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/reportagent/budget/BudgetManager;->mPolicy:Lcom/htc/utils/ulog/UPolicy;

    .line 59
    new-instance v1, Lcom/htc/reportagent/budget/BudgetPreference;

    iget-object v2, p0, Lcom/htc/reportagent/budget/BudgetManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/htc/reportagent/budget/BudgetPreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/reportagent/budget/BudgetManager;->mPref:Lcom/htc/reportagent/budget/BudgetPreference;

    .line 60
    new-instance v1, Lcom/htc/reportagent/budget/network/MobileNetwork;

    iget-object v2, p0, Lcom/htc/reportagent/budget/BudgetManager;->mPref:Lcom/htc/reportagent/budget/BudgetPreference;

    invoke-direct {v1, v2}, Lcom/htc/reportagent/budget/network/MobileNetwork;-><init>(Lcom/htc/reportagent/budget/BudgetPreference;)V

    iput-object v1, p0, Lcom/htc/reportagent/budget/BudgetManager;->mMobileNetwork:Lcom/htc/reportagent/budget/network/Network;

    .line 61
    new-instance v1, Lcom/htc/reportagent/budget/network/OtherNetwork;

    iget-object v2, p0, Lcom/htc/reportagent/budget/BudgetManager;->mPref:Lcom/htc/reportagent/budget/BudgetPreference;

    invoke-direct {v1, v2}, Lcom/htc/reportagent/budget/network/OtherNetwork;-><init>(Lcom/htc/reportagent/budget/BudgetPreference;)V

    iput-object v1, p0, Lcom/htc/reportagent/budget/BudgetManager;->mOtherNetwork:Lcom/htc/reportagent/budget/network/Network;

    .line 62
    new-instance v1, Lcom/htc/reportagent/budget/network/AllNetwork;

    iget-object v2, p0, Lcom/htc/reportagent/budget/BudgetManager;->mPref:Lcom/htc/reportagent/budget/BudgetPreference;

    invoke-direct {v1, v2}, Lcom/htc/reportagent/budget/network/AllNetwork;-><init>(Lcom/htc/reportagent/budget/BudgetPreference;)V

    iput-object v1, p0, Lcom/htc/reportagent/budget/BudgetManager;->mTotalNetwork:Lcom/htc/reportagent/budget/network/Network;

    .line 64
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.reportagent.action.BUDGET_ALARM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/reportagent/budget/BudgetManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/htc/reportagent/ReportService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 66
    iget-object v1, p0, Lcom/htc/reportagent/budget/BudgetManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x1000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/reportagent/budget/BudgetManager;->mAlarmIntent:Landroid/app/PendingIntent;

    .line 67
    return-void
.end method

.method private getBudgetPeriod()J
    .locals 11

    .prologue
    .line 310
    invoke-static {}, Lcom/htc/reportagent/ReportUPolicy;->getInstance()Lcom/htc/utils/ulog/UPolicy;

    move-result-object v6

    .line 311
    .local v6, policy:Lcom/htc/utils/ulog/UPolicy;
    const-string v7, "budget"

    const-string v8, "period"

    invoke-virtual {v6, v7, v8}, Lcom/htc/utils/ulog/UPolicy;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 312
    .local v3, periodStr:Ljava/lang/String;
    const-wide/16 v1, -0x1

    .line 314
    .local v1, period:J
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 316
    :try_start_0
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v7

    const-wide/32 v9, 0x36ee80

    mul-long v4, v7, v9

    .line 320
    .local v4, periodValue:J
    const-wide/16 v7, -0x1

    cmp-long v7, v4, v7

    if-gez v7, :cond_1

    const-wide/32 v1, 0x7fffffff

    .line 327
    .end local v4           #periodValue:J
    :cond_0
    :goto_0
    return-wide v1

    .restart local v4       #periodValue:J
    :cond_1
    move-wide v1, v4

    .line 320
    goto :goto_0

    .line 321
    .end local v4           #periodValue:J
    :catch_0
    move-exception v0

    .line 322
    .local v0, e:Ljava/lang/Exception;
    sget-object v7, Lcom/htc/reportagent/budget/BudgetManager;->TAG:Ljava/lang/String;

    const-string v8, "Exception happen during paring updateFrequency"

    invoke-static {v7, v8}, Lcom/htc/reportagent/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getPolicyLongValue(Ljava/lang/String;Ljava/lang/String;J)J
    .locals 9
    .parameter "keyPrefix"
    .parameter "keySuffix"
    .parameter "defaultValue"

    .prologue
    .line 181
    move-wide v3, p3

    .line 182
    .local v3, value:J
    const-string v1, ""

    .line 183
    .local v1, key:Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 184
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 186
    :cond_1
    iget-object v5, p0, Lcom/htc/reportagent/budget/BudgetManager;->mPolicy:Lcom/htc/utils/ulog/UPolicy;

    const-string v6, "budget"

    invoke-virtual {v5, v6, v1}, Lcom/htc/utils/ulog/UPolicy;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, str:Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    .line 189
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 196
    :cond_2
    :goto_0
    return-wide v3

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, e:Ljava/lang/Exception;
    sget-object v5, Lcom/htc/reportagent/budget/BudgetManager;->TAG:Ljava/lang/String;

    const-string v6, "_getPolicyLongValue()"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exception catched during transfer "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " from string to int"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/htc/reportagent/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private isAvailable(Lcom/htc/reportagent/budget/BudgetManager$NetworkType;JJ)Z
    .locals 8
    .parameter "type"
    .parameter "expectedDLSize"
    .parameter "expectedULSize"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/htc/reportagent/budget/BudgetManager;->mMobileNetwork:Lcom/htc/reportagent/budget/network/Network;

    invoke-virtual {v0}, Lcom/htc/reportagent/budget/network/Network;->systemTrafficStatsUpdated()V

    .line 125
    iget-object v0, p0, Lcom/htc/reportagent/budget/BudgetManager;->mOtherNetwork:Lcom/htc/reportagent/budget/network/Network;

    invoke-virtual {v0}, Lcom/htc/reportagent/budget/network/Network;->systemTrafficStatsUpdated()V

    .line 126
    iget-object v0, p0, Lcom/htc/reportagent/budget/BudgetManager;->mTotalNetwork:Lcom/htc/reportagent/budget/network/Network;

    invoke-virtual {v0}, Lcom/htc/reportagent/budget/network/Network;->systemTrafficStatsUpdated()V

    .line 127
    iget-object v0, p0, Lcom/htc/reportagent/budget/BudgetManager;->mPref:Lcom/htc/reportagent/budget/BudgetPreference;

    invoke-virtual {v0}, Lcom/htc/reportagent/budget/BudgetPreference;->flush()V

    .line 129
    const/4 v7, 0x1

    .line 131
    .local v7, result:Z
    sget-object v0, Lcom/htc/reportagent/budget/BudgetManager$NetworkType;->TYPE_MOBILE:Lcom/htc/reportagent/budget/BudgetManager$NetworkType;

    if-ne v0, p1, :cond_0

    .line 132
    const-string v1, "mobile_"

    iget-object v2, p0, Lcom/htc/reportagent/budget/BudgetManager;->mMobileNetwork:Lcom/htc/reportagent/budget/network/Network;

    move-object v0, p0

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/htc/reportagent/budget/BudgetManager;->isSpecficNetworkAvailable(Ljava/lang/String;Lcom/htc/reportagent/budget/network/Network;JJ)Z

    move-result v7

    .line 136
    :goto_0
    const-string v1, "all_"

    iget-object v2, p0, Lcom/htc/reportagent/budget/BudgetManager;->mTotalNetwork:Lcom/htc/reportagent/budget/network/Network;

    move-object v0, p0

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/htc/reportagent/budget/BudgetManager;->isSpecficNetworkAvailable(Ljava/lang/String;Lcom/htc/reportagent/budget/network/Network;JJ)Z

    move-result v0

    and-int/2addr v7, v0

    .line 140
    return v7

    .line 134
    :cond_0
    const-string v1, "other_"

    iget-object v2, p0, Lcom/htc/reportagent/budget/BudgetManager;->mOtherNetwork:Lcom/htc/reportagent/budget/network/Network;

    move-object v0, p0

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/htc/reportagent/budget/BudgetManager;->isSpecficNetworkAvailable(Ljava/lang/String;Lcom/htc/reportagent/budget/network/Network;JJ)Z

    move-result v7

    goto :goto_0
.end method

.method private isSpecficNetworkAvailable(Ljava/lang/String;Lcom/htc/reportagent/budget/network/Network;JJ)Z
    .locals 14
    .parameter "keyPrefix"
    .parameter "network"
    .parameter "expectedDLSize"
    .parameter "expectedULSize"

    .prologue
    .line 146
    const/4 v0, 0x0

    const-string v3, "period"

    const-wide/16 v7, -0x1

    invoke-direct {p0, v0, v3, v7, v8}, Lcom/htc/reportagent/budget/BudgetManager;->getPolicyLongValue(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v11

    .line 147
    .local v11, period:J
    const-wide/16 v3, 0x0

    cmp-long v0, v3, v11

    if-lez v0, :cond_0

    .line 149
    const/4 v0, 0x1

    .line 175
    :goto_0
    return v0

    .line 152
    :cond_0
    const-string v0, "total"

    const-wide/16 v3, -0x1

    invoke-direct {p0, p1, v0, v3, v4}, Lcom/htc/reportagent/budget/BudgetManager;->getPolicyLongValue(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v1

    .line 153
    .local v1, totalLimit:J
    const-string v0, "UL"

    const-wide/16 v3, -0x1

    invoke-direct {p0, p1, v0, v3, v4}, Lcom/htc/reportagent/budget/BudgetManager;->getPolicyLongValue(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v9

    .line 154
    .local v9, ULLimit:J
    const-string v0, "DL"

    const-wide/16 v3, -0x1

    invoke-direct {p0, p1, v0, v3, v4}, Lcom/htc/reportagent/budget/BudgetManager;->getPolicyLongValue(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v5

    .line 156
    .local v5, DLLimit:J
    const-wide/16 v3, 0x0

    cmp-long v0, v11, v3

    if-nez v0, :cond_1

    const-wide/16 v1, -0x1

    .line 157
    :cond_1
    const-wide/16 v3, 0x0

    cmp-long v0, v11, v3

    if-nez v0, :cond_2

    const-wide/16 v5, -0x1

    .line 159
    :cond_2
    iget-object v0, p0, Lcom/htc/reportagent/budget/BudgetManager;->mPolicy:Lcom/htc/utils/ulog/UPolicy;

    const-string v3, "budget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "calc_unit"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/htc/utils/ulog/UPolicy;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 160
    .local v13, str:Ljava/lang/String;
    if-eqz v13, :cond_3

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 161
    :cond_3
    const-string v13, "1"

    .line 163
    :cond_4
    const-string v0, "2"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object/from16 v0, p2

    move-wide/from16 v3, p3

    move-wide/from16 v7, p5

    .line 164
    invoke-virtual/range {v0 .. v10}, Lcom/htc/reportagent/budget/network/Network;->isAvailableByPercentage(JJJJJ)Z

    move-result v0

    goto :goto_0

    .line 171
    :cond_5
    const-wide/16 v3, -0x1

    cmp-long v0, v3, v1

    if-eqz v0, :cond_6

    const-wide/32 v3, 0x100000

    mul-long/2addr v1, v3

    .line 172
    :cond_6
    const-wide/16 v3, -0x1

    cmp-long v0, v3, v9

    if-eqz v0, :cond_7

    const-wide/32 v3, 0x100000

    mul-long/2addr v9, v3

    .line 173
    :cond_7
    const-wide/16 v3, -0x1

    cmp-long v0, v3, v5

    if-eqz v0, :cond_8

    const-wide/32 v3, 0x100000

    mul-long/2addr v5, v3

    :cond_8
    move-object/from16 v0, p2

    move-wide/from16 v3, p3

    move-wide/from16 v7, p5

    .line 175
    invoke-virtual/range {v0 .. v10}, Lcom/htc/reportagent/budget/network/Network;->isAvailableByBytes(JJJJJ)Z

    move-result v0

    goto/16 :goto_0
.end method

.method private onAlarmWakeup()V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/htc/reportagent/budget/BudgetManager;->mMobileNetwork:Lcom/htc/reportagent/budget/network/Network;

    invoke-virtual {v0}, Lcom/htc/reportagent/budget/network/Network;->reset()V

    .line 270
    iget-object v0, p0, Lcom/htc/reportagent/budget/BudgetManager;->mOtherNetwork:Lcom/htc/reportagent/budget/network/Network;

    invoke-virtual {v0}, Lcom/htc/reportagent/budget/network/Network;->reset()V

    .line 271
    iget-object v0, p0, Lcom/htc/reportagent/budget/BudgetManager;->mTotalNetwork:Lcom/htc/reportagent/budget/network/Network;

    invoke-virtual {v0}, Lcom/htc/reportagent/budget/network/Network;->reset()V

    .line 272
    iget-object v0, p0, Lcom/htc/reportagent/budget/BudgetManager;->mPref:Lcom/htc/reportagent/budget/BudgetPreference;

    invoke-virtual {v0}, Lcom/htc/reportagent/budget/BudgetPreference;->flush()V

    .line 274
    invoke-direct {p0}, Lcom/htc/reportagent/budget/BudgetManager;->resetAlarm()V

    .line 275
    return-void
.end method

.method private onBootComplete()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/htc/reportagent/budget/BudgetManager;->mMobileNetwork:Lcom/htc/reportagent/budget/network/Network;

    invoke-virtual {v0}, Lcom/htc/reportagent/budget/network/Network;->systemRebooted()V

    .line 233
    iget-object v0, p0, Lcom/htc/reportagent/budget/BudgetManager;->mOtherNetwork:Lcom/htc/reportagent/budget/network/Network;

    invoke-virtual {v0}, Lcom/htc/reportagent/budget/network/Network;->systemRebooted()V

    .line 234
    iget-object v0, p0, Lcom/htc/reportagent/budget/BudgetManager;->mTotalNetwork:Lcom/htc/reportagent/budget/network/Network;

    invoke-virtual {v0}, Lcom/htc/reportagent/budget/network/Network;->systemRebooted()V

    .line 235
    iget-object v0, p0, Lcom/htc/reportagent/budget/BudgetManager;->mPref:Lcom/htc/reportagent/budget/BudgetPreference;

    invoke-virtual {v0}, Lcom/htc/reportagent/budget/BudgetPreference;->flush()V

    .line 237
    iget-object v0, p0, Lcom/htc/reportagent/budget/BudgetManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/reportagent/budget/BudgetPreference;->getAlarmBaseline(Landroid/content/Context;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/htc/reportagent/budget/BudgetManager;->resetAlarm(J)V

    .line 238
    return-void
.end method

.method private onNewPolicy()V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/htc/reportagent/budget/BudgetManager;->mMobileNetwork:Lcom/htc/reportagent/budget/network/Network;

    invoke-virtual {v0}, Lcom/htc/reportagent/budget/network/Network;->reset()V

    .line 288
    iget-object v0, p0, Lcom/htc/reportagent/budget/BudgetManager;->mOtherNetwork:Lcom/htc/reportagent/budget/network/Network;

    invoke-virtual {v0}, Lcom/htc/reportagent/budget/network/Network;->reset()V

    .line 289
    iget-object v0, p0, Lcom/htc/reportagent/budget/BudgetManager;->mTotalNetwork:Lcom/htc/reportagent/budget/network/Network;

    invoke-virtual {v0}, Lcom/htc/reportagent/budget/network/Network;->reset()V

    .line 290
    iget-object v0, p0, Lcom/htc/reportagent/budget/BudgetManager;->mPref:Lcom/htc/reportagent/budget/BudgetPreference;

    invoke-virtual {v0}, Lcom/htc/reportagent/budget/BudgetPreference;->flush()V

    .line 292
    invoke-direct {p0}, Lcom/htc/reportagent/budget/BudgetManager;->resetAlarm()V

    .line 293
    return-void
.end method

.method private onSystemTrafficUpdated()V
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/htc/reportagent/budget/BudgetManager;->mMobileNetwork:Lcom/htc/reportagent/budget/network/Network;

    invoke-virtual {v0}, Lcom/htc/reportagent/budget/network/Network;->systemTrafficStatsUpdated()V

    .line 280
    iget-object v0, p0, Lcom/htc/reportagent/budget/BudgetManager;->mOtherNetwork:Lcom/htc/reportagent/budget/network/Network;

    invoke-virtual {v0}, Lcom/htc/reportagent/budget/network/Network;->systemTrafficStatsUpdated()V

    .line 281
    iget-object v0, p0, Lcom/htc/reportagent/budget/BudgetManager;->mTotalNetwork:Lcom/htc/reportagent/budget/network/Network;

    invoke-virtual {v0}, Lcom/htc/reportagent/budget/network/Network;->systemTrafficStatsUpdated()V

    .line 282
    iget-object v0, p0, Lcom/htc/reportagent/budget/BudgetManager;->mPref:Lcom/htc/reportagent/budget/BudgetPreference;

    invoke-virtual {v0}, Lcom/htc/reportagent/budget/BudgetPreference;->flush()V

    .line 283
    return-void
.end method

.method private resetAlarm()V
    .locals 2

    .prologue
    .line 242
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/htc/reportagent/budget/BudgetManager;->resetAlarm(J)V

    .line 243
    return-void
.end method

.method private resetAlarm(J)V
    .locals 7
    .parameter "timeBase"

    .prologue
    .line 247
    invoke-direct {p0}, Lcom/htc/reportagent/budget/BudgetManager;->getBudgetPeriod()J

    move-result-wide v1

    .line 249
    .local v1, period:J
    const-wide/16 v3, 0x0

    cmp-long v3, v3, p1

    if-lez v3, :cond_0

    .line 250
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 253
    :cond_0
    const-wide/32 v3, 0xea60

    cmp-long v3, v3, v1

    if-ltz v3, :cond_1

    .line 265
    :goto_0
    return-void

    .line 258
    :cond_1
    iget-object v3, p0, Lcom/htc/reportagent/budget/BudgetManager;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 259
    .local v0, am:Landroid/app/AlarmManager;
    iget-object v3, p0, Lcom/htc/reportagent/budget/BudgetManager;->mAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 260
    const/4 v3, 0x1

    add-long v4, p1, v1

    iget-object v6, p0, Lcom/htc/reportagent/budget/BudgetManager;->mAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 264
    iget-object v3, p0, Lcom/htc/reportagent/budget/BudgetManager;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, p2}, Lcom/htc/reportagent/budget/BudgetPreference;->setAlarmBaseline(Landroid/content/Context;J)V

    goto :goto_0
.end method

.method private updateAppUsage(Lcom/htc/reportagent/budget/BudgetManager$NetworkType;JJ)V
    .locals 1
    .parameter "type"
    .parameter "DLSize"
    .parameter "ULSize"

    .prologue
    .line 76
    sget-object v0, Lcom/htc/reportagent/budget/BudgetManager$NetworkType;->TYPE_NONE:Lcom/htc/reportagent/budget/BudgetManager$NetworkType;

    if-ne v0, p1, :cond_0

    .line 90
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/htc/reportagent/budget/BudgetManager;->mTotalNetwork:Lcom/htc/reportagent/budget/network/Network;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/htc/reportagent/budget/network/Network;->appUsageUpdated(JJ)V

    .line 79
    sget-object v0, Lcom/htc/reportagent/budget/BudgetManager$NetworkType;->TYPE_MOBILE:Lcom/htc/reportagent/budget/BudgetManager$NetworkType;

    if-ne v0, p1, :cond_1

    .line 80
    iget-object v0, p0, Lcom/htc/reportagent/budget/BudgetManager;->mMobileNetwork:Lcom/htc/reportagent/budget/network/Network;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/htc/reportagent/budget/network/Network;->appUsageUpdated(JJ)V

    .line 86
    :goto_1
    iget-object v0, p0, Lcom/htc/reportagent/budget/BudgetManager;->mMobileNetwork:Lcom/htc/reportagent/budget/network/Network;

    invoke-virtual {v0}, Lcom/htc/reportagent/budget/network/Network;->systemTrafficStatsUpdated()V

    .line 87
    iget-object v0, p0, Lcom/htc/reportagent/budget/BudgetManager;->mOtherNetwork:Lcom/htc/reportagent/budget/network/Network;

    invoke-virtual {v0}, Lcom/htc/reportagent/budget/network/Network;->systemTrafficStatsUpdated()V

    .line 88
    iget-object v0, p0, Lcom/htc/reportagent/budget/BudgetManager;->mTotalNetwork:Lcom/htc/reportagent/budget/network/Network;

    invoke-virtual {v0}, Lcom/htc/reportagent/budget/network/Network;->systemTrafficStatsUpdated()V

    .line 89
    iget-object v0, p0, Lcom/htc/reportagent/budget/BudgetManager;->mPref:Lcom/htc/reportagent/budget/BudgetPreference;

    invoke-virtual {v0}, Lcom/htc/reportagent/budget/BudgetPreference;->flush()V

    goto :goto_0

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/htc/reportagent/budget/BudgetManager;->mOtherNetwork:Lcom/htc/reportagent/budget/network/Network;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/htc/reportagent/budget/network/Network;->appUsageUpdated(JJ)V

    goto :goto_1
.end method


# virtual methods
.method public getCurrentNetworkType()Lcom/htc/reportagent/budget/BudgetManager$NetworkType;
    .locals 2

    .prologue
    .line 297
    iget-object v1, p0, Lcom/htc/reportagent/budget/BudgetManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/reportagent/util/Utils;->getCurrentNetworkType(Landroid/content/Context;)I

    move-result v0

    .line 299
    .local v0, networkType:I
    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    .line 300
    sget-object v1, Lcom/htc/reportagent/budget/BudgetManager$NetworkType;->TYPE_NONE:Lcom/htc/reportagent/budget/BudgetManager$NetworkType;

    .line 305
    :goto_0
    return-object v1

    .line 302
    :cond_0
    if-nez v0, :cond_1

    .line 303
    sget-object v1, Lcom/htc/reportagent/budget/BudgetManager$NetworkType;->TYPE_MOBILE:Lcom/htc/reportagent/budget/BudgetManager$NetworkType;

    goto :goto_0

    .line 305
    :cond_1
    sget-object v1, Lcom/htc/reportagent/budget/BudgetManager$NetworkType;->TYPE_OTHER:Lcom/htc/reportagent/budget/BudgetManager$NetworkType;

    goto :goto_0
.end method

.method public isAvailableByCurrentNetwork(JJ)Z
    .locals 6
    .parameter "expectedDLSize"
    .parameter "expectedULSize"

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/htc/reportagent/budget/BudgetManager;->getCurrentNetworkType()Lcom/htc/reportagent/budget/BudgetManager$NetworkType;

    move-result-object v1

    .local v1, type:Lcom/htc/reportagent/budget/BudgetManager$NetworkType;
    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    .line 98
    invoke-direct/range {v0 .. v5}, Lcom/htc/reportagent/budget/BudgetManager;->isAvailable(Lcom/htc/reportagent/budget/BudgetManager$NetworkType;JJ)Z

    move-result v0

    return v0
.end method

.method public isAvailableByNoncurrentNetwork(JJ)Z
    .locals 8
    .parameter "expectedDLSize"
    .parameter "expectedULSize"

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/htc/reportagent/budget/BudgetManager;->getCurrentNetworkType()Lcom/htc/reportagent/budget/BudgetManager$NetworkType;

    move-result-object v7

    .line 105
    .local v7, type:Lcom/htc/reportagent/budget/BudgetManager$NetworkType;
    sget-object v0, Lcom/htc/reportagent/budget/BudgetManager$NetworkType;->TYPE_NONE:Lcom/htc/reportagent/budget/BudgetManager$NetworkType;

    if-ne v0, v7, :cond_0

    .line 106
    sget-object v1, Lcom/htc/reportagent/budget/BudgetManager$NetworkType;->TYPE_MOBILE:Lcom/htc/reportagent/budget/BudgetManager$NetworkType;

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/htc/reportagent/budget/BudgetManager;->isAvailable(Lcom/htc/reportagent/budget/BudgetManager$NetworkType;JJ)Z

    move-result v6

    .line 107
    .local v6, result:Z
    sget-object v1, Lcom/htc/reportagent/budget/BudgetManager$NetworkType;->TYPE_OTHER:Lcom/htc/reportagent/budget/BudgetManager$NetworkType;

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/htc/reportagent/budget/BudgetManager;->isAvailable(Lcom/htc/reportagent/budget/BudgetManager$NetworkType;JJ)Z

    move-result v0

    or-int/2addr v6, v0

    move-object v1, v7

    .line 118
    .end local v6           #result:Z
    .end local v7           #type:Lcom/htc/reportagent/budget/BudgetManager$NetworkType;
    .local v1, type:Lcom/htc/reportagent/budget/BudgetManager$NetworkType;
    :goto_0
    return v6

    .line 111
    .end local v1           #type:Lcom/htc/reportagent/budget/BudgetManager$NetworkType;
    .restart local v7       #type:Lcom/htc/reportagent/budget/BudgetManager$NetworkType;
    :cond_0
    sget-object v0, Lcom/htc/reportagent/budget/BudgetManager$NetworkType;->TYPE_MOBILE:Lcom/htc/reportagent/budget/BudgetManager$NetworkType;

    if-ne v0, v7, :cond_1

    .line 112
    sget-object v1, Lcom/htc/reportagent/budget/BudgetManager$NetworkType;->TYPE_OTHER:Lcom/htc/reportagent/budget/BudgetManager$NetworkType;

    .end local v7           #type:Lcom/htc/reportagent/budget/BudgetManager$NetworkType;
    .restart local v1       #type:Lcom/htc/reportagent/budget/BudgetManager$NetworkType;
    :goto_1
    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    .line 118
    invoke-direct/range {v0 .. v5}, Lcom/htc/reportagent/budget/BudgetManager;->isAvailable(Lcom/htc/reportagent/budget/BudgetManager$NetworkType;JJ)Z

    move-result v6

    goto :goto_0

    .line 114
    .end local v1           #type:Lcom/htc/reportagent/budget/BudgetManager$NetworkType;
    .restart local v7       #type:Lcom/htc/reportagent/budget/BudgetManager$NetworkType;
    :cond_1
    sget-object v1, Lcom/htc/reportagent/budget/BudgetManager$NetworkType;->TYPE_MOBILE:Lcom/htc/reportagent/budget/BudgetManager$NetworkType;

    .end local v7           #type:Lcom/htc/reportagent/budget/BudgetManager$NetworkType;
    .restart local v1       #type:Lcom/htc/reportagent/budget/BudgetManager$NetworkType;
    goto :goto_1
.end method

.method public onEvent(Lcom/htc/reportagent/budget/BudgetManager$Event;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 201
    sget-object v0, Lcom/htc/reportagent/budget/BudgetManager$1;->$SwitchMap$com$htc$reportagent$budget$BudgetManager$Event:[I

    invoke-virtual {p1}, Lcom/htc/reportagent/budget/BudgetManager$Event;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 228
    :goto_0
    :pswitch_0
    return-void

    .line 204
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/reportagent/budget/BudgetManager;->onBootComplete()V

    goto :goto_0

    .line 209
    :pswitch_2
    invoke-direct {p0}, Lcom/htc/reportagent/budget/BudgetManager;->onNewPolicy()V

    goto :goto_0

    .line 219
    :pswitch_3
    invoke-direct {p0}, Lcom/htc/reportagent/budget/BudgetManager;->onAlarmWakeup()V

    goto :goto_0

    .line 224
    :pswitch_4
    invoke-direct {p0}, Lcom/htc/reportagent/budget/BudgetManager;->onSystemTrafficUpdated()V

    goto :goto_0

    .line 201
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public updateAppUsage(JJ)V
    .locals 6
    .parameter "DLSize"
    .parameter "ULSize"

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/htc/reportagent/budget/BudgetManager;->getCurrentNetworkType()Lcom/htc/reportagent/budget/BudgetManager$NetworkType;

    move-result-object v1

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/htc/reportagent/budget/BudgetManager;->updateAppUsage(Lcom/htc/reportagent/budget/BudgetManager$NetworkType;JJ)V

    .line 72
    return-void
.end method
