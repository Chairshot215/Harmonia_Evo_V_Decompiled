.class Lcom/htc/music/MediaPlaybackErrorActivity$11;
.super Ljava/lang/Object;
.source "MediaPlaybackErrorActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/MediaPlaybackErrorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/MediaPlaybackErrorActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/MediaPlaybackErrorActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/MediaPlaybackErrorActivity$11;->this$0:Lcom/htc/music/MediaPlaybackErrorActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string v0, "[MediaPlaybackErrorActivity]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected classname= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,IBinder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity$11;->this$0:Lcom/htc/music/MediaPlaybackErrorActivity;

    invoke-static {p2}, Lcom/htc/music/IMediaPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/music/MediaPlaybackErrorActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity$11;->this$0:Lcom/htc/music/MediaPlaybackErrorActivity;

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackErrorActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    sput-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/htc/music/util/ProjectSettings;->getEnablePlugin(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity$11;->this$0:Lcom/htc/music/MediaPlaybackErrorActivity;

    #calls: Lcom/htc/music/MediaPlaybackErrorActivity;->setPluginListListener()V
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackErrorActivity;->access$900(Lcom/htc/music/MediaPlaybackErrorActivity;)V

    :cond_1
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity$11;->this$0:Lcom/htc/music/MediaPlaybackErrorActivity;

    #getter for: Lcom/htc/music/MediaPlaybackErrorActivity;->mIsPluginMode:Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackErrorActivity;->access$1000(Lcom/htc/music/MediaPlaybackErrorActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity$11;->this$0:Lcom/htc/music/MediaPlaybackErrorActivity;

    #getter for: Lcom/htc/music/MediaPlaybackErrorActivity;->mPluginReScanHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackErrorActivity;->access$600(Lcom/htc/music/MediaPlaybackErrorActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    const-string v0, "[MediaPlaybackErrorActivity]"

    const-string v1, "onServiceConnected finished"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity$11;->this$0:Lcom/htc/music/MediaPlaybackErrorActivity;

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity$11;->this$0:Lcom/htc/music/MediaPlaybackErrorActivity;

    #getter for: Lcom/htc/music/MediaPlaybackErrorActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;
    invoke-static {v1}, Lcom/htc/music/MediaPlaybackErrorActivity;->access$300(Lcom/htc/music/MediaPlaybackErrorActivity;)Landroid/content/AsyncQueryHandler;

    move-result-object v1

    #calls: Lcom/htc/music/MediaPlaybackErrorActivity;->getAlbumCursor(Landroid/content/AsyncQueryHandler;)Landroid/database/Cursor;
    invoke-static {v0, v1}, Lcom/htc/music/MediaPlaybackErrorActivity;->access$400(Lcom/htc/music/MediaPlaybackErrorActivity;Landroid/content/AsyncQueryHandler;)Landroid/database/Cursor;

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "[MediaPlaybackErrorActivity]"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
