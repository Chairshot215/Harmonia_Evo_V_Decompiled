.class Lcom/htc/album/addons/slideshow/SlideShow$2;
.super Ljava/lang/Object;
.source "SlideShow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/slideshow/SlideShow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/slideshow/SlideShow;


# direct methods
.method constructor <init>(Lcom/htc/album/addons/slideshow/SlideShow;)V
    .locals 0
    .parameter

    .prologue
    .line 1049
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideShow$2;->this$0:Lcom/htc/album/addons/slideshow/SlideShow;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow$2;->this$0:Lcom/htc/album/addons/slideshow/SlideShow;

    #getter for: Lcom/htc/album/addons/slideshow/SlideShow;->mStopAndLeave:Z
    invoke-static {v0}, Lcom/htc/album/addons/slideshow/SlideShow;->access$200(Lcom/htc/album/addons/slideshow/SlideShow;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1065
    :goto_0
    return-void

    .line 1055
    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow$2;->this$0:Lcom/htc/album/addons/slideshow/SlideShow;

    #getter for: Lcom/htc/album/addons/slideshow/SlideShow;->mRepeat:Z
    invoke-static {v0}, Lcom/htc/album/addons/slideshow/SlideShow;->access$300(Lcom/htc/album/addons/slideshow/SlideShow;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow$2;->this$0:Lcom/htc/album/addons/slideshow/SlideShow;

    invoke-virtual {v0}, Lcom/htc/album/addons/slideshow/SlideShow;->getCurrentIndex()I

    move-result v0

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShow$2;->this$0:Lcom/htc/album/addons/slideshow/SlideShow;

    #getter for: Lcom/htc/album/addons/slideshow/SlideShow;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    invoke-static {v1}, Lcom/htc/album/addons/slideshow/SlideShow;->access$400(Lcom/htc/album/addons/slideshow/SlideShow;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_1

    .line 1056
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow$2;->this$0:Lcom/htc/album/addons/slideshow/SlideShow;

    const/4 v1, 0x0

    #setter for: Lcom/htc/album/addons/slideshow/SlideShow;->mIsPlaying:Z
    invoke-static {v0, v1}, Lcom/htc/album/addons/slideshow/SlideShow;->access$502(Lcom/htc/album/addons/slideshow/SlideShow;Z)Z

    .line 1057
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow$2;->this$0:Lcom/htc/album/addons/slideshow/SlideShow;

    #calls: Lcom/htc/album/addons/slideshow/SlideShow;->onControlbarPause()V
    invoke-static {v0}, Lcom/htc/album/addons/slideshow/SlideShow;->access$600(Lcom/htc/album/addons/slideshow/SlideShow;)V

    .line 1058
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow$2;->this$0:Lcom/htc/album/addons/slideshow/SlideShow;

    #calls: Lcom/htc/album/addons/slideshow/SlideShow;->loadNextImage()V
    invoke-static {v0}, Lcom/htc/album/addons/slideshow/SlideShow;->access$700(Lcom/htc/album/addons/slideshow/SlideShow;)V

    .line 1059
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow$2;->this$0:Lcom/htc/album/addons/slideshow/SlideShow;

    const/4 v1, 0x1

    #calls: Lcom/htc/album/addons/slideshow/SlideShow;->showControlBar(Z)V
    invoke-static {v0, v1}, Lcom/htc/album/addons/slideshow/SlideShow;->access$800(Lcom/htc/album/addons/slideshow/SlideShow;Z)V

    goto :goto_0

    .line 1063
    :cond_1
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow$2;->this$0:Lcom/htc/album/addons/slideshow/SlideShow;

    #calls: Lcom/htc/album/addons/slideshow/SlideShow;->loadNextImage()V
    invoke-static {v0}, Lcom/htc/album/addons/slideshow/SlideShow;->access$700(Lcom/htc/album/addons/slideshow/SlideShow;)V

    goto :goto_0
.end method
