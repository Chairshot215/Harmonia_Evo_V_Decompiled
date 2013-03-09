.class public Lcom/htc/music/MusicPluginManager;
.super Ljava/lang/Object;
.source "MusicPluginManager.java"

# interfaces
.implements Lcom/htc/music/IPluginIPCNotify;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/MusicPluginManager$NonUiHandler;,
        Lcom/htc/music/MusicPluginManager$MusicPlugin;,
        Lcom/htc/music/MusicPluginManager$PluginConnection;
    }
.end annotation


# static fields
.field private static final DELETE_ART_FILE_CACHE:I = 0x1

.field private static final DELETE_TIME_DELAY:I = 0x1388

.field private static final MAX_FILE_CACHE:I = 0x64

.field private static final MAX_ICON_SIZE:I = 0x40

.field private static final PLUGIN_META_CHANGED:Ljava/lang/String; = "com.htc.music.plugin.metachanged"

.field private static final PLUGIN_PLAYBACK_COMPLETE:Ljava/lang/String; = "com.htc.music.plugin.playbackcomplete"

.field private static final PLUGIN_PLAYSTATE_CHANGED:Ljava/lang/String; = "com.htc.music.plugin.statechanged"

.field private static final PLUGIN_QUEUE_CHANGED:Ljava/lang/String; = "com.htc.music.plugin.queuechanged"

.field private static final TAG:Ljava/lang/String; = "[MusicPluginManager]"


# instance fields
.field private final mBinder:Lcom/htc/music/IPluginIPCNotify$Stub;

.field private mBindingClass:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

.field private mExtPluginList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/MusicPluginManager$MusicPlugin;",
            ">;"
        }
    .end annotation
.end field

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIsBinding:Z

.field private mLastPluginClass:Ljava/lang/String;

.field private mMainService:Lcom/htc/music/MediaPlaybackService;

.field private mNonUiHandler:Lcom/htc/music/MusicPluginManager$NonUiHandler;

.field private mPluginCount:I

.field private mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;


# direct methods
.method public constructor <init>(Lcom/htc/music/MediaPlaybackService;Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mExtPluginList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    iput v1, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mHandlerThread:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mNonUiHandler:Lcom/htc/music/MusicPluginManager$NonUiHandler;

    iput-boolean v1, p0, Lcom/htc/music/MusicPluginManager;->mIsBinding:Z

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mBindingClass:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mLastPluginClass:Ljava/lang/String;

    new-instance v0, Lcom/htc/music/MusicPluginManager$1;

    invoke-direct {v0, p0}, Lcom/htc/music/MusicPluginManager$1;-><init>(Lcom/htc/music/MusicPluginManager;)V

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mBinder:Lcom/htc/music/IPluginIPCNotify$Stub;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mExtPluginList:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {p0}, Lcom/htc/music/MusicPluginManager;->refreshPlugins()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AlbumArtFileDeleteWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/htc/music/MusicPluginManager$NonUiHandler;

    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/music/MusicPluginManager$NonUiHandler;-><init>(Lcom/htc/music/MusicPluginManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mNonUiHandler:Lcom/htc/music/MusicPluginManager$NonUiHandler;

    iput-object p2, p0, Lcom/htc/music/MusicPluginManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mExtPluginList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    iput v1, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mHandlerThread:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mNonUiHandler:Lcom/htc/music/MusicPluginManager$NonUiHandler;

    iput-boolean v1, p0, Lcom/htc/music/MusicPluginManager;->mIsBinding:Z

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mBindingClass:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mLastPluginClass:Ljava/lang/String;

    new-instance v0, Lcom/htc/music/MusicPluginManager$1;

    invoke-direct {v0, p0}, Lcom/htc/music/MusicPluginManager$1;-><init>(Lcom/htc/music/MusicPluginManager;)V

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mBinder:Lcom/htc/music/IPluginIPCNotify$Stub;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mExtPluginList:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {p0}, Lcom/htc/music/MusicPluginManager;->refreshPlugins()V

    invoke-direct {p0, p2, v1}, Lcom/htc/music/MusicPluginManager;->bindPluginService(Ljava/lang/String;Z)Z

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AlbumArtFileDeleteWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/htc/music/MusicPluginManager$NonUiHandler;

    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/music/MusicPluginManager$NonUiHandler;-><init>(Lcom/htc/music/MusicPluginManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mNonUiHandler:Lcom/htc/music/MusicPluginManager$NonUiHandler;

    iput-object p3, p0, Lcom/htc/music/MusicPluginManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$1002(Lcom/htc/music/MusicPluginManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/htc/music/MusicPluginManager;->mBindingClass:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/htc/music/MusicPluginManager;)I
    .locals 1

    iget v0, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/music/MusicPluginManager;)[Lcom/htc/music/MusicPluginManager$MusicPlugin;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/music/MusicPluginManager;)Lcom/htc/music/MusicPluginManager$MusicPlugin;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/htc/music/MusicPluginManager;Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/MusicPluginManager$MusicPlugin;
    .locals 0

    iput-object p1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/htc/music/MusicPluginManager;)Lcom/htc/music/MediaPlaybackService;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    return-object v0
.end method

.method static synthetic access$902(Lcom/htc/music/MusicPluginManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/music/MusicPluginManager;->mIsBinding:Z

    return p1
.end method

.method private bindPluginService(IZ)Z
    .locals 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/htc/music/MusicPluginManager$PluginConnection;

    const/4 v5, 0x0

    invoke-direct {v0, p0, v5}, Lcom/htc/music/MusicPluginManager$PluginConnection;-><init>(Lcom/htc/music/MusicPluginManager;Lcom/htc/music/MusicPluginManager$1;)V

    iget-object v5, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v2, v5, p1

    if-nez v2, :cond_0

    const-string v4, "[MusicPluginManager]"

    const-string v5, "bindPluginService fails, plugin is null. 3 parameters."

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-direct {p0, p1}, Lcom/htc/music/MusicPluginManager;->unbindOtherServices(I)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return v3

    :cond_0
    :try_start_2
    invoke-virtual {v2, p2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->setStartActivity(Z)V

    invoke-virtual {v2, v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->setConnection(Landroid/content/ServiceConnection;)V

    iget-object v5, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    new-instance v6, Landroid/content/Intent;

    invoke-virtual {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getPluginClass()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v0, v7}, Lcom/htc/music/MediaPlaybackService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "[MusicPluginManager]"

    const-string v6, "bindPluginService succeed."

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/htc/music/MusicPluginManager;->mIsBinding:Z

    invoke-virtual {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getPluginClass()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/music/MusicPluginManager;->mBindingClass:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-direct {p0, p1}, Lcom/htc/music/MusicPluginManager;->unbindOtherServices(I)V

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v3, v4

    goto :goto_0

    :cond_1
    :try_start_4
    const-string v4, "[MusicPluginManager]"

    const-string v5, "bindPluginService failed."

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1

    :try_start_5
    invoke-direct {p0, p1}, Lcom/htc/music/MusicPluginManager;->unbindOtherServices(I)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v3

    :catch_0
    move-exception v1

    :try_start_6
    invoke-virtual {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    const-string v4, "[MusicPluginManager]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bindPluginService: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-direct {p0, p1}, Lcom/htc/music/MusicPluginManager;->unbindOtherServices(I)V

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_8
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    const-string v4, "[MusicPluginManager]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bindPluginService: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    invoke-direct {p0, p1}, Lcom/htc/music/MusicPluginManager;->unbindOtherServices(I)V

    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v3

    invoke-direct {p0, p1}, Lcom/htc/music/MusicPluginManager;->unbindOtherServices(I)V

    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
.end method

.method private bindPluginService(Ljava/lang/String;Z)Z
    .locals 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/htc/music/MusicPluginManager$PluginConnection;

    const/4 v5, 0x0

    invoke-direct {v0, p0, v5}, Lcom/htc/music/MusicPluginManager$PluginConnection;-><init>(Lcom/htc/music/MusicPluginManager;Lcom/htc/music/MusicPluginManager$1;)V

    invoke-virtual {p0, p1}, Lcom/htc/music/MusicPluginManager;->getPluginByClass(Ljava/lang/String;)Lcom/htc/music/MusicPluginManager$MusicPlugin;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v4, "[MusicPluginManager]"

    const-string v5, "bindPluginService fails, plugin is null. 2 parameters."

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-direct {p0, p1}, Lcom/htc/music/MusicPluginManager;->unbindOtherServices(Ljava/lang/String;)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return v3

    :cond_0
    :try_start_2
    invoke-virtual {v2, p2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->setStartActivity(Z)V

    invoke-virtual {v2, v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->setConnection(Landroid/content/ServiceConnection;)V

    iget-object v5, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v0, v7}, Lcom/htc/music/MediaPlaybackService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "[MusicPluginManager]"

    const-string v6, "bindPluginService succeed."

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/htc/music/MusicPluginManager;->mIsBinding:Z

    iput-object p1, p0, Lcom/htc/music/MusicPluginManager;->mBindingClass:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-direct {p0, p1}, Lcom/htc/music/MusicPluginManager;->unbindOtherServices(Ljava/lang/String;)V

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v3, v4

    goto :goto_0

    :cond_1
    :try_start_4
    const-string v4, "[MusicPluginManager]"

    const-string v5, "bindPluginService failed."

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1

    :try_start_5
    invoke-direct {p0, p1}, Lcom/htc/music/MusicPluginManager;->unbindOtherServices(Ljava/lang/String;)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v3

    :catch_0
    move-exception v1

    :try_start_6
    invoke-virtual {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    const-string v4, "[MusicPluginManager]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bindPluginService: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-direct {p0, p1}, Lcom/htc/music/MusicPluginManager;->unbindOtherServices(Ljava/lang/String;)V

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_8
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    const-string v4, "[MusicPluginManager]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bindPluginService: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    invoke-direct {p0, p1}, Lcom/htc/music/MusicPluginManager;->unbindOtherServices(Ljava/lang/String;)V

    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v3

    invoke-direct {p0, p1}, Lcom/htc/music/MusicPluginManager;->unbindOtherServices(Ljava/lang/String;)V

    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
.end method

.method private unbindOtherServices(I)V
    .locals 5

    monitor-enter p0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    if-eq p1, v1, :cond_0

    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getConnection()Landroid/content/ServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "[MusicPluginManager]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unbinding Service of plugin: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v4, v4, v1

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v2, v0}, Lcom/htc/music/MediaPlaybackService;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->setService(Lcom/htc/music/IMusicPluginService;)V

    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->setConnection(Landroid/content/ServiceConnection;)V

    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v2, v2, v1

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMap:Ljava/util/Map;
    invoke-static {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$600(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v2, v2, v1

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMapShuffle:Ljava/util/Map;
    invoke-static {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$700(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private unbindOtherServices(Ljava/lang/String;)V
    .locals 6

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    monitor-enter p0

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_1
    :try_start_0
    iget v3, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v2, v3, v1

    if-eqz v2, :cond_1

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getConnection()Landroid/content/ServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v3, "[MusicPluginManager]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unbinding Service of plugin: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v5, v5, v1

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v3, v0}, Lcom/htc/music/MediaPlaybackService;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v3, v3, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->setService(Lcom/htc/music/IMusicPluginService;)V

    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v3, v3, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->setConnection(Landroid/content/ServiceConnection;)V

    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v3, v3, v1

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMap:Ljava/util/Map;
    invoke-static {v3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$600(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v3, v3, v1

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMapShuffle:Ljava/util/Map;
    invoke-static {v3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$700(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mBinder:Lcom/htc/music/IPluginIPCNotify$Stub;

    return-object v0
.end method

.method protected bindPluginService(Ljava/lang/String;ZZ)Z
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/htc/music/MusicPluginManager$PluginConnection;

    const/4 v5, 0x0

    invoke-direct {v0, p0, v5}, Lcom/htc/music/MusicPluginManager$PluginConnection;-><init>(Lcom/htc/music/MusicPluginManager;Lcom/htc/music/MusicPluginManager$1;)V

    invoke-virtual {p0, p1}, Lcom/htc/music/MusicPluginManager;->getPluginByClass(Ljava/lang/String;)Lcom/htc/music/MusicPluginManager$MusicPlugin;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->setStartActivity(Z)V

    invoke-virtual {v2, p3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->setPlayAtBeginning(Z)V

    invoke-virtual {v2, v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->setConnection(Landroid/content/ServiceConnection;)V

    iget-object v5, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v0, v7}, Lcom/htc/music/MediaPlaybackService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "[MusicPluginManager]"

    const-string v6, "bindPluginService succeed."

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/htc/music/MusicPluginManager;->mIsBinding:Z

    iput-object p1, p0, Lcom/htc/music/MusicPluginManager;->mBindingClass:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-direct {p0, p1}, Lcom/htc/music/MusicPluginManager;->unbindOtherServices(Ljava/lang/String;)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    return v3

    :cond_0
    :try_start_2
    const-string v3, "[MusicPluginManager]"

    const-string v5, "bindPluginService failed."

    invoke-static {v3, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-direct {p0, p1}, Lcom/htc/music/MusicPluginManager;->unbindOtherServices(Ljava/lang/String;)V

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move v3, v4

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_4
    invoke-virtual {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    const-string v3, "[MusicPluginManager]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bindPluginService: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-direct {p0, p1}, Lcom/htc/music/MusicPluginManager;->unbindOtherServices(Ljava/lang/String;)V

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move v3, v4

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_6
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    const-string v3, "[MusicPluginManager]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bindPluginService: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-direct {p0, p1}, Lcom/htc/music/MusicPluginManager;->unbindOtherServices(Ljava/lang/String;)V

    monitor-exit p0

    move v3, v4

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-direct {p0, p1}, Lcom/htc/music/MusicPluginManager;->unbindOtherServices(Ljava/lang/String;)V

    throw v3

    :catchall_1
    move-exception v3

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v3
.end method

.method public clearAlbumArtRequests()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->clearAlbumArtRequests()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public clearNowplayingQueueRequests()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->clearNowplayingQueueRequests()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public duration()J
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->duration()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v1

    :try_start_2
    monitor-exit p0

    :goto_0
    return-wide v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const-wide/16 v1, 0x0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getAlbumArtPathByPosition(I)Ljava/lang/String;
    .locals 6

    const/4 v4, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v5, :cond_3

    if-ltz p1, :cond_3

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    iget-object v5, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMap:Ljava/util/Map;
    invoke-static {v5}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$600(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_0

    monitor-exit p0

    :goto_0
    return-object v3

    :cond_0
    iget-object v5, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMap:Ljava/util/Map;
    invoke-static {v5}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$600(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v5}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v5

    invoke-interface {v5, p1}, Lcom/htc/music/IMusicPluginService;->getAlbumArtPathByPosition(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    iget-object v5, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMap:Ljava/util/Map;
    invoke-static {v5}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$600(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    monitor-exit p0

    move-object v3, v4

    goto :goto_0

    :cond_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v3, v4

    goto :goto_0
.end method

.method public getAlbumArtPathByShufflePosition(I)Ljava/lang/String;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v4, :cond_3

    if-ltz p1, :cond_3

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    iget-object v4, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMapShuffle:Ljava/util/Map;
    invoke-static {v4}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$700(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_0

    monitor-exit p0

    :goto_0
    return-object v3

    :cond_0
    iget-object v4, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMapShuffle:Ljava/util/Map;
    invoke-static {v4}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$700(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v4}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/htc/music/IMusicPluginService;->getAlbumArtPathByShufflePosition(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMapShuffle:Ljava/util/Map;
    invoke-static {v4}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$700(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_3
    const/4 v3, 0x0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->getAlbumName()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    :try_start_2
    monitor-exit p0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->getArtistName()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    :try_start_2
    monitor-exit p0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method getAudioSessionId()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->getAudioSessionId()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    :try_start_2
    monitor-exit p0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getBindingClass()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mBindingClass:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBufferingPercent()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->getBufferingPercent()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    :try_start_2
    monitor-exit p0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getComposer()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->getComposer()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    :try_start_2
    monitor-exit p0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getCurrentPlugService()Lcom/htc/music/IMusicPluginService;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getService()Lcom/htc/music/IMusicPluginService;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCurrentPluginClass()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getPluginClass()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getExternalPluginCount()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mExtPluginList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mExtPluginList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->getFileName()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    :try_start_2
    monitor-exit p0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getGenre()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->getGenre()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    :try_start_2
    monitor-exit p0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getLocation()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->getLocation()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    :try_start_2
    monitor-exit p0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getNowplayingQueue(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/htc/music/IMusicPluginService;->getNowplayingQueue(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getPluginByClass(Ljava/lang/String;)Lcom/htc/music/MusicPluginManager$MusicPlugin;
    .locals 3

    const/4 v1, 0x0

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-nez v2, :cond_1

    :cond_0
    monitor-exit p0

    :goto_0
    return-object v1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getPluginClass()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getPluginClass()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v1, v1, v0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_4
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getPluginByIndex(I)Lcom/htc/music/MusicPluginManager$MusicPlugin;
    .locals 1

    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    iget v0, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v0, v0, p1

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPluginClass(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    monitor-enter p0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-nez v1, :cond_0

    monitor-exit p0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    if-ltz p1, :cond_2

    :try_start_1
    iget v1, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    if-ge p1, v1, :cond_2

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getPluginClass()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getPluginCount()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPluginDescription(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    monitor-enter p0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-nez v1, :cond_0

    monitor-exit p0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginDescription:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    if-ltz p1, :cond_2

    :try_start_1
    iget v1, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    if-ge p1, v1, :cond_2

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getPluginDescription()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getPluginIcon()Landroid/graphics/Bitmap;
    .locals 10

    const/16 v8, 0x40

    const/4 v6, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_5

    :try_start_1
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginIcon:Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Landroid/graphics/Bitmap;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginIcon:Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    return-object v6

    :cond_0
    :try_start_3
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v7}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v7

    invoke-interface {v7}, Lcom/htc/music/IMusicPluginService;->getPluginIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v3, 0x0

    :goto_1
    if-ge v5, v8, :cond_1

    if-lt v1, v8, :cond_2

    :cond_1
    div-int/lit8 v5, v5, 0x2

    div-int/lit8 v1, v1, 0x2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_3

    const-string v7, "[MusicPluginManager]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getPluginIcon scaled size: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x1

    invoke-static {v2, v5, v1, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    move-object v2, v4

    :cond_3
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    invoke-virtual {v7, v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->setPluginIcon(Landroid/graphics/Bitmap;)V

    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginIcon:Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v6

    :try_start_4
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    :cond_4
    :try_start_5
    monitor-exit p0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    monitor-exit p0

    goto :goto_0

    :cond_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method

.method public getPluginName(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    monitor-enter p0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-nez v1, :cond_0

    monitor-exit p0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginName:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$300(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    if-ltz p1, :cond_2

    :try_start_1
    iget v1, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    if-ge p1, v1, :cond_2

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getPluginName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method getPluginNotReadyMsg()Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-nez v2, :cond_0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object v1

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/music/IMusicPluginService;->getPluginNotReadyMsg()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public getPluginServiceByClass(Ljava/lang/String;)Lcom/htc/music/IMusicPluginService;
    .locals 3

    const/4 v1, 0x0

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    monitor-exit p0

    :goto_0
    return-object v1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getPluginClass()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getService()Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getPositionByShufflePosition(I)I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/htc/music/IMusicPluginService;->getPositionByShufflePosition(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    :try_start_2
    monitor-exit p0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v1, -0x1

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getQueuePosition()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->getQueuePosition()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    :try_start_2
    monitor-exit p0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getQueueSize()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->getQueueSize()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    :try_start_2
    monitor-exit p0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getRepeatMode()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->getRepeatMode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    :try_start_2
    monitor-exit p0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getShuffleMode()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->getShuffleMode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    :try_start_2
    monitor-exit p0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getShufflePositionByPosition(I)I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/htc/music/IMusicPluginService;->getShufflePositionByPosition(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    :try_start_2
    monitor-exit p0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v1, -0x1

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getTrackDetails(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/htc/music/IMusicPluginService;->getTrackDetails(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->getTrackName()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    :try_start_2
    monitor-exit p0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public isBindingService()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/htc/music/MusicPluginManager;->mIsBinding:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isMusicPluginExist()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isPlaying()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->isPlaying()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    :try_start_2
    monitor-exit p0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public isPluginConnected()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isPluginMode()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/music/MusicPluginManager;->isBindingService()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/MusicPluginManager;->isPluginConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mLastPluginClass:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mLastPluginClass:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    monitor-exit p0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isPluginReady()Z
    .locals 3

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-nez v2, :cond_0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return v1

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/music/IMusicPluginService;->isPluginReady()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public next()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->next()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onAlbumArtPathByShuffleUpdated(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v3, :cond_0

    if-eqz p2, :cond_0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz p3, :cond_0

    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "[MusicPluginManager]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCurrentPlugin.mPluginClass: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "[MusicPluginManager]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "className: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMapShuffle:Ljava/util/Map;
    invoke-static {v3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$700(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v3

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v3, p1, p2}, Lcom/htc/music/MediaPlaybackService;->pluginAlbumArtPathByShuffleUpdated(ILjava/lang/String;)V

    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mNonUiHandler:Lcom/htc/music/MusicPluginManager$NonUiHandler;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mNonUiHandler:Lcom/htc/music/MusicPluginManager$NonUiHandler;

    invoke-virtual {v3, v5}, Lcom/htc/music/MusicPluginManager$NonUiHandler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mNonUiHandler:Lcom/htc/music/MusicPluginManager$NonUiHandler;

    invoke-virtual {v3, v5, v0}, Lcom/htc/music/MusicPluginManager$NonUiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mNonUiHandler:Lcom/htc/music/MusicPluginManager$NonUiHandler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v2, v4, v5}, Lcom/htc/music/MusicPluginManager$NonUiHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method

.method public onAlbumArtPathUpdated(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v3, :cond_0

    if-eqz p2, :cond_0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz p3, :cond_0

    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "[MusicPluginManager]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCurrentPlugin.mPluginClass: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "[MusicPluginManager]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "className: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMap:Ljava/util/Map;
    invoke-static {v3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$600(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v3

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v3, p1, p2}, Lcom/htc/music/MediaPlaybackService;->pluginAlbumArtPathUpdated(ILjava/lang/String;)V

    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mNonUiHandler:Lcom/htc/music/MusicPluginManager$NonUiHandler;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mNonUiHandler:Lcom/htc/music/MusicPluginManager$NonUiHandler;

    invoke-virtual {v3, v5}, Lcom/htc/music/MusicPluginManager$NonUiHandler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mNonUiHandler:Lcom/htc/music/MusicPluginManager$NonUiHandler;

    invoke-virtual {v3, v5, v0}, Lcom/htc/music/MusicPluginManager$NonUiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mNonUiHandler:Lcom/htc/music/MusicPluginManager$NonUiHandler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v2, v4, v5}, Lcom/htc/music/MusicPluginManager$NonUiHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method

.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.onerror"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onNowplayingQueueUpdated([Landroid/content/ContentValues;IILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "[MusicPluginManager]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentPlugin.mPluginClass: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "[MusicPluginManager]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "className: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/music/MediaPlaybackService;->pluginNowplayingQueueUpdated([Landroid/content/ContentValues;II)V

    goto :goto_0
.end method

.method public onPluginSelected(I)V
    .locals 4

    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mExtPluginList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mExtPluginList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    monitor-exit p0

    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mExtPluginList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-nez v2, :cond_2

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_2
    :try_start_1
    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/htc/music/MusicPluginManager;->stopActivePlugin()V

    :cond_3
    invoke-virtual {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getService()Lcom/htc/music/IMusicPluginService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    if-eqz v3, :cond_4

    :try_start_2
    invoke-virtual {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getService()Lcom/htc/music/IMusicPluginService;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/music/IMusicPluginService;->startPluginActivity()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    :try_start_3
    monitor-exit p0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Lcom/htc/music/MusicPluginManager;->bindPluginService(Ljava/lang/String;Z)Z

    :cond_5
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public onToastWarning(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/htc/music/MediaPlaybackService;->showPluginToast(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onTrackDetailsUpdated(ILandroid/content/ContentValues;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "[MusicPluginManager]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentPlugin.mPluginClass: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "[MusicPluginManager]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "className: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->pluginTrackDetailsUpdated(ILandroid/content/ContentValues;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->pause()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public play()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->play()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public pluginNotifyChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "[MusicPluginManager]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pluginNotifyChange action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " class name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "com.htc.music.plugin.metachanged"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    const-string v1, "com.htc.music.metachanged"

    invoke-virtual {v0, v1}, Lcom/htc/music/MediaPlaybackService;->pluginNotifyChange(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    const-string v1, "com.htc.music.changeart"

    invoke-virtual {v0, v1}, Lcom/htc/music/MediaPlaybackService;->pluginNotifyChange(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "com.htc.music.plugin.statechanged"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    const-string v1, "com.htc.music.playstatechanged"

    invoke-virtual {v0, v1}, Lcom/htc/music/MediaPlaybackService;->pluginNotifyChange(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "com.htc.music.plugin.playbackcomplete"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    const-string v1, "com.htc.music.playbackcomplete"

    invoke-virtual {v0, v1}, Lcom/htc/music/MediaPlaybackService;->pluginNotifyChange(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "com.htc.music.plugin.queuechanged"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$600(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMapShuffle:Ljava/util/Map;
    invoke-static {v0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$700(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    const-string v1, "com.htc.music.queuechanged"

    invoke-virtual {v0, v1}, Lcom/htc/music/MediaPlaybackService;->pluginNotifyChange(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v0, "[MusicPluginManager]"

    const-string v1, "unknown plugin notify action"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string v0, "[MusicPluginManager]"

    const-string v1, "class name not match."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public position()J
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->position()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v1

    :try_start_2
    monitor-exit p0

    :goto_0
    return-wide v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const-wide/16 v1, 0x0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public prev()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->prev()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public refreshPlugins()V
    .locals 10

    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    if-nez v7, :cond_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v7}, Lcom/htc/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "AddMusicPluginServices"

    invoke-static {v7, v8}, Lcom/htc/opensense/plugin/PluginRegistryHelper;->getPlugins(Landroid/content/Context;Ljava/lang/String;)[Lcom/htc/opensense/plugin/Plugin;

    move-result-object v6

    if-nez v6, :cond_1

    const-string v7, "[MusicPluginManager]"

    const-string v8, "PluginRegistryHelper.getPlugins return null"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    :cond_1
    const/4 v4, 0x0

    :try_start_1
    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v7, :cond_6

    iget v7, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    array-length v8, v6

    if-ne v7, v8, :cond_6

    const/4 v2, 0x0

    :goto_1
    array-length v7, v6

    if-ge v2, v7, :cond_2

    aget-object v7, v6, v2

    iget-object v7, v7, Lcom/htc/opensense/plugin/Plugin;->component_name:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v7, v7, v2

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    if-nez v7, :cond_5

    const/4 v4, 0x1

    :cond_2
    :goto_2
    if-eqz v4, :cond_7

    :try_start_2
    array-length v7, v6

    new-array v5, v7, [Lcom/htc/music/MusicPluginManager$MusicPlugin;

    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mExtPluginList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    const-string v7, "[MusicPluginManager]"

    const-string v8, "refreshPlugins: plugin changed since last refresh."

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_3
    array-length v7, v6

    if-ge v2, v7, :cond_9

    aget-object v7, v6, v2

    iget-object v7, v7, Lcom/htc/opensense/plugin/Plugin;->component_name:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/htc/music/MusicPluginManager;->getPluginByClass(Ljava/lang/String;)Lcom/htc/music/MusicPluginManager$MusicPlugin;

    move-result-object v3

    if-eqz v3, :cond_8

    aput-object v3, v5, v2

    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v7, :cond_3

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v7

    if-eqz v7, :cond_3

    iput-object v3, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    :cond_3
    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginDescription:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginDescription:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4

    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mExtPluginList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    const/4 v4, 0x1

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    const-string v7, "[MusicPluginManager]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "refreshPlugins: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    monitor-exit p0

    goto/16 :goto_0

    :cond_8
    new-instance v7, Lcom/htc/music/MusicPluginManager$MusicPlugin;

    invoke-direct {v7, p0}, Lcom/htc/music/MusicPluginManager$MusicPlugin;-><init>(Lcom/htc/music/MusicPluginManager;)V

    aput-object v7, v5, v2

    aget-object v7, v5, v2

    aget-object v8, v6, v2

    iget-object v8, v8, Lcom/htc/opensense/plugin/Plugin;->component_name:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->setPluginClass(Ljava/lang/String;)V

    aget-object v7, v5, v2

    aget-object v8, v6, v2

    iget-object v8, v8, Lcom/htc/opensense/plugin/Plugin;->description:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->setPluginDescription(Ljava/lang/String;)V

    aget-object v7, v5, v2

    aget-object v8, v6, v2

    iget-object v8, v8, Lcom/htc/opensense/plugin/Plugin;->component_name:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->setPluginPackage(Ljava/lang/String;)V

    aget-object v7, v5, v2

    aget-object v8, v6, v2

    iget-object v8, v8, Lcom/htc/opensense/plugin/Plugin;->component_name:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->setPluginName(Ljava/lang/String;)V

    aget-object v7, v5, v2

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginDescription:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    aget-object v7, v5, v2

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginDescription:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4

    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mExtPluginList:Ljava/util/ArrayList;

    aget-object v8, v5, v2

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    iput-object v5, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    array-length v7, v7

    iput v7, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    :goto_5
    const/4 v6, 0x0

    monitor-exit p0

    goto/16 :goto_0

    :cond_a
    const/4 v7, 0x0

    iput v7, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5
.end method

.method public resetMusicPluginManager()V
    .locals 5

    monitor-enter p0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getService()Lcom/htc/music/IMusicPluginService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_1
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getService()Lcom/htc/music/IMusicPluginService;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/music/IMusicPluginService;->unregisterCallback()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getConnection()Landroid/content/ServiceConnection;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "[MusicPluginManager]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unbinding Service of plugin: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v4, v4, v1

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->getConnection()Landroid/content/ServiceConnection;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/music/MediaPlaybackService;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_1
    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->reset()V

    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const-string v2, "[MusicPluginManager]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetMusicPluginManager: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_2
    const/4 v2, 0x0

    :try_start_3
    iput-object v2, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginList:[Lcom/htc/music/MusicPluginManager$MusicPlugin;

    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/music/MusicPluginManager;->mPluginCount:I

    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mExtPluginList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/music/MusicPluginManager;->mIsBinding:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/music/MusicPluginManager;->mBindingClass:Ljava/lang/String;

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method public seek(J)J
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/htc/music/IMusicPluginService;->seek(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v1

    :try_start_2
    monitor-exit p0

    :goto_0
    return-wide v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const-wide/16 v1, 0x0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setLastPluginClass(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/htc/music/MusicPluginManager;->mLastPluginClass:Ljava/lang/String;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setQueuePosition(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/htc/music/IMusicPluginService;->setQueuePosition(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setRepeatMode(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/htc/music/IMusicPluginService;->setRepeatMode(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setShuffleMode(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/htc/music/IMusicPluginService;->setShuffleMode(I)V

    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMapShuffle:Ljava/util/Map;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$700(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public stop()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public stopActivePlugin()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/MusicPluginManager;->pause()V

    :cond_0
    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/music/IMusicPluginService;->unregisterCallback()V

    const-string v1, "[MusicPluginManager]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unbinding Service of plugin: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mMainService:Lcom/htc/music/MediaPlaybackService;

    iget-object v2, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$800(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/music/MediaPlaybackService;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    const/4 v2, 0x0

    #setter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v1, v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$802(Lcom/htc/music/MusicPluginManager$MusicPlugin;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    const/4 v2, 0x0

    #setter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;
    invoke-static {v1, v2}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$102(Lcom/htc/music/MusicPluginManager$MusicPlugin;Lcom/htc/music/IMusicPluginService;)Lcom/htc/music/IMusicPluginService;

    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$600(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    #getter for: Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMapShuffle:Ljava/util/Map;
    invoke-static {v1}, Lcom/htc/music/MusicPluginManager$MusicPlugin;->access$700(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v1, 0x0

    :try_start_3
    iput-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :catch_1
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    const-string v1, "[MusicPluginManager]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopActivePlugin: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v1, 0x0

    :try_start_5
    iput-object v1, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    goto :goto_0

    :catchall_1
    move-exception v1

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/music/MusicPluginManager;->mCurrentPlugin:Lcom/htc/music/MusicPluginManager$MusicPlugin;

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public stopHandlerThread()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mHandlerThread:Landroid/os/HandlerThread;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager;->mNonUiHandler:Lcom/htc/music/MusicPluginManager$NonUiHandler;

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
