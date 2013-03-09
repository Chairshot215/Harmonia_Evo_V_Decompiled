.class Lcom/google/android/finsky/previews/PreviewPlayer$6;
.super Ljava/lang/Object;
.source "PreviewPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/previews/PreviewPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/previews/PreviewPlayer;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/previews/PreviewPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 409
    iput-object p1, p0, Lcom/google/android/finsky/previews/PreviewPlayer$6;->this$0:Lcom/google/android/finsky/previews/PreviewPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 412
    iget-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer$6;->this$0:Lcom/google/android/finsky/previews/PreviewPlayer;

    #getter for: Lcom/google/android/finsky/previews/PreviewPlayer;->mListenerProxy:Lcom/google/android/finsky/previews/StatusListener;
    invoke-static {v0}, Lcom/google/android/finsky/previews/PreviewPlayer;->access$500(Lcom/google/android/finsky/previews/PreviewPlayer;)Lcom/google/android/finsky/previews/StatusListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/StatusListener;->completed()V

    .line 413
    iget-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer$6;->this$0:Lcom/google/android/finsky/previews/PreviewPlayer;

    #getter for: Lcom/google/android/finsky/previews/PreviewPlayer;->mStatusListeners:Ljava/util/List;
    invoke-static {v0}, Lcom/google/android/finsky/previews/PreviewPlayer;->access$000(Lcom/google/android/finsky/previews/PreviewPlayer;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/previews/PreviewPlayer$6;->this$0:Lcom/google/android/finsky/previews/PreviewPlayer;

    #getter for: Lcom/google/android/finsky/previews/PreviewPlayer;->mCurrentTrack:Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;
    invoke-static {v1}, Lcom/google/android/finsky/previews/PreviewPlayer;->access$700(Lcom/google/android/finsky/previews/PreviewPlayer;)Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 414
    iget-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer$6;->this$0:Lcom/google/android/finsky/previews/PreviewPlayer;

    #calls: Lcom/google/android/finsky/previews/PreviewPlayer;->playNextTrack()Z
    invoke-static {v0}, Lcom/google/android/finsky/previews/PreviewPlayer;->access$800(Lcom/google/android/finsky/previews/PreviewPlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/google/android/finsky/previews/PreviewPlayer$6;->this$0:Lcom/google/android/finsky/previews/PreviewPlayer;

    #getter for: Lcom/google/android/finsky/previews/PreviewPlayer;->mPlayer:Lcom/google/android/finsky/previews/MediaPlayerWrapper;
    invoke-static {v0}, Lcom/google/android/finsky/previews/PreviewPlayer;->access$400(Lcom/google/android/finsky/previews/PreviewPlayer;)Lcom/google/android/finsky/previews/MediaPlayerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->setBetweenTrackState()V

    .line 417
    :cond_0
    return-void
.end method
