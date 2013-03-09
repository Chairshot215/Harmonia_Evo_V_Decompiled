.class public Lcom/htc/android/mail/util/ScreenStatusManager;
.super Landroid/content/BroadcastReceiver;
.source "ScreenStatusManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ScreenStatusManager"

.field private static sInstance:Lcom/htc/android/mail/util/ScreenStatusManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mScreenOffRunnableList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenOnRunnableList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/android/mail/util/ScreenStatusManager;->sInstance:Lcom/htc/android/mail/util/ScreenStatusManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 20
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/android/mail/util/ScreenStatusManager;->mScreenOffRunnableList:Ljava/util/ArrayList;

    .line 21
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/android/mail/util/ScreenStatusManager;->mScreenOnRunnableList:Ljava/util/ArrayList;

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/util/ScreenStatusManager;->mContext:Landroid/content/Context;

    .line 36
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 37
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 38
    iget-object v1, p0, Lcom/htc/android/mail/util/ScreenStatusManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 39
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/htc/android/mail/util/ScreenStatusManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 24
    sget-object v0, Lcom/htc/android/mail/util/ScreenStatusManager;->sInstance:Lcom/htc/android/mail/util/ScreenStatusManager;

    if-nez v0, :cond_1

    .line 25
    const-class v1, Lcom/htc/android/mail/util/ScreenStatusManager;

    monitor-enter v1

    .line 26
    :try_start_0
    sget-object v0, Lcom/htc/android/mail/util/ScreenStatusManager;->sInstance:Lcom/htc/android/mail/util/ScreenStatusManager;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/htc/android/mail/util/ScreenStatusManager;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/util/ScreenStatusManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/android/mail/util/ScreenStatusManager;->sInstance:Lcom/htc/android/mail/util/ScreenStatusManager;

    .line 29
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :cond_1
    sget-object v0, Lcom/htc/android/mail/util/ScreenStatusManager;->sInstance:Lcom/htc/android/mail/util/ScreenStatusManager;

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static isScreenOn(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 58
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 59
    .local v0, pm:Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    return v1
.end method


# virtual methods
.method public addScreenOffRunnable(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/android/mail/util/ScreenStatusManager;->mScreenOffRunnableList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    return-void
.end method

.method public addScreenOnRunnable(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/android/mail/util/ScreenStatusManager;->mScreenOnRunnableList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 64
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 65
    sget-boolean v2, Lcom/htc/android/mail/Mail;->debug:Z

    if-eqz v2, :cond_0

    const-string v2, "ScreenStatusManager"

    const-string v3, "screen off"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_0
    iget-object v2, p0, Lcom/htc/android/mail/util/ScreenStatusManager;->mScreenOffRunnableList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 67
    .local v1, runnable:Ljava/lang/Runnable;
    if-eqz v1, :cond_1

    .line 68
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 70
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #runnable:Ljava/lang/Runnable;
    :cond_2
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 71
    iget-object v2, p0, Lcom/htc/android/mail/util/ScreenStatusManager;->mScreenOnRunnableList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 72
    .restart local v1       #runnable:Ljava/lang/Runnable;
    if-eqz v1, :cond_3

    .line 73
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 76
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #runnable:Ljava/lang/Runnable;
    :cond_4
    return-void
.end method

.method public removeScreenOffRunnable(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/android/mail/util/ScreenStatusManager;->mScreenOffRunnableList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 47
    return-void
.end method

.method public removeScreenOnRunnable(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/android/mail/util/ScreenStatusManager;->mScreenOnRunnableList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method
