.class public Lcom/htc/lmw/InstalledAppsObserver;
.super Landroid/content/BroadcastReceiver;
.source "InstalledAppsObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/lmw/InstalledAppsObserver$IAppsListener;
    }
.end annotation


# static fields
.field private static final PACKAGE_SCHEME:Ljava/lang/String; = "package"

.field private static final TAG:Ljava/lang/String; = "LMW/InstalledAppsObserver"

.field private static context:Landroid/content/Context;

.field private static instance:Lcom/htc/lmw/InstalledAppsObserver;


# instance fields
.field private listener:Lcom/htc/lmw/InstalledAppsObserver$IAppsListener;

.field private onlyMovable:Z

.field private packageWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/htc/lmw/InstalledAppsObserver$IAppsListener;Ljava/util/List;Z)V
    .locals 1
    .parameter "listener"
    .parameter
    .parameter "onlyMovable"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/lmw/InstalledAppsObserver$IAppsListener;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p2, packageWhiteList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lmw/InstalledAppsObserver;->onlyMovable:Z

    .line 25
    iput-object p1, p0, Lcom/htc/lmw/InstalledAppsObserver;->listener:Lcom/htc/lmw/InstalledAppsObserver$IAppsListener;

    .line 26
    iput-object p2, p0, Lcom/htc/lmw/InstalledAppsObserver;->packageWhiteList:Ljava/util/List;

    .line 27
    iput-boolean p3, p0, Lcom/htc/lmw/InstalledAppsObserver;->onlyMovable:Z

    .line 28
    return-void
.end method

.method public static register(Landroid/content/Context;Lcom/htc/lmw/InstalledAppsObserver$IAppsListener;Ljava/util/List;Z)V
    .locals 3
    .parameter "callerContext"
    .parameter "listener"
    .parameter
    .parameter "onlyMovable"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/htc/lmw/InstalledAppsObserver$IAppsListener;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p2, packageWhiteList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 33
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 34
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 35
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 36
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 39
    invoke-static {}, Lcom/htc/lmw/InstalledAppsObserver;->unregister()V

    .line 40
    new-instance v1, Lcom/htc/lmw/InstalledAppsObserver;

    invoke-direct {v1, p1, p2, p3}, Lcom/htc/lmw/InstalledAppsObserver;-><init>(Lcom/htc/lmw/InstalledAppsObserver$IAppsListener;Ljava/util/List;Z)V

    sput-object v1, Lcom/htc/lmw/InstalledAppsObserver;->instance:Lcom/htc/lmw/InstalledAppsObserver;

    .line 41
    sput-object p0, Lcom/htc/lmw/InstalledAppsObserver;->context:Landroid/content/Context;

    .line 42
    sget-object v1, Lcom/htc/lmw/InstalledAppsObserver;->context:Landroid/content/Context;

    sget-object v2, Lcom/htc/lmw/InstalledAppsObserver;->instance:Lcom/htc/lmw/InstalledAppsObserver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 43
    return-void
.end method

.method public static unregister()V
    .locals 2

    .prologue
    .line 47
    sget-object v0, Lcom/htc/lmw/InstalledAppsObserver;->instance:Lcom/htc/lmw/InstalledAppsObserver;

    if-eqz v0, :cond_0

    .line 49
    sget-object v0, Lcom/htc/lmw/InstalledAppsObserver;->context:Landroid/content/Context;

    sget-object v1, Lcom/htc/lmw/InstalledAppsObserver;->instance:Lcom/htc/lmw/InstalledAppsObserver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/lmw/InstalledAppsObserver;->instance:Lcom/htc/lmw/InstalledAppsObserver;

    .line 52
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 57
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "package:"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, packageName:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/htc/lmw/AppManager;->getInstance()Lcom/htc/lmw/AppManager;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/lmw/InstalledAppsObserver;->packageWhiteList:Ljava/util/List;

    iget-boolean v5, p0, Lcom/htc/lmw/InstalledAppsObserver;->onlyMovable:Z

    const/4 v6, 0x1

    invoke-virtual {v3, v2, v4, v5, v6}, Lcom/htc/lmw/AppManager;->getAppInfo(Ljava/lang/String;Ljava/util/List;ZZ)Lcom/htc/lmw/AppInfo;

    move-result-object v0

    .line 62
    .local v0, app:Lcom/htc/lmw/AppInfo;
    if-nez v0, :cond_1

    .line 83
    .end local v0           #app:Lcom/htc/lmw/AppInfo;
    :cond_0
    :goto_0
    return-void

    .line 65
    .restart local v0       #app:Lcom/htc/lmw/AppInfo;
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 67
    iget-object v3, p0, Lcom/htc/lmw/InstalledAppsObserver;->listener:Lcom/htc/lmw/InstalledAppsObserver$IAppsListener;

    invoke-interface {v3, v0}, Lcom/htc/lmw/InstalledAppsObserver$IAppsListener;->onAppAdded(Lcom/htc/lmw/AppInfo;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 78
    .end local v0           #app:Lcom/htc/lmw/AppInfo;
    :catch_0
    move-exception v1

    .line 80
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "LMW/InstalledAppsObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; with data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " but PackageManager threw: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 69
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0       #app:Lcom/htc/lmw/AppInfo;
    :cond_2
    :try_start_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 71
    iget-object v3, p0, Lcom/htc/lmw/InstalledAppsObserver;->listener:Lcom/htc/lmw/InstalledAppsObserver$IAppsListener;

    invoke-interface {v3, v0}, Lcom/htc/lmw/InstalledAppsObserver$IAppsListener;->onAppRemoved(Lcom/htc/lmw/AppInfo;)V

    goto :goto_0

    .line 73
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 75
    iget-object v3, p0, Lcom/htc/lmw/InstalledAppsObserver;->listener:Lcom/htc/lmw/InstalledAppsObserver$IAppsListener;

    invoke-interface {v3, v0}, Lcom/htc/lmw/InstalledAppsObserver$IAppsListener;->onAppChanged(Lcom/htc/lmw/AppInfo;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
