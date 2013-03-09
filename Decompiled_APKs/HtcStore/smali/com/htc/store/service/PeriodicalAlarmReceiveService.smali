.class public Lcom/htc/store/service/PeriodicalAlarmReceiveService;
.super Landroid/app/IntentService;
.source "PeriodicalAlarmReceiveService.java"


# static fields
.field private static final ACTION_CS_LOGGED_IN:Ljava/lang/String; = "com.htc.cs.connectedservice.loginsuccess"

.field public static final ACTION_PERIODICAL_ALARM_RECEIVE:Ljava/lang/String; = "com.htc.store.action.PeriodicalAlarmReceive"

.field public static final PERIODICAL_ALARM_RECEIVE:Ljava/lang/String; = "PeriodicalAlarmReceive"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mPreferenceManager:Lcom/htc/store/module/PreferenceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/htc/store/service/PeriodicalAlarmReceiveService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/store/service/PeriodicalAlarmReceiveService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/htc/store/service/PeriodicalAlarmReceiveService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method private setSyncForHTCHub(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 65
    invoke-static {p1}, Lcom/htc/cscore/util/CSSyncUtilities;->getAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 66
    .local v0, account:Landroid/accounts/Account;
    if-eqz v0, :cond_0

    .line 67
    sget-object v1, Lcom/htc/store/service/PeriodicalAlarmReceiveService;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "set sync HTC Hub in Account&Sync page"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    const-string v1, "com.htc.store.provider.ContentProvider"

    invoke-static {v0, v1, v4}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 71
    :cond_0
    const/4 p1, 0x0

    .line 72
    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 4

    .prologue
    .line 76
    sget-object v0, Lcom/htc/store/service/PeriodicalAlarmReceiveService;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "onDestroy"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 78
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 11
    .parameter "intent"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 38
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, action:Ljava/lang/String;
    const-string v6, "com.htc.store.action.PeriodicalAlarmReceive"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 41
    const-string v6, "PeriodicalAlarmReceive"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, inAction:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 43
    const-string v6, "com.htc.launcher.intent.LOADING_COMPLETE"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 44
    new-instance v6, Lcom/htc/store/module/PreferenceManager;

    invoke-direct {v6, p0}, Lcom/htc/store/module/PreferenceManager;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/htc/store/service/PeriodicalAlarmReceiveService;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    .line 45
    iget-object v6, p0, Lcom/htc/store/service/PeriodicalAlarmReceiveService;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    invoke-virtual {v6}, Lcom/htc/store/module/PreferenceManager;->getLastTimeMillisCheckUpdates()J

    move-result-wide v2

    .line 46
    .local v2, millisLastCheck:J
    invoke-static {p0}, Lcom/htc/store/util/SyncUtils;->isAutoSyncForHtcHub(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 47
    invoke-static {p0, v2, v3}, Lcom/htc/store/util/NotificationUtils;->scheduleNextCheckingUpdates(Landroid/content/Context;J)V

    .line 49
    :cond_0
    iget-object v6, p0, Lcom/htc/store/service/PeriodicalAlarmReceiveService;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;

    invoke-virtual {v6}, Lcom/htc/store/module/PreferenceManager;->getLastTimeMillisClearCachedImages()J

    move-result-wide v4

    .line 50
    .local v4, millisLastClear:J
    sget-object v6, Lcom/htc/store/service/PeriodicalAlarmReceiveService;->TAG:Ljava/lang/String;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "millisLastClear: "

    aput-object v8, v7, v9

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    invoke-static {p0, v4, v5}, Lcom/htc/store/util/NotificationUtils;->scheduleNextClearCachedImages(Landroid/content/Context;J)V

    .line 62
    .end local v1           #inAction:Ljava/lang/String;
    .end local v2           #millisLastCheck:J
    .end local v4           #millisLastClear:J
    :cond_1
    :goto_0
    return-void

    .line 52
    .restart local v1       #inAction:Ljava/lang/String;
    :cond_2
    const-string v6, "com.htc.cs.connectedservice.loginsuccess"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 53
    invoke-static {p0}, Lcom/htc/store/util/SyncUtils;->isAutoSyncForHtcHub(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 54
    invoke-static {p0}, Lcom/htc/store/util/NotificationUtils;->scheduleNextCheckingUpdates(Landroid/content/Context;)V

    .line 56
    :cond_3
    invoke-direct {p0, p0}, Lcom/htc/store/service/PeriodicalAlarmReceiveService;->setSyncForHTCHub(Landroid/content/Context;)V

    goto :goto_0

    .line 59
    :cond_4
    sget-object v6, Lcom/htc/store/service/PeriodicalAlarmReceiveService;->TAG:Ljava/lang/String;

    new-array v7, v10, [Ljava/lang/Object;

    const-string v8, "inAction is empty"

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
