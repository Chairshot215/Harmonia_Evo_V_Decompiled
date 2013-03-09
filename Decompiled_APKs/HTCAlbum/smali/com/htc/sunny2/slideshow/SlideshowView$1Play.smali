.class Lcom/htc/sunny2/slideshow/SlideshowView$1Play;
.super Lcom/htc/sunny2/RenderThreadEvent;
.source "SlideshowView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny2/slideshow/SlideshowView;->doPlay()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Play"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/slideshow/SlideshowView;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/slideshow/SlideshowView;)V
    .locals 1
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/htc/sunny2/slideshow/SlideshowView$1Play;->this$0:Lcom/htc/sunny2/slideshow/SlideshowView;

    const-string v0, "Play"

    invoke-direct {p0, p1, v0}, Lcom/htc/sunny2/RenderThreadEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    .locals 2
    .parameter "cancelReason"

    .prologue
    .line 250
    const-string v0, "SlideshowView"

    const-string v1, "doPlay Cancel "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onProcessEventIRT()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowView$1Play;->this$0:Lcom/htc/sunny2/slideshow/SlideshowView;

    #calls: Lcom/htc/sunny2/slideshow/SlideshowView;->doPlayIRT()Z
    invoke-static {v0}, Lcom/htc/sunny2/slideshow/SlideshowView;->access$300(Lcom/htc/sunny2/slideshow/SlideshowView;)Z

    return-void
.end method
