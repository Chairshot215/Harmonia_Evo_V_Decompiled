.class public abstract Lcom/htc/socialnetwork/account/AccountReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AccountReceiver.java"


# static fields
.field public static final ACTION_REQUEST_LOGIN:Ljava/lang/String; = "com.htc.socialnetwork.account.REQUEST_LOGIN"

.field public static final ACTION_SOCIAL_GET_SYNC_INTERVAL:Ljava/lang/String; = "com.htc.social.getSyncInterval"

.field public static final ACTION_SOCIAL_SET_SYNC_INTERVAL:Ljava/lang/String; = "com.htc.social.setSyncInterval"

.field public static final ACTION_SOCIAL_SYNC_INTERVAL:Ljava/lang/String; = "com.htc.social.SyncInterval"

.field public static final EXTRA_NAME_SOCIAL_SERVICE:Ljava/lang/String; = "social_service"

.field private static final HANDLED_BY_PARENT:Ljava/lang/String; = "HANDLED_BY_PARENT"

.field public static final SYNC_SERVICE:Ljava/lang/String; = "com.htc.socialnetwork.account.SYNC_SERVICE"

.field protected static volatile mAlarmSender:Landroid/app/PendingIntent;


# instance fields
.field mContext:Landroid/content/Context;

.field syncThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/socialnetwork/account/AccountReceiver;->syncThread:Ljava/lang/Thread;

    return-void
.end method

.method public static getSingleLoginAccountForType(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;
    .locals 2
    .parameter "context"
    .parameter "type"

    .prologue
    .line 112
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 114
    .local v0, accounts:[Landroid/accounts/Account;
    array-length v1, v0

    if-lez v1, :cond_0

    .line 115
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 117
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isHandledByParent(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    .line 129
    const-string v0, "HANDLED_BY_PARENT"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static reScheduleAlarm(Landroid/content/Context;JZ)V
    .locals 10
    .parameter "context"
    .parameter "updateInterval"
    .parameter "startNow"

    .prologue
    const/4 v2, 0x0

    .line 28
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 29
    .local v0, am:Landroid/app/AlarmManager;
    sget-object v1, Lcom/htc/socialnetwork/account/AccountReceiver;->mAlarmSender:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 30
    sget-object v1, Lcom/htc/socialnetwork/account/AccountReceiver;->mAlarmSender:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 31
    const/4 v1, 0x0

    sput-object v1, Lcom/htc/socialnetwork/account/AccountReceiver;->mAlarmSender:Landroid/app/PendingIntent;

    .line 33
    :cond_0
    if-eqz p3, :cond_1

    const-wide/16 v7, 0x0

    .line 34
    .local v7, startOffset:J
    :goto_0
    new-instance v9, Landroid/content/Intent;

    const-string v1, "com.htc.socialnetwork.account.SYNC_SERVICE"

    invoke-direct {v9, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 35
    .local v9, syncIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    invoke-static {p0, v2, v9, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    sput-object v1, Lcom/htc/socialnetwork/account/AccountReceiver;->mAlarmSender:Landroid/app/PendingIntent;

    .line 37
    const/4 v1, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v7

    sget-object v6, Lcom/htc/socialnetwork/account/AccountReceiver;->mAlarmSender:Landroid/app/PendingIntent;

    move-wide v4, p1

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 41
    return-void

    .end local v7           #startOffset:J
    .end local v9           #syncIntent:Landroid/content/Intent;
    :cond_1
    move-wide v7, p1

    .line 33
    goto :goto_0
.end method


# virtual methods
.method public abstract getAccountType()Ljava/lang/String;
.end method

.method public getSyncInterval(Landroid/content/Context;)J
    .locals 2
    .parameter "context"

    .prologue
    .line 107
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public abstract getSyncableProviders()[Ljava/lang/String;
.end method

.method public onAccountLogout(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 126
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    .line 47
    iput-object p1, p0, Lcom/htc/socialnetwork/account/AccountReceiver;->mContext:Landroid/content/Context;

    .line 48
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, action:Ljava/lang/String;
    const-string v4, "com.htc.socialnetwork.account.SYNC_SERVICE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 50
    const-string v4, "HANDLED_BY_PARENT"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 51
    iget-object v4, p0, Lcom/htc/socialnetwork/account/AccountReceiver;->syncThread:Ljava/lang/Thread;

    if-nez v4, :cond_0

    .line 52
    new-instance v4, Lcom/htc/socialnetwork/account/AccountReceiver$1;

    invoke-direct {v4, p0}, Lcom/htc/socialnetwork/account/AccountReceiver$1;-><init>(Lcom/htc/socialnetwork/account/AccountReceiver;)V

    iput-object v4, p0, Lcom/htc/socialnetwork/account/AccountReceiver;->syncThread:Ljava/lang/Thread;

    .line 66
    iget-object v4, p0, Lcom/htc/socialnetwork/account/AccountReceiver;->syncThread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    const-string v4, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 69
    const-string v4, "HANDLED_BY_PARENT"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 70
    invoke-virtual {p0}, Lcom/htc/socialnetwork/account/AccountReceiver;->getAccountType()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/htc/socialnetwork/account/AccountReceiver;->getSingleLoginAccountForType(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 72
    .local v0, account:Landroid/accounts/Account;
    if-nez v0, :cond_0

    .line 79
    const-string v4, "alarm"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    .line 81
    .local v3, am:Landroid/app/AlarmManager;
    sget-object v4, Lcom/htc/socialnetwork/account/AccountReceiver;->mAlarmSender:Landroid/app/PendingIntent;

    if-eqz v4, :cond_2

    .line 82
    sget-object v4, Lcom/htc/socialnetwork/account/AccountReceiver;->mAlarmSender:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 83
    const/4 v4, 0x0

    sput-object v4, Lcom/htc/socialnetwork/account/AccountReceiver;->mAlarmSender:Landroid/app/PendingIntent;

    .line 85
    :cond_2
    invoke-virtual {p0, p1}, Lcom/htc/socialnetwork/account/AccountReceiver;->onAccountLogout(Landroid/content/Context;)V

    goto :goto_0

    .line 87
    .end local v0           #account:Landroid/accounts/Account;
    .end local v3           #am:Landroid/app/AlarmManager;
    :cond_3
    const-string v4, "com.htc.socialnetwork.account.REQUEST_LOGIN"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/htc/socialnetwork/account/AccountReceiver;->getAccountType()Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, accountType:Ljava/lang/String;
    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 90
    new-instance v4, Lcom/htc/socialnetwork/account/AccountReceiver$2;

    invoke-direct {v4, p0, p2, v1, p1}, Lcom/htc/socialnetwork/account/AccountReceiver$2;-><init>(Lcom/htc/socialnetwork/account/AccountReceiver;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/htc/socialnetwork/account/AccountReceiver$2;->start()V

    goto :goto_0
.end method
