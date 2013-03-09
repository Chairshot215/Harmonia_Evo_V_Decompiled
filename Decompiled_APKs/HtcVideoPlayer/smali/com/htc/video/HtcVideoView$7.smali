.class Lcom/htc/video/HtcVideoView$7;
.super Ljava/lang/Object;
.source "HtcVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/video/HtcVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/video/HtcVideoView;


# direct methods
.method constructor <init>(Lcom/htc/video/HtcVideoView;)V
    .locals 0
    .parameter

    .prologue
    .line 695
    iput-object p1, p0, Lcom/htc/video/HtcVideoView$7;->this$0:Lcom/htc/video/HtcVideoView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1
    .parameter "mp"
    .parameter "percent"

    .prologue
    .line 697
    iget-object v0, p0, Lcom/htc/video/HtcVideoView$7;->this$0:Lcom/htc/video/HtcVideoView;

    #setter for: Lcom/htc/video/HtcVideoView;->mCurrentBufferPercentage:I
    invoke-static {v0, p2}, Lcom/htc/video/HtcVideoView;->access$2702(Lcom/htc/video/HtcVideoView;I)I

    .line 698
    return-void
.end method
