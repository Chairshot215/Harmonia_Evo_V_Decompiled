.class Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$3;
.super Ljava/lang/Object;
.source "DMPMusicPlaybackService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;


# direct methods
.method constructor <init>(Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$3;->this$1:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 3

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer$3;->this$1:Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;

    int-to-float v1, p2

    const/high16 v2, 0x42c8

    div-float/2addr v1, v2

    #setter for: Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->mCurPercentage:F
    invoke-static {v0, v1}, Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;->access$4502(Lcom/htc/music/DMPMusicPlaybackService$MultiPlayer;F)F

    return-void
.end method
