.class Lcom/htc/video/ViewVideo$VideoMediaController;
.super Lcom/htc/video/HtcMediaController;
.source "ViewVideo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/video/ViewVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoMediaController"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/video/ViewVideo;


# direct methods
.method public constructor <init>(Lcom/htc/video/ViewVideo;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 2692
    iput-object p1, p0, Lcom/htc/video/ViewVideo$VideoMediaController;->this$0:Lcom/htc/video/ViewVideo;

    .line 2693
    invoke-direct {p0, p2}, Lcom/htc/video/HtcMediaController;-><init>(Landroid/content/Context;)V

    .line 2694
    return-void
.end method

.method public constructor <init>(Lcom/htc/video/ViewVideo;Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "goBackType"

    .prologue
    .line 2695
    iput-object p1, p0, Lcom/htc/video/ViewVideo$VideoMediaController;->this$0:Lcom/htc/video/ViewVideo;

    .line 2696
    invoke-direct {p0, p2, p3}, Lcom/htc/video/HtcMediaController;-><init>(Landroid/content/Context;I)V

    .line 2697
    return-void
.end method

.method public constructor <init>(Lcom/htc/video/ViewVideo;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 2686
    iput-object p1, p0, Lcom/htc/video/ViewVideo$VideoMediaController;->this$0:Lcom/htc/video/ViewVideo;

    .line 2687
    invoke-direct {p0, p2, p3}, Lcom/htc/video/HtcMediaController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2688
    return-void
.end method

.method public constructor <init>(Lcom/htc/video/ViewVideo;Landroid/content/Context;Z)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "useFastForward"

    .prologue
    .line 2689
    iput-object p1, p0, Lcom/htc/video/ViewVideo$VideoMediaController;->this$0:Lcom/htc/video/ViewVideo;

    .line 2690
    invoke-direct {p0, p2, p3}, Lcom/htc/video/HtcMediaController;-><init>(Landroid/content/Context;Z)V

    .line 2691
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 2701
    iget-object v0, p0, Lcom/htc/video/ViewVideo$VideoMediaController;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->isDestroyed:Z
    invoke-static {v0}, Lcom/htc/video/ViewVideo;->access$4300(Lcom/htc/video/ViewVideo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2703
    const/4 v0, 0x1

    .line 2707
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/video/HtcMediaController;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
