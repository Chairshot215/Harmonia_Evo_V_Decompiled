.class Lcom/htc/sunny2/slideshow/SlideshowController$1;
.super Ljava/lang/Object;
.source "SlideshowController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny2/slideshow/SlideshowController;->runNotifyUpdateCurIndex()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/slideshow/SlideshowController;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/slideshow/SlideshowController;)V
    .locals 0
    .parameter

    .prologue
    .line 1033
    iput-object p1, p0, Lcom/htc/sunny2/slideshow/SlideshowController$1;->this$0:Lcom/htc/sunny2/slideshow/SlideshowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController$1;->this$0:Lcom/htc/sunny2/slideshow/SlideshowController;

    #getter for: Lcom/htc/sunny2/slideshow/SlideshowController;->mediaList:Lcom/htc/sunny2/IMediaList;
    invoke-static {v0}, Lcom/htc/sunny2/slideshow/SlideshowController;->access$000(Lcom/htc/sunny2/slideshow/SlideshowController;)Lcom/htc/sunny2/IMediaList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController$1;->this$0:Lcom/htc/sunny2/slideshow/SlideshowController;

    #getter for: Lcom/htc/sunny2/slideshow/SlideshowController;->mSlideshowContrilLis:Lcom/htc/sunny2/slideshow/SlideshowController$SlideshowControlEventListener;
    invoke-static {v0}, Lcom/htc/sunny2/slideshow/SlideshowController;->access$100(Lcom/htc/sunny2/slideshow/SlideshowController;)Lcom/htc/sunny2/slideshow/SlideshowController$SlideshowControlEventListener;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1038
    :cond_0
    invoke-static {}, Lcom/htc/sunny2/slideshow/SlideshowController;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HTCAlbum][setSlideshowControl][runNotifyUpdateCurIndex - run]: mediaList or mSlideshowContrilLis NG !"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    :goto_0
    return-void

    .line 1042
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController$1;->this$0:Lcom/htc/sunny2/slideshow/SlideshowController;

    #getter for: Lcom/htc/sunny2/slideshow/SlideshowController;->mSlideshowContrilLis:Lcom/htc/sunny2/slideshow/SlideshowController$SlideshowControlEventListener;
    invoke-static {v0}, Lcom/htc/sunny2/slideshow/SlideshowController;->access$100(Lcom/htc/sunny2/slideshow/SlideshowController;)Lcom/htc/sunny2/slideshow/SlideshowController$SlideshowControlEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController$1;->this$0:Lcom/htc/sunny2/slideshow/SlideshowController;

    #getter for: Lcom/htc/sunny2/slideshow/SlideshowController;->mCurrentAnimationIndex:I
    invoke-static {v1}, Lcom/htc/sunny2/slideshow/SlideshowController;->access$300(Lcom/htc/sunny2/slideshow/SlideshowController;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/sunny2/slideshow/SlideshowController$1;->this$0:Lcom/htc/sunny2/slideshow/SlideshowController;

    #getter for: Lcom/htc/sunny2/slideshow/SlideshowController;->mediaList:Lcom/htc/sunny2/IMediaList;
    invoke-static {v2}, Lcom/htc/sunny2/slideshow/SlideshowController;->access$000(Lcom/htc/sunny2/slideshow/SlideshowController;)Lcom/htc/sunny2/IMediaList;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/htc/sunny2/slideshow/SlideshowController$SlideshowControlEventListener;->onCurIndexChange(II)V

    goto :goto_0
.end method
