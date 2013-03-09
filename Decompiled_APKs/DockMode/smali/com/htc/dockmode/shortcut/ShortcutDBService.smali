.class public Lcom/htc/dockmode/shortcut/ShortcutDBService;
.super Landroid/app/Service;
.source "ShortcutDBService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/dockmode/shortcut/ShortcutDBService$MyBGHandler;
    }
.end annotation


# static fields
.field public static final EXTRA_ACTION:Ljava/lang/String; = "extra_update"

.field public static final EXTRA_APP_LIST:Ljava/lang/String; = "applist"

.field public static final INTENT_ACTION:Ljava/lang/String; = "com.htc.dockmode.shortcut.update"

.field private static final LOG_PREFIX:Ljava/lang/String; = "ShortcutDBService"

.field public static final SHORTCUT_CHANGED_ACTION:Ljava/lang/String; = "com.htc.dockmode.shortcut.changed"

.field public static final UPDATE_APP:I = 0x1

.field private static final WHAT_ON_UPDATE_APP:I = 0x1


# instance fields
.field public mBgHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/htc/dockmode/shortcut/ShortcutDBService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/htc/dockmode/shortcut/ShortcutDBService;->broadcastShortcutChanged()V

    return-void
.end method

.method private broadcastShortcutChanged()V
    .locals 2

    .prologue
    .line 100
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.dockmode.shortcut.changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 101
    .local v0, intet:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/htc/dockmode/shortcut/ShortcutDBService;->sendBroadcast(Landroid/content/Intent;)V

    .line 102
    return-void
.end method

.method private declared-synchronized initBgHandler()V
    .locals 3

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/htc/dockmode/shortcut/ShortcutDBService;->mBgHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 72
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ShortcutDB"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 73
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 74
    new-instance v1, Lcom/htc/dockmode/shortcut/ShortcutDBService$MyBGHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/htc/dockmode/shortcut/ShortcutDBService$MyBGHandler;-><init>(Lcom/htc/dockmode/shortcut/ShortcutDBService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/htc/dockmode/shortcut/ShortcutDBService;->mBgHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .end local v0           #thread:Landroid/os/HandlerThread;
    :cond_0
    monitor-exit p0

    return-void

    .line 71
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/dockmode/shortcut/ShortcutDBService;->mBgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/htc/dockmode/shortcut/ShortcutDBService;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/dockmode/shortcut/ShortcutDBService;->mBgHandler:Landroid/os/Handler;

    .line 67
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 68
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 9
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v8, 0x1

    .line 37
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 38
    const-string v5, "extra_update"

    const/4 v6, -0x1

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 39
    .local v0, action:I
    const-string v5, "ShortcutDBService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onStartCommand action:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-direct {p0}, Lcom/htc/dockmode/shortcut/ShortcutDBService;->initBgHandler()V

    .line 42
    if-ne v0, v8, :cond_1

    .line 43
    const-string v5, "applist"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    .line 45
    .local v1, appArray:[Landroid/os/Parcelable;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v2, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ActivityInfo;>;"
    if-eqz v1, :cond_0

    .line 47
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v5, v1

    if-ge v3, v5, :cond_0

    .line 48
    aget-object v5, v1, v3

    check-cast v5, Landroid/content/pm/ActivityInfo;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 52
    .end local v3           #i:I
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 53
    .local v4, msg:Landroid/os/Message;
    iput-object v2, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 54
    iput p3, v4, Landroid/os/Message;->arg1:I

    .line 55
    iput v8, v4, Landroid/os/Message;->what:I

    .line 56
    iget-object v5, p0, Lcom/htc/dockmode/shortcut/ShortcutDBService;->mBgHandler:Landroid/os/Handler;

    invoke-static {v5, v4}, Lcom/htc/dockmode/shortcut/MyUtil;->sendMessage(Landroid/os/Handler;Landroid/os/Message;)V

    .line 59
    .end local v1           #appArray:[Landroid/os/Parcelable;
    .end local v2           #appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ActivityInfo;>;"
    .end local v4           #msg:Landroid/os/Message;
    :cond_1
    const/4 v5, 0x3

    return v5
.end method
