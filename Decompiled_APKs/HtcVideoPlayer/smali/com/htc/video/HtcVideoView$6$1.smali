.class Lcom/htc/video/HtcVideoView$6$1;
.super Ljava/lang/Object;
.source "HtcVideoView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/video/HtcVideoView$6;->onError(Landroid/media/MediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/video/HtcVideoView$6;


# direct methods
.method constructor <init>(Lcom/htc/video/HtcVideoView$6;)V
    .locals 0
    .parameter

    .prologue
    .line 663
    iput-object p1, p0, Lcom/htc/video/HtcVideoView$6$1;->this$1:Lcom/htc/video/HtcVideoView$6;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 665
    iget-object v0, p0, Lcom/htc/video/HtcVideoView$6$1;->this$1:Lcom/htc/video/HtcVideoView$6;

    iget-object v0, v0, Lcom/htc/video/HtcVideoView$6;->this$0:Lcom/htc/video/HtcVideoView;

    iget-object v1, p0, Lcom/htc/video/HtcVideoView$6$1;->this$1:Lcom/htc/video/HtcVideoView$6;

    iget-object v1, v1, Lcom/htc/video/HtcVideoView$6;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/htc/video/HtcVideoView;->access$1000(Lcom/htc/video/HtcVideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    #calls: Lcom/htc/video/HtcVideoView;->callCompletionListenerOnCompletion(Landroid/media/MediaPlayer;)V
    invoke-static {v0, v1}, Lcom/htc/video/HtcVideoView;->access$2500(Lcom/htc/video/HtcVideoView;Landroid/media/MediaPlayer;)V

    .line 666
    return-void
.end method
