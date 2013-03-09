.class public Lcom/htc/reportagent/update/UpdateManager;
.super Ljava/lang/Object;
.source "UpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/reportagent/update/UpdateManager$1;,
        Lcom/htc/reportagent/update/UpdateManager$DownloadResult;,
        Lcom/htc/reportagent/update/UpdateManager$Event;
    }
.end annotation


# static fields
.field public static final STATUS_ENABLE:I = 0x2

.field public static final STATUS_OOBE:I = 0x1

.field public static final STATUS_WAIT:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field private static final _DEBUG:Z


# instance fields
.field private mAlarmIntent:Landroid/app/PendingIntent;

.field private mBudgetManager:Lcom/htc/reportagent/budget/BudgetManager;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/htc/reportagent/update/UpdateManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/reportagent/update/UpdateManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/reportagent/budget/BudgetManager;)V
    .locals 4
    .parameter "context"
    .parameter "budgetManager"

    .prologue
    .line 68
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/reportagent/update/UpdateManager;->mAlarmIntent:Landroid/app/PendingIntent;

    .line 69
    iput-object p1, p0, Lcom/htc/reportagent/update/UpdateManager;->mContext:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lcom/htc/reportagent/update/UpdateManager;->mBudgetManager:Lcom/htc/reportagent/budget/BudgetManager;

    .line 72
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.reportagent.action.UPDATE_ALARM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/reportagent/update/UpdateManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/htc/reportagent/ReportService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 74
    iget-object v1, p0, Lcom/htc/reportagent/update/UpdateManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x1000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/reportagent/update/UpdateManager;->mAlarmIntent:Landroid/app/PendingIntent;

    .line 75
    return-void
.end method

.method private onAlarmWakeup()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 210
    iget-object v2, p0, Lcom/htc/reportagent/update/UpdateManager;->mContext:Landroid/content/Context;

    const-wide/16 v3, -0x1

    invoke-static {v2, v3, v4}, Lcom/htc/reportagent/update/UpdatePreference;->setAlarmBaseline(Landroid/content/Context;J)V

    .line 212
    iget-object v2, p0, Lcom/htc/reportagent/update/UpdateManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/reportagent/update/UpdatePreference;->getUpdateManagerStatus(Landroid/content/Context;)I

    move-result v1

    .line 213
    .local v1, status:I
    packed-switch v1, :pswitch_data_0

    .line 243
    sget-object v2, Lcom/htc/reportagent/update/UpdateManager;->TAG:Ljava/lang/String;

    const-string v3, "onAlarmWakeup()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wrong status "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/htc/reportagent/update/UpdateManager;->status2String(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/htc/reportagent/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 216
    :pswitch_0
    iget-object v2, p0, Lcom/htc/reportagent/update/UpdateManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/reportagent/util/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 217
    iget-object v2, p0, Lcom/htc/reportagent/update/UpdateManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v5}, Lcom/htc/reportagent/update/UpdatePreference;->setUpdateManagerStatus(Landroid/content/Context;I)V

    goto :goto_0

    .line 219
    :cond_1
    invoke-direct {p0}, Lcom/htc/reportagent/update/UpdateManager;->updateServer()Lcom/htc/reportagent/update/UpdateManager$DownloadResult;

    move-result-object v0

    .line 220
    .local v0, result:Lcom/htc/reportagent/update/UpdateManager$DownloadResult;
    sget-object v2, Lcom/htc/reportagent/update/UpdateManager$DownloadResult;->FAIL_CURRENT_NETWORK_NO_BUDGET:Lcom/htc/reportagent/update/UpdateManager$DownloadResult;

    if-ne v2, v0, :cond_2

    .line 221
    iget-object v2, p0, Lcom/htc/reportagent/update/UpdateManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v5}, Lcom/htc/reportagent/update/UpdatePreference;->setUpdateManagerStatus(Landroid/content/Context;I)V

    goto :goto_0

    .line 223
    :cond_2
    invoke-direct {p0}, Lcom/htc/reportagent/update/UpdateManager;->resetAlarm()V

    goto :goto_0

    .line 230
    .end local v0           #result:Lcom/htc/reportagent/update/UpdateManager$DownloadResult;
    :pswitch_1
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/reportagent/update/UpdateManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/reportagent/util/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v3

    if-ne v2, v3, :cond_0

    .line 231
    iget-object v2, p0, Lcom/htc/reportagent/update/UpdateManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/htc/reportagent/update/UpdatePreference;->setUpdateManagerStatus(Landroid/content/Context;I)V

    .line 232
    invoke-direct {p0}, Lcom/htc/reportagent/update/UpdateManager;->updateServer()Lcom/htc/reportagent/update/UpdateManager$DownloadResult;

    move-result-object v0

    .line 233
    .restart local v0       #result:Lcom/htc/reportagent/update/UpdateManager$DownloadResult;
    sget-object v2, Lcom/htc/reportagent/update/UpdateManager$DownloadResult;->FAIL_CURRENT_NETWORK_NO_BUDGET:Lcom/htc/reportagent/update/UpdateManager$DownloadResult;

    if-ne v2, v0, :cond_3

    .line 234
    iget-object v2, p0, Lcom/htc/reportagent/update/UpdateManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v5}, Lcom/htc/reportagent/update/UpdatePreference;->setUpdateManagerStatus(Landroid/content/Context;I)V

    goto :goto_0

    .line 236
    :cond_3
    invoke-direct {p0}, Lcom/htc/reportagent/update/UpdateManager;->resetAlarm()V

    goto :goto_0

    .line 213
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onBootComplete()V
    .locals 7

    .prologue
    .line 109
    iget-object v3, p0, Lcom/htc/reportagent/update/UpdateManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/reportagent/update/UpdatePreference;->getUpdateManagerStatus(Landroid/content/Context;)I

    move-result v2

    .line 110
    .local v2, status:I
    packed-switch v2, :pswitch_data_0

    .line 129
    sget-object v3, Lcom/htc/reportagent/update/UpdateManager;->TAG:Ljava/lang/String;

    const-string v4, "onOOBEFinish()"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wrong status "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Lcom/htc/reportagent/update/UpdateManager;->status2String(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/htc/reportagent/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :goto_0
    :pswitch_0
    return-void

    .line 116
    :pswitch_1
    iget-object v3, p0, Lcom/htc/reportagent/update/UpdateManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/reportagent/update/UpdatePreference;->getAlarmBaseline(Landroid/content/Context;)J

    move-result-wide v0

    .line 117
    .local v0, alarmBaseline:J
    const-wide/16 v3, 0x0

    cmp-long v3, v3, v0

    if-ltz v3, :cond_0

    .line 118
    invoke-direct {p0}, Lcom/htc/reportagent/update/UpdateManager;->resetAlarm()V

    goto :goto_0

    .line 120
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/htc/reportagent/update/UpdateManager;->resetAlarm(J)V

    goto :goto_0

    .line 110
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onNetworkChange()V
    .locals 6

    .prologue
    .line 184
    iget-object v2, p0, Lcom/htc/reportagent/update/UpdateManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/reportagent/update/UpdatePreference;->getUpdateManagerStatus(Landroid/content/Context;)I

    move-result v1

    .line 185
    .local v1, status:I
    packed-switch v1, :pswitch_data_0

    .line 205
    sget-object v2, Lcom/htc/reportagent/update/UpdateManager;->TAG:Ljava/lang/String;

    const-string v3, "onNetworkChange()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wrong status "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/htc/reportagent/update/UpdateManager;->status2String(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/htc/reportagent/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 192
    :pswitch_1
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/reportagent/update/UpdateManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/reportagent/util/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v3

    if-ne v2, v3, :cond_0

    .line 193
    iget-object v2, p0, Lcom/htc/reportagent/update/UpdateManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/htc/reportagent/update/UpdatePreference;->setUpdateManagerStatus(Landroid/content/Context;I)V

    .line 194
    invoke-direct {p0}, Lcom/htc/reportagent/update/UpdateManager;->updateServer()Lcom/htc/reportagent/update/UpdateManager$DownloadResult;

    move-result-object v0

    .line 195
    .local v0, result:Lcom/htc/reportagent/update/UpdateManager$DownloadResult;
    sget-object v2, Lcom/htc/reportagent/update/UpdateManager$DownloadResult;->FAIL_CURRENT_NETWORK_NO_BUDGET:Lcom/htc/reportagent/update/UpdateManager$DownloadResult;

    if-ne v2, v0, :cond_1

    .line 196
    iget-object v2, p0, Lcom/htc/reportagent/update/UpdateManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/htc/reportagent/update/UpdatePreference;->setUpdateManagerStatus(Landroid/content/Context;I)V

    goto :goto_0

    .line 198
    :cond_1
    invoke-direct {p0}, Lcom/htc/reportagent/update/UpdateManager;->resetAlarm()V

    goto :goto_0

    .line 185
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onOOBEFinish()V
    .locals 9

    .prologue
    const/4 v7, 0x3

    .line 156
    iget-object v5, p0, Lcom/htc/reportagent/update/UpdateManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/htc/reportagent/update/UpdatePreference;->getUpdateManagerStatus(Landroid/content/Context;)I

    move-result v4

    .line 158
    .local v4, status:I
    new-instance v0, Lcom/htc/xps/pomelo/log/LogLib;

    iget-object v5, p0, Lcom/htc/reportagent/update/UpdateManager;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-direct {v0, v5, v6}, Lcom/htc/xps/pomelo/log/LogLib;-><init>(Landroid/content/Context;Z)V

    .line 159
    .local v0, logLib:Lcom/htc/xps/pomelo/log/LogLib;
    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/LogLib;->getServerHost()Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, logUrl:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/LogLib;->getPolicyServerHost()Ljava/lang/String;

    move-result-object v2

    .line 162
    .local v2, policyUrl:Ljava/lang/String;
    const/4 v5, 0x1

    if-eq v5, v4, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 164
    :cond_0
    iget-object v5, p0, Lcom/htc/reportagent/update/UpdateManager;->mContext:Landroid/content/Context;

    const/4 v6, 0x2

    invoke-static {v5, v6}, Lcom/htc/reportagent/update/UpdatePreference;->setUpdateManagerStatus(Landroid/content/Context;I)V

    .line 165
    iget-object v5, p0, Lcom/htc/reportagent/update/UpdateManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/htc/reportagent/util/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 166
    iget-object v5, p0, Lcom/htc/reportagent/update/UpdateManager;->mContext:Landroid/content/Context;

    invoke-static {v5, v7}, Lcom/htc/reportagent/update/UpdatePreference;->setUpdateManagerStatus(Landroid/content/Context;I)V

    .line 180
    :goto_0
    return-void

    .line 168
    :cond_1
    invoke-direct {p0}, Lcom/htc/reportagent/update/UpdateManager;->updateServer()Lcom/htc/reportagent/update/UpdateManager$DownloadResult;

    move-result-object v3

    .line 169
    .local v3, result:Lcom/htc/reportagent/update/UpdateManager$DownloadResult;
    sget-object v5, Lcom/htc/reportagent/update/UpdateManager$DownloadResult;->FAIL_CURRENT_NETWORK_NO_BUDGET:Lcom/htc/reportagent/update/UpdateManager$DownloadResult;

    if-ne v5, v3, :cond_2

    .line 170
    iget-object v5, p0, Lcom/htc/reportagent/update/UpdateManager;->mContext:Landroid/content/Context;

    invoke-static {v5, v7}, Lcom/htc/reportagent/update/UpdatePreference;->setUpdateManagerStatus(Landroid/content/Context;I)V

    goto :goto_0

    .line 172
    :cond_2
    invoke-direct {p0}, Lcom/htc/reportagent/update/UpdateManager;->resetAlarm()V

    goto :goto_0

    .line 179
    .end local v3           #result:Lcom/htc/reportagent/update/UpdateManager$DownloadResult;
    :cond_3
    sget-object v5, Lcom/htc/reportagent/update/UpdateManager;->TAG:Ljava/lang/String;

    const-string v6, "onOOBEFinish()"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Wrong status "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4}, Lcom/htc/reportagent/update/UpdateManager;->status2String(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/htc/reportagent/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onTimeSet()V
    .locals 0

    .prologue
    .line 152
    return-void
.end method

.method private resetAlarm()V
    .locals 2

    .prologue
    .line 307
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/htc/reportagent/update/UpdateManager;->resetAlarm(J)V

    .line 308
    return-void
.end method

.method private resetAlarm(J)V
    .locals 7
    .parameter "timeBase"

    .prologue
    .line 312
    iget-object v3, p0, Lcom/htc/reportagent/update/UpdateManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/reportagent/update/UpdatePreference;->getInterval(Landroid/content/Context;)J

    move-result-wide v1

    .line 314
    .local v1, freq:J
    const-wide/32 v3, 0xea60

    cmp-long v3, v3, v1

    if-ltz v3, :cond_0

    .line 326
    :goto_0
    return-void

    .line 319
    :cond_0
    iget-object v3, p0, Lcom/htc/reportagent/update/UpdateManager;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 320
    .local v0, am:Landroid/app/AlarmManager;
    iget-object v3, p0, Lcom/htc/reportagent/update/UpdateManager;->mAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 321
    const/4 v3, 0x1

    add-long v4, p1, v1

    iget-object v6, p0, Lcom/htc/reportagent/update/UpdateManager;->mAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 325
    iget-object v3, p0, Lcom/htc/reportagent/update/UpdateManager;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, p2}, Lcom/htc/reportagent/update/UpdatePreference;->setAlarmBaseline(Landroid/content/Context;J)V

    goto :goto_0
.end method

.method public static status2String(I)Ljava/lang/String;
    .locals 2
    .parameter "status"

    .prologue
    .line 27
    packed-switch p0, :pswitch_data_0

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 28
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":STATUS_OOBE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 29
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":STATUS_ENABLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 30
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":STATUS_WAIT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 27
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateServer()Lcom/htc/reportagent/update/UpdateManager$DownloadResult;
    .locals 13

    .prologue
    const-wide/16 v9, 0x1

    .line 256
    iget-object v8, p0, Lcom/htc/reportagent/update/UpdateManager;->mBudgetManager:Lcom/htc/reportagent/budget/BudgetManager;

    invoke-virtual {v8, v9, v10, v9, v10}, Lcom/htc/reportagent/budget/BudgetManager;->isAvailableByCurrentNetwork(JJ)Z

    move-result v8

    if-nez v8, :cond_1

    .line 257
    iget-object v8, p0, Lcom/htc/reportagent/update/UpdateManager;->mBudgetManager:Lcom/htc/reportagent/budget/BudgetManager;

    invoke-virtual {v8, v9, v10, v9, v10}, Lcom/htc/reportagent/budget/BudgetManager;->isAvailableByNoncurrentNetwork(JJ)Z

    move-result v8

    if-nez v8, :cond_0

    .line 258
    sget-object v8, Lcom/htc/reportagent/update/UpdateManager$DownloadResult;->FAIL_ALL_NO_BUDGET:Lcom/htc/reportagent/update/UpdateManager$DownloadResult;

    .line 301
    :goto_0
    return-object v8

    .line 260
    :cond_0
    sget-object v8, Lcom/htc/reportagent/update/UpdateManager$DownloadResult;->FAIL_CURRENT_NETWORK_NO_BUDGET:Lcom/htc/reportagent/update/UpdateManager$DownloadResult;

    goto :goto_0

    .line 263
    :cond_1
    new-instance v2, Lcom/htc/xps/pomelo/log/LogLib;

    iget-object v8, p0, Lcom/htc/reportagent/update/UpdateManager;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-direct {v2, v8, v9}, Lcom/htc/xps/pomelo/log/LogLib;-><init>(Landroid/content/Context;Z)V

    .line 265
    .local v2, logLib:Lcom/htc/xps/pomelo/log/LogLib;
    const-string v3, "unknown"

    .line 266
    .local v3, operatorName:Ljava/lang/String;
    iget-object v8, p0, Lcom/htc/reportagent/update/UpdateManager;->mContext:Landroid/content/Context;

    const-string v9, "phone"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 267
    .local v7, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v4

    .line 268
    .local v4, phoneType:I
    const/4 v8, 0x1

    if-ne v8, v4, :cond_3

    .line 269
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v3

    .line 270
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_3

    .line 271
    :cond_2
    const-string v3, "unknown"

    .line 275
    :cond_3
    const/4 v0, 0x0

    .line 276
    .local v0, country:Ljava/lang/String;
    invoke-static {}, Lcom/htc/utils/ulog/Util;->isUserRom()Z

    move-result v8

    if-nez v8, :cond_4

    .line 277
    const-string v0, "XX"

    .line 283
    :goto_1
    invoke-static {}, Lcom/htc/reportagent/util/Utils;->getRetryTimes()I

    move-result v6

    .line 284
    .local v6, retryTimes:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-gt v1, v6, :cond_7

    .line 286
    iget-object v8, p0, Lcom/htc/reportagent/update/UpdateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v8, v0, v3}, Lcom/htc/xps/pomelo/log/LogLib;->requestUpdate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/xps/pomelo/log/LogLib$UpdateResponse;

    move-result-object v5

    .line 287
    .local v5, response:Lcom/htc/xps/pomelo/log/LogLib$UpdateResponse;
    iget-object v8, p0, Lcom/htc/reportagent/update/UpdateManager;->mBudgetManager:Lcom/htc/reportagent/budget/BudgetManager;

    invoke-virtual {v2}, Lcom/htc/xps/pomelo/log/LogLib;->getTotalDownloadSize()I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v2}, Lcom/htc/xps/pomelo/log/LogLib;->getTotalUploadSize()I

    move-result v11

    int-to-long v11, v11

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/htc/reportagent/budget/BudgetManager;->updateAppUsage(JJ)V

    .line 289
    if-eqz v5, :cond_6

    const/16 v8, 0xc8

    iget v9, v5, Lcom/htc/xps/pomelo/log/LogLib$UpdateResponse;->statusCode:I

    if-ne v8, v9, :cond_6

    .line 291
    iget-wide v8, v5, Lcom/htc/xps/pomelo/log/LogLib$UpdateResponse;->refreshInterval:J

    const-wide/16 v10, 0x168

    cmp-long v8, v8, v10

    if-ltz v8, :cond_5

    .line 292
    iget-object v8, p0, Lcom/htc/reportagent/update/UpdateManager;->mContext:Landroid/content/Context;

    iget-wide v9, v5, Lcom/htc/xps/pomelo/log/LogLib$UpdateResponse;->refreshInterval:J

    const-wide/16 v11, 0x3e8

    mul-long/2addr v9, v11

    invoke-static {v8, v9, v10}, Lcom/htc/reportagent/update/UpdatePreference;->setInterval(Landroid/content/Context;J)V

    .line 296
    :goto_3
    sget-object v8, Lcom/htc/reportagent/update/UpdateManager$DownloadResult;->SUCC:Lcom/htc/reportagent/update/UpdateManager$DownloadResult;

    goto :goto_0

    .line 279
    .end local v1           #i:I
    .end local v5           #response:Lcom/htc/xps/pomelo/log/LogLib$UpdateResponse;
    .end local v6           #retryTimes:I
    :cond_4
    iget-object v8, p0, Lcom/htc/reportagent/update/UpdateManager;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/htc/reportagent/pbdata/DeviceInfoHelper;->getRegion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 294
    .restart local v1       #i:I
    .restart local v5       #response:Lcom/htc/xps/pomelo/log/LogLib$UpdateResponse;
    .restart local v6       #retryTimes:I
    :cond_5
    sget-object v8, Lcom/htc/reportagent/update/UpdateManager;->TAG:Ljava/lang/String;

    const-string v9, "updateServer()"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "refreshInterval is invalid "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, v5, Lcom/htc/xps/pomelo/log/LogLib$UpdateResponse;->refreshInterval:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/htc/reportagent/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 284
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 301
    .end local v5           #response:Lcom/htc/xps/pomelo/log/LogLib$UpdateResponse;
    :cond_7
    sget-object v8, Lcom/htc/reportagent/update/UpdateManager$DownloadResult;->FAIL_GENERIC:Lcom/htc/reportagent/update/UpdateManager$DownloadResult;

    goto/16 :goto_0
.end method


# virtual methods
.method public onEvent(Lcom/htc/reportagent/update/UpdateManager$Event;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 82
    sget-object v0, Lcom/htc/reportagent/update/UpdateManager$1;->$SwitchMap$com$htc$reportagent$update$UpdateManager$Event:[I

    invoke-virtual {p1}, Lcom/htc/reportagent/update/UpdateManager$Event;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 105
    :goto_0
    return-void

    .line 85
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/reportagent/update/UpdateManager;->onBootComplete()V

    goto :goto_0

    .line 89
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/reportagent/update/UpdateManager;->onTimeSet()V

    goto :goto_0

    .line 93
    :pswitch_2
    invoke-direct {p0}, Lcom/htc/reportagent/update/UpdateManager;->onOOBEFinish()V

    goto :goto_0

    .line 97
    :pswitch_3
    invoke-direct {p0}, Lcom/htc/reportagent/update/UpdateManager;->onNetworkChange()V

    goto :goto_0

    .line 101
    :pswitch_4
    invoke-direct {p0}, Lcom/htc/reportagent/update/UpdateManager;->onAlarmWakeup()V

    goto :goto_0

    .line 82
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
