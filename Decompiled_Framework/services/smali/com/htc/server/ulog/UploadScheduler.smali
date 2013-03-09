.class final Lcom/htc/server/ulog/UploadScheduler;
.super Ljava/lang/Object;
.source "UploadScheduler.java"


# static fields
.field private static final LOGCAT_TAG:Ljava/lang/String; = "UserBehaviorLoggingService"

.field private static final UPLOAD_ACTION:Ljava/lang/String; = "com.htc.USERBEHAVIOR_UPLOAD"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEnableHTCUBLog:Z

.field private mIsUserProfilingSettingEnabled:Z

.field private final mUPolicy:Lcom/htc/utils/ulog/UPolicy;

.field private mUploadInterval:J

.field private mUploadPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/htc/server/ulog/UploadScheduler;->mContext:Landroid/content/Context;

    iput-boolean v3, p0, Lcom/htc/server/ulog/UploadScheduler;->mIsUserProfilingSettingEnabled:Z

    new-instance v1, Lcom/htc/utils/ulog/UPolicy;

    const-string v2, "com.htc.reportagent"

    invoke-direct {v1, v2}, Lcom/htc/utils/ulog/UPolicy;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/server/ulog/UploadScheduler;->mUPolicy:Lcom/htc/utils/ulog/UPolicy;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/htc/server/ulog/UploadScheduler;->mUploadInterval:J

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.USERBEHAVIOR_UPLOAD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/server/ulog/UploadScheduler;->mContext:Landroid/content/Context;

    const/high16 v2, 0x1000

    invoke-static {v1, v3, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/server/ulog/UploadScheduler;->mUploadPendingIntent:Landroid/app/PendingIntent;

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileForceDisableUlog()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v3, p0, Lcom/htc/server/ulog/UploadScheduler;->mEnableHTCUBLog:Z

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/server/ulog/UploadScheduler;->mEnableHTCUBLog:Z

    goto :goto_0
.end method

.method private cancelScheuleUpload()V
    .locals 3

    iget-object v1, p0, Lcom/htc/server/ulog/UploadScheduler;->mUploadPendingIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    const-string v1, "UserBehaviorLoggingService"

    const-string v2, "[cancelScheuleUpload]"

    invoke-static {v1, v2}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/server/ulog/UploadScheduler;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/server/ulog/UploadScheduler;->mUploadPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method private getFirstUploadTime(Z)J
    .locals 14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/32 v0, 0x927c0

    invoke-static {}, Lcom/htc/server/ulog/UserBehaviorPreference;->getInstance()Lcom/htc/server/ulog/UserBehaviorPreference;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/server/ulog/UserBehaviorPreference;->getLastTimeOfUpload()J

    move-result-wide v2

    sub-long v8, v6, v2

    iget-wide v10, p0, Lcom/htc/server/ulog/UploadScheduler;->mUploadInterval:J

    div-long v4, v8, v10

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[getFirstUploadTime] isSIE: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", now: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", lastUpload: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", interval: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, p0, Lcom/htc/server/ulog/UploadScheduler;->mUploadInterval:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", missing upload count: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;)V

    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-gtz v8, :cond_0

    cmp-long v8, v2, v6

    if-lez v8, :cond_1

    :cond_0
    const-wide/32 v8, 0x927c0

    add-long/2addr v8, v6

    :goto_0
    return-wide v8

    :cond_1
    iget-wide v8, p0, Lcom/htc/server/ulog/UploadScheduler;->mUploadInterval:J

    sub-long v10, v6, v2

    iget-wide v12, p0, Lcom/htc/server/ulog/UploadScheduler;->mUploadInterval:J

    rem-long/2addr v10, v12

    sub-long/2addr v8, v10

    add-long/2addr v8, v6

    goto :goto_0
.end method

.method private getUploadLogFreq()I
    .locals 8

    const/16 v1, 0x18

    const/4 v0, 0x6

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/htc/server/ulog/UploadScheduler;->mUPolicy:Lcom/htc/utils/ulog/UPolicy;

    const-string v6, "log"

    const-string v7, "freq"

    invoke-virtual {v5, v6, v7}, Lcom/htc/utils/ulog/UPolicy;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :cond_0
    :goto_0
    if-gtz v3, :cond_1

    const/16 v3, 0x18

    :cond_1
    const/4 v5, 0x6

    if-le v3, v5, :cond_2

    invoke-static {}, Lcom/htc/utils/ulog/Util;->isDebuggingPolicyEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v3, 0x6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getUploadLogFreq] debugging rom without system properties, frequency is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;)V

    :cond_2
    const-string v5, "UserBehaviorLoggingService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getUploadLogFreq] policy freq : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", returned freq : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    mul-int/lit16 v5, v3, 0xe10

    mul-int/lit16 v5, v5, 0x3e8

    return v5

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method private setScheduleUpload(Z)V
    .locals 7

    iget-object v1, p0, Lcom/htc/server/ulog/UploadScheduler;->mUploadPendingIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/server/ulog/UploadScheduler;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-direct {p0, p1}, Lcom/htc/server/ulog/UploadScheduler;->getFirstUploadTime(Z)J

    move-result-wide v2

    const-string v1, "UserBehaviorLoggingService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setScheduleUpload] first upload time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isSIE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    iget-wide v4, p0, Lcom/htc/server/ulog/UploadScheduler;->mUploadInterval:J

    iget-object v6, p0, Lcom/htc/server/ulog/UploadScheduler;->mUploadPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onBootUp(Landroid/content/Intent;)V
    .locals 6

    invoke-static {}, Lcom/htc/server/ulog/UserBehaviorPreference;->getInstance()Lcom/htc/server/ulog/UserBehaviorPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/server/ulog/UserBehaviorPreference;->getLastTimeOfUpload()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    invoke-static {}, Lcom/htc/server/ulog/UserBehaviorPreference;->getInstance()Lcom/htc/server/ulog/UserBehaviorPreference;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/htc/server/ulog/UserBehaviorPreference;->setLastTimeOfUpload(J)V

    :cond_0
    invoke-direct {p0}, Lcom/htc/server/ulog/UploadScheduler;->getUploadLogFreq()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/htc/server/ulog/UploadScheduler;->mUploadInterval:J

    const-string v2, "UserBehaviorLoggingService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onBootUp] upload interval : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/htc/server/ulog/UploadScheduler;->mUploadInterval:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/server/ulog/UploadScheduler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/server/ulog/Utils;->isUserProfilingSettingEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/htc/server/ulog/UploadScheduler;->mEnableHTCUBLog:Z

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/htc/server/ulog/UploadScheduler;->setScheduleUpload(Z)V

    :cond_2
    return-void
.end method

.method public onPolicyProvisioned(Landroid/content/Intent;)V
    .locals 6

    const-string v2, "UserBehaviorLoggingService"

    const-string v3, "[onPolicyProvisioned] begin"

    invoke-static {v2, v3}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/server/ulog/UploadScheduler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/server/ulog/Utils;->isUserProfilingSettingEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/server/ulog/UploadScheduler;->mEnableHTCUBLog:Z

    if-eqz v2, :cond_2

    :cond_0
    const-string v2, "isSIE"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0}, Lcom/htc/server/ulog/UploadScheduler;->getUploadLogFreq()I

    move-result v1

    const-string v2, "UserBehaviorLoggingService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onPolicyProvisioned] oobe is done! isSIE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", upload freq : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    int-to-long v2, v1

    iget-wide v4, p0, Lcom/htc/server/ulog/UploadScheduler;->mUploadInterval:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    :cond_1
    int-to-long v2, v1

    iput-wide v2, p0, Lcom/htc/server/ulog/UploadScheduler;->mUploadInterval:J

    const-string v2, "UserBehaviorLoggingService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onPolicyProvisioned] upload interval : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/htc/server/ulog/UploadScheduler;->mUploadInterval:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/htc/server/ulog/UploadScheduler;->setScheduleUpload(Z)V

    :cond_2
    return-void
.end method

.method public onTellHtcSettingChanged(Landroid/content/Intent;)V
    .locals 3

    iget-boolean v1, p0, Lcom/htc/server/ulog/UploadScheduler;->mEnableHTCUBLog:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/server/ulog/UploadScheduler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/server/ulog/Utils;->isUserProfilingSettingEnabled(Landroid/content/Context;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/htc/server/ulog/UploadScheduler;->mIsUserProfilingSettingEnabled:Z

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[user profiling setting] new value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", old : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/server/ulog/UploadScheduler;->mIsUserProfilingSettingEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/server/ulog/UploadScheduler;->setScheduleUpload(Z)V

    :goto_0
    iput-boolean v0, p0, Lcom/htc/server/ulog/UploadScheduler;->mIsUserProfilingSettingEnabled:Z

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/htc/server/ulog/UploadScheduler;->cancelScheuleUpload()V

    goto :goto_0
.end method

.method public stop()V
    .locals 0

    invoke-direct {p0}, Lcom/htc/server/ulog/UploadScheduler;->cancelScheuleUpload()V

    return-void
.end method
