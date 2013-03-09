.class public Lcom/htc/launcher/DesktopRestoreReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DesktopRestoreReceiver.java"


# static fields
.field private static final CASE_DEMO_FLO:Ljava/lang/String; = "com.htc.DEMO_FLO"

.field private static TAG:Ljava/lang/String;

.field private static final localLOGV:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "DesktopRestoreReceiver"

    sput-object v0, Lcom/htc/launcher/DesktopRestoreReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 21
    sget-object v3, Lcom/htc/launcher/Launcher;->sRefLauncher:Ljava/lang/ref/WeakReference;

    if-nez v3, :cond_3

    move-object v1, v4

    .line 22
    .local v1, launcher:Lcom/htc/launcher/Launcher;
    :goto_0
    const-string v3, "com.htc.RESTORE_CALLER"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, caller:Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v3, "com.htc.DEMO_FLO"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 26
    const-string v3, "launcher"

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 28
    .local v2, pref:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v5, "addDemoFLOShortcut"

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 33
    sget-object v3, Lcom/htc/launcher/Launcher;->sWidgetPackageManager:Lcom/htc/launcher/WidgetPackageManager;

    if-nez v3, :cond_0

    .line 34
    invoke-static {p1}, Lcom/htc/launcher/WidgetPackageManager;->instance(Landroid/content/Context;)Lcom/htc/launcher/WidgetPackageManager;

    move-result-object v3

    sput-object v3, Lcom/htc/launcher/Launcher;->sWidgetPackageManager:Lcom/htc/launcher/WidgetPackageManager;

    .line 35
    :cond_0
    if-eqz v1, :cond_1

    .line 36
    sget-object v3, Lcom/htc/launcher/Launcher;->sWidgetPackageManager:Lcom/htc/launcher/WidgetPackageManager;

    invoke-virtual {v3, v1, v4, v6}, Lcom/htc/launcher/WidgetPackageManager;->initFavorites(Lcom/htc/launcher/Launcher;Lcom/htc/launcher/LauncherModel;Z)V

    .line 40
    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->killProcess(I)V

    .line 42
    .end local v2           #pref:Landroid/content/SharedPreferences;
    :cond_2
    return-void

    .line 21
    .end local v0           #caller:Ljava/lang/String;
    .end local v1           #launcher:Lcom/htc/launcher/Launcher;
    :cond_3
    sget-object v3, Lcom/htc/launcher/Launcher;->sRefLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/launcher/Launcher;

    move-object v1, v3

    goto :goto_0
.end method
