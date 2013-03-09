.class public Lcom/htc/reportagent/ReportServiceHandler;
.super Landroid/os/Handler;
.source "ReportServiceHandler.java"


# static fields
.field private static final MSG_ID_SHUTDOWN:I = 0x65

.field private static final TAG:Ljava/lang/String; = null

.field private static final TIME_DELAY_SHUTDOWN:I = 0x1388

.field private static final _DEBUG:Z


# instance fields
.field private mBudgetManager:Lcom/htc/reportagent/budget/BudgetManager;

.field private mContext:Landroid/content/Context;

.field private mHtcBugReport:Lcom/htc/BugReport/BugReportService;

.field private mPolicyManager:Lcom/htc/reportagent/policy/PolicyManager;

.field private mService:Landroid/app/Service;

.field private mUpdateManager:Lcom/htc/reportagent/update/UpdateManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/htc/reportagent/ReportServiceHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/reportagent/ReportServiceHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/app/Service;)V
    .locals 1
    .parameter "looper"
    .parameter "service"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 53
    invoke-virtual {p2}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/reportagent/ReportServiceHandler;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/htc/reportagent/ReportServiceHandler;->mService:Landroid/app/Service;

    .line 55
    return-void
.end method

.method private handleConnectionChangeMsgForUpdateAndPolicy()V
    .locals 4

    .prologue
    .line 275
    iget-object v2, p0, Lcom/htc/reportagent/ReportServiceHandler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/reportagent/util/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 278
    new-instance v0, Lcom/htc/xps/pomelo/log/LogLib;

    iget-object v2, p0, Lcom/htc/reportagent/ReportServiceHandler;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/htc/xps/pomelo/log/LogLib;-><init>(Landroid/content/Context;Z)V

    .line 279
    .local v0, logLib:Lcom/htc/xps/pomelo/log/LogLib;
    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/LogLib;->getPolicyServerHost()Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, policyUrl:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 281
    sget-object v2, Lcom/htc/reportagent/update/UpdateManager$Event;->OOBE_FINISH:Lcom/htc/reportagent/update/UpdateManager$Event;

    invoke-direct {p0, v2}, Lcom/htc/reportagent/ReportServiceHandler;->onUpdateEvent(Lcom/htc/reportagent/update/UpdateManager$Event;)V

    .line 284
    :cond_0
    sget-object v2, Lcom/htc/reportagent/update/UpdateManager$Event;->NETWORK_CHANGE:Lcom/htc/reportagent/update/UpdateManager$Event;

    invoke-direct {p0, v2}, Lcom/htc/reportagent/ReportServiceHandler;->onUpdateEvent(Lcom/htc/reportagent/update/UpdateManager$Event;)V

    .line 285
    sget-object v2, Lcom/htc/reportagent/policy/PolicyManager$Event;->NETWORK_CHANGE:Lcom/htc/reportagent/policy/PolicyManager$Event;

    invoke-direct {p0, v2}, Lcom/htc/reportagent/ReportServiceHandler;->onPolicyEvent(Lcom/htc/reportagent/policy/PolicyManager$Event;)V

    .line 287
    .end local v0           #logLib:Lcom/htc/xps/pomelo/log/LogLib;
    .end local v1           #policyUrl:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private isLogLibLogUrlInvalid()Z
    .locals 4

    .prologue
    .line 226
    new-instance v0, Lcom/htc/xps/pomelo/log/LogLib;

    iget-object v2, p0, Lcom/htc/reportagent/ReportServiceHandler;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/htc/xps/pomelo/log/LogLib;-><init>(Landroid/content/Context;Z)V

    .line 227
    .local v0, logLib:Lcom/htc/xps/pomelo/log/LogLib;
    invoke-virtual {v0}, Lcom/htc/xps/pomelo/log/LogLib;->getServerHost()Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, logUrl:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    return v2
.end method

.method private isNetworkAllowed()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 237
    iget-object v5, p0, Lcom/htc/reportagent/ReportServiceHandler;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 238
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 239
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    if-nez v1, :cond_0

    .line 240
    sget-object v4, Lcom/htc/reportagent/ReportServiceHandler;->TAG:Ljava/lang/String;

    const-string v5, "Upload block due to no active network."

    invoke-static {v4, v5}, Lcom/htc/reportagent/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :goto_0
    return v3

    .line 244
    :cond_0
    sget-object v5, Lcom/htc/reportagent/ReportServiceHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getType():"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/reportagent/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 252
    sget-object v4, Lcom/htc/reportagent/ReportServiceHandler;->TAG:Ljava/lang/String;

    const-string v5, "Upload block due to roaming."

    invoke-static {v4, v5}, Lcom/htc/reportagent/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 256
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    const/16 v6, 0xc

    if-ne v5, v6, :cond_2

    .line 257
    sget-object v3, Lcom/htc/reportagent/ReportServiceHandler;->TAG:Ljava/lang/String;

    const-string v5, "Upload by USBNET."

    invoke-static {v3, v5}, Lcom/htc/reportagent/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 258
    goto :goto_0

    .line 262
    :cond_2
    iget-object v5, p0, Lcom/htc/reportagent/ReportServiceHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "htc_error_report_prefer_network"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 263
    .local v2, preferNetwork:I
    sget-object v5, Lcom/htc/reportagent/ReportServiceHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "preferNetwork="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/reportagent/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    if-nez v2, :cond_3

    move v3, v4

    .line 265
    goto :goto_0

    .line 266
    :cond_3
    if-ne v2, v4, :cond_4

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-ne v5, v4, :cond_4

    move v3, v4

    .line 267
    goto :goto_0

    .line 269
    :cond_4
    sget-object v4, Lcom/htc/reportagent/ReportServiceHandler;->TAG:Ljava/lang/String;

    const-string v5, "Upload block due to wifi only."

    invoke-static {v4, v5}, Lcom/htc/reportagent/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onBudgetEvent(Lcom/htc/reportagent/budget/BudgetManager$Event;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/htc/reportagent/ReportServiceHandler;->mBudgetManager:Lcom/htc/reportagent/budget/BudgetManager;

    invoke-virtual {v0, p1}, Lcom/htc/reportagent/budget/BudgetManager;->onEvent(Lcom/htc/reportagent/budget/BudgetManager$Event;)V

    .line 223
    return-void
.end method

.method private onPolicyEvent(Lcom/htc/reportagent/policy/PolicyManager$Event;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/htc/reportagent/ReportServiceHandler;->mPolicyManager:Lcom/htc/reportagent/policy/PolicyManager;

    if-nez v0, :cond_0

    .line 215
    new-instance v0, Lcom/htc/reportagent/policy/PolicyManager;

    iget-object v1, p0, Lcom/htc/reportagent/ReportServiceHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/reportagent/ReportServiceHandler;->mBudgetManager:Lcom/htc/reportagent/budget/BudgetManager;

    invoke-direct {v0, v1, v2}, Lcom/htc/reportagent/policy/PolicyManager;-><init>(Landroid/content/Context;Lcom/htc/reportagent/budget/BudgetManager;)V

    iput-object v0, p0, Lcom/htc/reportagent/ReportServiceHandler;->mPolicyManager:Lcom/htc/reportagent/policy/PolicyManager;

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/htc/reportagent/ReportServiceHandler;->mPolicyManager:Lcom/htc/reportagent/policy/PolicyManager;

    invoke-virtual {v0, p1}, Lcom/htc/reportagent/policy/PolicyManager;->onEvent(Lcom/htc/reportagent/policy/PolicyManager$Event;)V

    .line 218
    return-void
.end method

.method private onUpdateEvent(Lcom/htc/reportagent/update/UpdateManager$Event;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/htc/reportagent/ReportServiceHandler;->mUpdateManager:Lcom/htc/reportagent/update/UpdateManager;

    if-nez v0, :cond_0

    .line 207
    new-instance v0, Lcom/htc/reportagent/update/UpdateManager;

    iget-object v1, p0, Lcom/htc/reportagent/ReportServiceHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/reportagent/ReportServiceHandler;->mBudgetManager:Lcom/htc/reportagent/budget/BudgetManager;

    invoke-direct {v0, v1, v2}, Lcom/htc/reportagent/update/UpdateManager;-><init>(Landroid/content/Context;Lcom/htc/reportagent/budget/BudgetManager;)V

    iput-object v0, p0, Lcom/htc/reportagent/ReportServiceHandler;->mUpdateManager:Lcom/htc/reportagent/update/UpdateManager;

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/htc/reportagent/ReportServiceHandler;->mUpdateManager:Lcom/htc/reportagent/update/UpdateManager;

    invoke-virtual {v0, p1}, Lcom/htc/reportagent/update/UpdateManager;->onEvent(Lcom/htc/reportagent/update/UpdateManager$Event;)V

    .line 210
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/16 v3, 0x65

    .line 59
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v3, :cond_0

    .line 60
    iget-object v2, p0, Lcom/htc/reportagent/ReportServiceHandler;->mService:Landroid/app/Service;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/app/Service;->stopSelfResult(I)Z

    move-result v0

    .line 61
    .local v0, b:Z
    sget-object v2, Lcom/htc/reportagent/ReportServiceHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[##] call stopSelfResult() startId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", reurn "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/reportagent/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .end local v0           #b:Z
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/htc/reportagent/ReportServiceHandler;->onHandleIntent(Landroid/content/Intent;)V

    .line 66
    invoke-virtual {p0, v3}, Lcom/htc/reportagent/ReportServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 67
    .local v1, shutdownMsg:Landroid/os/Message;
    iget v2, p1, Landroid/os/Message;->arg1:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 68
    invoke-virtual {p0, v3}, Lcom/htc/reportagent/ReportServiceHandler;->removeMessages(I)V

    .line 69
    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/reportagent/ReportServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    .line 76
    if-nez p1, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 83
    iget-object v4, p0, Lcom/htc/reportagent/ReportServiceHandler;->mBudgetManager:Lcom/htc/reportagent/budget/BudgetManager;

    if-nez v4, :cond_2

    .line 84
    new-instance v4, Lcom/htc/reportagent/budget/BudgetManager;

    iget-object v5, p0, Lcom/htc/reportagent/ReportServiceHandler;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/htc/reportagent/budget/BudgetManager;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/htc/reportagent/ReportServiceHandler;->mBudgetManager:Lcom/htc/reportagent/budget/BudgetManager;

    .line 86
    :cond_2
    iget-object v4, p0, Lcom/htc/reportagent/ReportServiceHandler;->mHtcBugReport:Lcom/htc/BugReport/BugReportService;

    if-nez v4, :cond_3

    .line 87
    new-instance v4, Lcom/htc/BugReport/BugReportService;

    iget-object v5, p0, Lcom/htc/reportagent/ReportServiceHandler;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/htc/BugReport/BugReportService;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/htc/reportagent/ReportServiceHandler;->mHtcBugReport:Lcom/htc/BugReport/BugReportService;

    .line 90
    :cond_3
    invoke-static {}, Lcom/htc/reportagent/util/Security;->isSecureROM()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 96
    const-string v4, "com.htc.intent.action.BUGREPORT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 99
    invoke-static {}, Lcom/htc/reportagent/util/Utils;->isS3UploaderEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 104
    iget-object v4, p0, Lcom/htc/reportagent/ReportServiceHandler;->mHtcBugReport:Lcom/htc/BugReport/BugReportService;

    invoke-virtual {v4, p1}, Lcom/htc/BugReport/BugReportService;->onUploadBugReport(Landroid/content/Intent;)V

    .line 108
    :cond_4
    invoke-direct {p0}, Lcom/htc/reportagent/ReportServiceHandler;->isLogLibLogUrlInvalid()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 109
    sget-object v4, Lcom/htc/reportagent/update/UpdateManager$Event;->OOBE_FINISH:Lcom/htc/reportagent/update/UpdateManager$Event;

    invoke-direct {p0, v4}, Lcom/htc/reportagent/ReportServiceHandler;->onUpdateEvent(Lcom/htc/reportagent/update/UpdateManager$Event;)V

    .line 111
    :cond_5
    new-instance v4, Lcom/htc/reportagent/ReportManager;

    iget-object v5, p0, Lcom/htc/reportagent/ReportServiceHandler;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/htc/reportagent/ReportServiceHandler;->mBudgetManager:Lcom/htc/reportagent/budget/BudgetManager;

    invoke-direct {v4, v5, v6}, Lcom/htc/reportagent/ReportManager;-><init>(Landroid/content/Context;Lcom/htc/reportagent/budget/BudgetManager;)V

    invoke-virtual {v4, p1}, Lcom/htc/reportagent/ReportManager;->onUpload(Landroid/content/Intent;)V

    goto :goto_0

    .line 115
    :cond_6
    const-string v4, "com.htc.intent.action.USER_PROFILING"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 120
    iget-object v4, p0, Lcom/htc/reportagent/ReportServiceHandler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/htc/reportagent/ReportPreference;->getCurrentPowerConnectedState(Landroid/content/Context;)I

    move-result v4

    if-eq v4, v6, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/htc/reportagent/ReportServiceHandler;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/htc/reportagent/ReportPreference;->getLastUPUpload(Landroid/content/Context;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {}, Lcom/htc/reportagent/util/Utils;->getUploadLogFreq()I

    move-result v6

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    .line 123
    :cond_7
    new-instance v4, Lcom/htc/reportagent/ReportManager;

    iget-object v5, p0, Lcom/htc/reportagent/ReportServiceHandler;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/htc/reportagent/ReportServiceHandler;->mBudgetManager:Lcom/htc/reportagent/budget/BudgetManager;

    invoke-direct {v4, v5, v6}, Lcom/htc/reportagent/ReportManager;-><init>(Landroid/content/Context;Lcom/htc/reportagent/budget/BudgetManager;)V

    invoke-virtual {v4, p1}, Lcom/htc/reportagent/ReportManager;->onUpload(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 127
    :cond_8
    const-string v4, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 128
    iget-object v4, p0, Lcom/htc/reportagent/ReportServiceHandler;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/htc/reportagent/ReportPreference;->setCurrentPowerConnectedState(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 131
    :cond_9
    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 133
    :cond_a
    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 135
    invoke-direct {p0}, Lcom/htc/reportagent/ReportServiceHandler;->handleConnectionChangeMsgForUpdateAndPolicy()V

    goto/16 :goto_0

    .line 137
    :cond_b
    iget-object v4, p0, Lcom/htc/reportagent/ReportServiceHandler;->mContext:Landroid/content/Context;

    invoke-static {v4, v6}, Lcom/htc/reportagent/ReportPreference;->setCurrentPowerConnectedState(Landroid/content/Context;I)V

    .line 138
    iget-object v4, p0, Lcom/htc/reportagent/ReportServiceHandler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/htc/reportagent/ReportPreference;->getLastUPUpload(Landroid/content/Context;)J

    move-result-wide v2

    .line 140
    .local v2, lastUpload:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/32 v6, 0xa4cb80

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    .line 141
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.android.updater.NOTIFY_SEND"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 142
    .local v1, intent2:Landroid/content/Intent;
    iget-object v4, p0, Lcom/htc/reportagent/ReportServiceHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 144
    sget-object v4, Lcom/htc/reportagent/ReportServiceHandler;->TAG:Ljava/lang/String;

    const-string v5, "Detect power connected intent"

    invoke-static {v4, v5}, Lcom/htc/reportagent/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    sget-object v4, Lcom/htc/reportagent/ReportServiceHandler;->TAG:Ljava/lang/String;

    const-string v5, "Power is changed from not connected to connected"

    invoke-static {v4, v5}, Lcom/htc/reportagent/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-static {}, Lcom/htc/reportagent/util/Utils;->isS3UploaderEnabled()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 148
    iget-object v4, p0, Lcom/htc/reportagent/ReportServiceHandler;->mHtcBugReport:Lcom/htc/BugReport/BugReportService;

    invoke-virtual {v4}, Lcom/htc/BugReport/BugReportService;->onConnectivityChange()V

    .line 152
    :cond_c
    iget-object v4, p0, Lcom/htc/reportagent/ReportServiceHandler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/htc/reportagent/util/Utils;->isUserProfilingSettingEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 154
    new-instance v4, Lcom/htc/reportagent/ReportManager;

    iget-object v5, p0, Lcom/htc/reportagent/ReportServiceHandler;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/htc/reportagent/ReportServiceHandler;->mBudgetManager:Lcom/htc/reportagent/budget/BudgetManager;

    invoke-direct {v4, v5, v6}, Lcom/htc/reportagent/ReportManager;-><init>(Landroid/content/Context;Lcom/htc/reportagent/budget/BudgetManager;)V

    invoke-virtual {v4}, Lcom/htc/reportagent/ReportManager;->onPowerConnectedChanged()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 155
    iget-object v4, p0, Lcom/htc/reportagent/ReportServiceHandler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/htc/reportagent/ReportPreference;->setLastUPUpload(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 160
    .end local v1           #intent2:Landroid/content/Intent;
    .end local v2           #lastUpload:J
    :cond_d
    const-string v4, "com.htc.reportagent.action.BOOT_COMPLETE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 162
    sget-object v4, Lcom/htc/reportagent/ReportServiceHandler;->TAG:Ljava/lang/String;

    const-string v5, "on boot complete event "

    invoke-static {v4, v5}, Lcom/htc/reportagent/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    sget-object v4, Lcom/htc/reportagent/budget/BudgetManager$Event;->BOOT_COMPLETE:Lcom/htc/reportagent/budget/BudgetManager$Event;

    invoke-direct {p0, v4}, Lcom/htc/reportagent/ReportServiceHandler;->onBudgetEvent(Lcom/htc/reportagent/budget/BudgetManager$Event;)V

    .line 164
    sget-object v4, Lcom/htc/reportagent/update/UpdateManager$Event;->BOOT_COMPLETE:Lcom/htc/reportagent/update/UpdateManager$Event;

    invoke-direct {p0, v4}, Lcom/htc/reportagent/ReportServiceHandler;->onUpdateEvent(Lcom/htc/reportagent/update/UpdateManager$Event;)V

    .line 165
    sget-object v4, Lcom/htc/reportagent/policy/PolicyManager$Event;->BOOT_COMPLETE:Lcom/htc/reportagent/policy/PolicyManager$Event;

    invoke-direct {p0, v4}, Lcom/htc/reportagent/ReportServiceHandler;->onPolicyEvent(Lcom/htc/reportagent/policy/PolicyManager$Event;)V

    goto/16 :goto_0

    .line 167
    :cond_e
    const-string v4, "com.htc.reportagent.action.ULOG_POLICY_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 169
    sget-object v4, Lcom/htc/reportagent/budget/BudgetManager$Event;->NEW_POLICY:Lcom/htc/reportagent/budget/BudgetManager$Event;

    invoke-direct {p0, v4}, Lcom/htc/reportagent/ReportServiceHandler;->onBudgetEvent(Lcom/htc/reportagent/budget/BudgetManager$Event;)V

    .line 170
    sget-object v4, Lcom/htc/reportagent/policy/PolicyManager$Event;->NEW_POLICY:Lcom/htc/reportagent/policy/PolicyManager$Event;

    invoke-direct {p0, v4}, Lcom/htc/reportagent/ReportServiceHandler;->onPolicyEvent(Lcom/htc/reportagent/policy/PolicyManager$Event;)V

    goto/16 :goto_0

    .line 172
    :cond_f
    const-string v4, "com.htc.reportagent.action.SETUP_WIZARD_FINISHED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 174
    sget-object v4, Lcom/htc/reportagent/update/UpdateManager$Event;->OOBE_FINISH:Lcom/htc/reportagent/update/UpdateManager$Event;

    invoke-direct {p0, v4}, Lcom/htc/reportagent/ReportServiceHandler;->onUpdateEvent(Lcom/htc/reportagent/update/UpdateManager$Event;)V

    .line 175
    sget-object v4, Lcom/htc/reportagent/policy/PolicyManager$Event;->OOBE_FINISH:Lcom/htc/reportagent/policy/PolicyManager$Event;

    invoke-direct {p0, v4}, Lcom/htc/reportagent/ReportServiceHandler;->onPolicyEvent(Lcom/htc/reportagent/policy/PolicyManager$Event;)V

    goto/16 :goto_0

    .line 177
    :cond_10
    const-string v4, "com.htc.reportagent.action.CONNECTION_CHANGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 179
    invoke-direct {p0}, Lcom/htc/reportagent/ReportServiceHandler;->handleConnectionChangeMsgForUpdateAndPolicy()V

    goto/16 :goto_0

    .line 181
    :cond_11
    const-string v4, "com.htc.reportagent.action.POLICY_ALARM"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 183
    sget-object v4, Lcom/htc/reportagent/policy/PolicyManager$Event;->ALARM_WAKEUP:Lcom/htc/reportagent/policy/PolicyManager$Event;

    invoke-direct {p0, v4}, Lcom/htc/reportagent/ReportServiceHandler;->onPolicyEvent(Lcom/htc/reportagent/policy/PolicyManager$Event;)V

    goto/16 :goto_0

    .line 185
    :cond_12
    const-string v4, "com.htc.reportagent.action.POLICY_SETTING_CHANGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 186
    sget-object v4, Lcom/htc/reportagent/policy/PolicyManager$Event;->SETTING_CHANGE:Lcom/htc/reportagent/policy/PolicyManager$Event;

    invoke-direct {p0, v4}, Lcom/htc/reportagent/ReportServiceHandler;->onPolicyEvent(Lcom/htc/reportagent/policy/PolicyManager$Event;)V

    .line 189
    invoke-direct {p0}, Lcom/htc/reportagent/ReportServiceHandler;->isLogLibLogUrlInvalid()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 190
    sget-object v4, Lcom/htc/reportagent/update/UpdateManager$Event;->OOBE_FINISH:Lcom/htc/reportagent/update/UpdateManager$Event;

    invoke-direct {p0, v4}, Lcom/htc/reportagent/ReportServiceHandler;->onUpdateEvent(Lcom/htc/reportagent/update/UpdateManager$Event;)V

    .line 191
    :cond_13
    new-instance v4, Lcom/htc/reportagent/ReportManager;

    iget-object v5, p0, Lcom/htc/reportagent/ReportServiceHandler;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/htc/reportagent/ReportServiceHandler;->mBudgetManager:Lcom/htc/reportagent/budget/BudgetManager;

    invoke-direct {v4, v5, v6}, Lcom/htc/reportagent/ReportManager;-><init>(Landroid/content/Context;Lcom/htc/reportagent/budget/BudgetManager;)V

    invoke-virtual {v4, p1}, Lcom/htc/reportagent/ReportManager;->onUpload(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 193
    :cond_14
    const-string v4, "com.htc.reportagent.action.BUDGET_ALARM"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 195
    sget-object v4, Lcom/htc/reportagent/budget/BudgetManager$Event;->ALARM_WAKEUP:Lcom/htc/reportagent/budget/BudgetManager$Event;

    invoke-direct {p0, v4}, Lcom/htc/reportagent/ReportServiceHandler;->onBudgetEvent(Lcom/htc/reportagent/budget/BudgetManager$Event;)V

    goto/16 :goto_0

    .line 197
    :cond_15
    const-string v4, "com.htc.reportagent.action.UPDATE_ALARM"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 199
    sget-object v4, Lcom/htc/reportagent/update/UpdateManager$Event;->ALARM_WAKEUP:Lcom/htc/reportagent/update/UpdateManager$Event;

    invoke-direct {p0, v4}, Lcom/htc/reportagent/ReportServiceHandler;->onUpdateEvent(Lcom/htc/reportagent/update/UpdateManager$Event;)V

    goto/16 :goto_0
.end method
