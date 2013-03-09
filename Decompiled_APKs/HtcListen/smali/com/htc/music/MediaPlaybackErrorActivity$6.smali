.class Lcom/htc/music/MediaPlaybackErrorActivity$6;
.super Landroid/os/Handler;
.source "MediaPlaybackErrorActivity.java"


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

    iput-object p1, p0, Lcom/htc/music/MediaPlaybackErrorActivity$6;->this$0:Lcom/htc/music/MediaPlaybackErrorActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mounted_ro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "checking"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity$6;->this$0:Lcom/htc/music/MediaPlaybackErrorActivity;

    iget-object v2, p0, Lcom/htc/music/MediaPlaybackErrorActivity$6;->this$0:Lcom/htc/music/MediaPlaybackErrorActivity;

    #getter for: Lcom/htc/music/MediaPlaybackErrorActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;
    invoke-static {v2}, Lcom/htc/music/MediaPlaybackErrorActivity;->access$300(Lcom/htc/music/MediaPlaybackErrorActivity;)Landroid/content/AsyncQueryHandler;

    move-result-object v2

    #calls: Lcom/htc/music/MediaPlaybackErrorActivity;->getAlbumCursor(Landroid/content/AsyncQueryHandler;)Landroid/database/Cursor;
    invoke-static {v1, v2}, Lcom/htc/music/MediaPlaybackErrorActivity;->access$400(Lcom/htc/music/MediaPlaybackErrorActivity;Landroid/content/AsyncQueryHandler;)Landroid/database/Cursor;

    :goto_0
    return-void

    :cond_1
    const-string v1, "[MediaPlaybackErrorActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Don\'t continue to query!!! SD status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
