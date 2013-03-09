.class Lcom/htc/music/AudioPreview$3;
.super Ljava/lang/Object;
.source "AudioPreview.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/AudioPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/AudioPreview;


# direct methods
.method constructor <init>(Lcom/htc/music/AudioPreview;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/AudioPreview$3;->this$0:Lcom/htc/music/AudioPreview;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    if-nez p3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/music/AudioPreview$3;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;
    invoke-static {v0}, Lcom/htc/music/AudioPreview;->access$600(Lcom/htc/music/AudioPreview;)Lcom/htc/music/AudioPreview$PreviewPlayer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/htc/music/AudioPreview$PreviewPlayer;->seekTo(I)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/music/AudioPreview$3;->this$0:Lcom/htc/music/AudioPreview;

    const/4 v1, 0x1

    #setter for: Lcom/htc/music/AudioPreview;->mSeeking:Z
    invoke-static {v0, v1}, Lcom/htc/music/AudioPreview;->access$1102(Lcom/htc/music/AudioPreview;Z)Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    iget-object v0, p0, Lcom/htc/music/AudioPreview$3;->this$0:Lcom/htc/music/AudioPreview;

    const/4 v1, 0x0

    #setter for: Lcom/htc/music/AudioPreview;->mSeeking:Z
    invoke-static {v0, v1}, Lcom/htc/music/AudioPreview;->access$1102(Lcom/htc/music/AudioPreview;Z)Z

    iget-object v0, p0, Lcom/htc/music/AudioPreview$3;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/music/AudioPreview;->access$1600(Lcom/htc/music/AudioPreview;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/htc/music/AudioPreview$ProgressRefresher;

    iget-object v2, p0, Lcom/htc/music/AudioPreview$3;->this$0:Lcom/htc/music/AudioPreview;

    invoke-direct {v1, v2}, Lcom/htc/music/AudioPreview$ProgressRefresher;-><init>(Lcom/htc/music/AudioPreview;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
