.class public Lcom/htc/lmw/ExternalStorageObserver;
.super Landroid/content/BroadcastReceiver;
.source "ExternalStorageObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/lmw/ExternalStorageObserver$IStateListener;
    }
.end annotation


# static fields
.field private static appContext:Landroid/content/Context;

.field private static instance:Lcom/htc/lmw/ExternalStorageObserver;

.field private static stateListener:Lcom/htc/lmw/ExternalStorageObserver$IStateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/lmw/ExternalStorageObserver;->instance:Lcom/htc/lmw/ExternalStorageObserver;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/htc/lmw/ExternalStorageObserver$IStateListener;)V
    .locals 0
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 19
    sput-object p2, Lcom/htc/lmw/ExternalStorageObserver;->stateListener:Lcom/htc/lmw/ExternalStorageObserver$IStateListener;

    .line 20
    sput-object p1, Lcom/htc/lmw/ExternalStorageObserver;->appContext:Landroid/content/Context;

    .line 21
    return-void
.end method

.method public static isMediaMounted()Z
    .locals 2

    .prologue
    .line 69
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, state:Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static register(Landroid/content/Context;Lcom/htc/lmw/ExternalStorageObserver$IStateListener;)V
    .locals 3
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 25
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 26
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 27
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 28
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 29
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 30
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 31
    const-string v1, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 32
    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 33
    const-string v1, "android.intent.action.MEDIA_NOFS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 34
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 35
    const-string v1, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 37
    invoke-static {}, Lcom/htc/lmw/ExternalStorageObserver;->unregister()V

    .line 38
    new-instance v1, Lcom/htc/lmw/ExternalStorageObserver;

    invoke-direct {v1, p0, p1}, Lcom/htc/lmw/ExternalStorageObserver;-><init>(Landroid/content/Context;Lcom/htc/lmw/ExternalStorageObserver$IStateListener;)V

    sput-object v1, Lcom/htc/lmw/ExternalStorageObserver;->instance:Lcom/htc/lmw/ExternalStorageObserver;

    .line 39
    sget-object v1, Lcom/htc/lmw/ExternalStorageObserver;->appContext:Landroid/content/Context;

    sget-object v2, Lcom/htc/lmw/ExternalStorageObserver;->instance:Lcom/htc/lmw/ExternalStorageObserver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 40
    return-void
.end method

.method public static unregister()V
    .locals 2

    .prologue
    .line 47
    :try_start_0
    sget-object v0, Lcom/htc/lmw/ExternalStorageObserver;->instance:Lcom/htc/lmw/ExternalStorageObserver;

    if-eqz v0, :cond_0

    .line 49
    sget-object v0, Lcom/htc/lmw/ExternalStorageObserver;->appContext:Landroid/content/Context;

    sget-object v1, Lcom/htc/lmw/ExternalStorageObserver;->instance:Lcom/htc/lmw/ExternalStorageObserver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/lmw/ExternalStorageObserver;->instance:Lcom/htc/lmw/ExternalStorageObserver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 59
    sget-object v0, Lcom/htc/lmw/ExternalStorageObserver;->stateListener:Lcom/htc/lmw/ExternalStorageObserver$IStateListener;

    invoke-interface {v0, p2}, Lcom/htc/lmw/ExternalStorageObserver$IStateListener;->onStateChanged(Landroid/content/Intent;)V

    .line 60
    return-void
.end method
