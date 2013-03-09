.class Lcom/htc/video/HtcVideoView$11;
.super Ljava/lang/Object;
.source "HtcVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 1132
    iput-object p1, p0, Lcom/htc/video/HtcVideoView$11;->this$0:Lcom/htc/video/HtcVideoView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/htc/video/HtcVideoView$11;->this$0:Lcom/htc/video/HtcVideoView;

    #calls: Lcom/htc/video/HtcVideoView;->attachMediaController()V
    invoke-static {v0}, Lcom/htc/video/HtcVideoView;->access$3300(Lcom/htc/video/HtcVideoView;)V

    .line 1135
    iget-object v0, p0, Lcom/htc/video/HtcVideoView$11;->this$0:Lcom/htc/video/HtcVideoView;

    invoke-virtual {v0}, Lcom/htc/video/HtcVideoView;->requestLayout()V

    .line 1136
    iget-object v0, p0, Lcom/htc/video/HtcVideoView$11;->this$0:Lcom/htc/video/HtcVideoView;

    invoke-virtual {v0}, Lcom/htc/video/HtcVideoView;->invalidate()V

    .line 1137
    return-void
.end method
