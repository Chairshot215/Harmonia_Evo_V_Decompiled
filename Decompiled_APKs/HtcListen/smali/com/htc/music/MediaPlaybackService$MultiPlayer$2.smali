.class Lcom/htc/music/MediaPlaybackService$MultiPlayer$2;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/MediaPlaybackService$MultiPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;


# direct methods
.method constructor <init>(Lcom/htc/music/MediaPlaybackService$MultiPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/htc/music/MediaPlaybackService$MultiPlayer;

    iget-object v0, v0, Lcom/htc/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/htc/music/MediaPlaybackService;

    const-string v1, "com.htc.music.asyncopencomplete"

    #calls: Lcom/htc/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/music/MediaPlaybackService;->access$500(Lcom/htc/music/MediaPlaybackService;Ljava/lang/String;)V

    return-void
.end method
