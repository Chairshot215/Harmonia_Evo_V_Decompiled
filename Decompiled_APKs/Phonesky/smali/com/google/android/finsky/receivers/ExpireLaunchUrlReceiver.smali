.class public Lcom/google/android/finsky/receivers/ExpireLaunchUrlReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ExpireLaunchUrlReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static cancel(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 42
    invoke-static {p1}, Lcom/google/android/finsky/receivers/ExpireLaunchUrlReceiver;->shouldSetAlarm(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 48
    :goto_0
    return-void

    .line 46
    :cond_0
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 47
    .local v0, am:Landroid/app/AlarmManager;
    invoke-static {p0, p1}, Lcom/google/android/finsky/receivers/ExpireLaunchUrlReceiver;->createPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private static createPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 76
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/finsky/receivers/ExpireLaunchUrlReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    const-string v1, "package_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const/4 v1, 0x1

    const/high16 v2, 0x4000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private static hasContinueUrl(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    .line 70
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getInstallerDataStore()Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-result-object v1

    .line 71
    .local v1, installerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;
    invoke-interface {v1, p0}, Lcom/google/android/finsky/appstate/InstallerDataStore;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v0

    .line 72
    .local v0, data:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getContinueUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static schedule(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 51
    invoke-static {p1}, Lcom/google/android/finsky/receivers/ExpireLaunchUrlReceiver;->shouldSetAlarm(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 61
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-object v4, Lcom/google/android/finsky/config/G;->continueUrlExpirationMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v4}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    add-long v2, v5, v7

    .line 57
    .local v2, triggerAtMillis:J
    invoke-static {p0, p1}, Lcom/google/android/finsky/receivers/ExpireLaunchUrlReceiver;->createPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 59
    .local v1, operation:Landroid/app/PendingIntent;
    const-string v4, "alarm"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 60
    .local v0, am:Landroid/app/AlarmManager;
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private static shouldSetAlarm(Ljava/lang/String;)Z
    .locals 2
    .parameter "packageName"

    .prologue
    .line 65
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-ge v0, v1, :cond_0

    invoke-static {p0}, Lcom/google/android/finsky/receivers/ExpireLaunchUrlReceiver;->hasContinueUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 33
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 34
    .local v0, data:Landroid/os/Bundle;
    const-string v3, "package_name"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 36
    .local v2, packageName:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getInstallerDataStore()Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-result-object v1

    .line 37
    .local v1, installerDataStore:Lcom/google/android/finsky/appstate/InstallerDataStore;
    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setContinueUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v3, "Removed expired continue URL"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    return-void
.end method
