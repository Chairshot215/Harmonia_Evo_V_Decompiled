.class Lcom/htc/album/addons/slideshow/Slideshow3D$2;
.super Ljava/lang/Object;
.source "Slideshow3D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/slideshow/Slideshow3D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/slideshow/Slideshow3D;


# direct methods
.method constructor <init>(Lcom/htc/album/addons/slideshow/Slideshow3D;)V
    .locals 0
    .parameter

    .prologue
    .line 934
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D$2;->this$0:Lcom/htc/album/addons/slideshow/Slideshow3D;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 936
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D$2;->this$0:Lcom/htc/album/addons/slideshow/Slideshow3D;

    #getter for: Lcom/htc/album/addons/slideshow/Slideshow3D;->mStopAndLeave:Z
    invoke-static {v0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->access$200(Lcom/htc/album/addons/slideshow/Slideshow3D;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 950
    :goto_0
    return-void

    .line 940
    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D$2;->this$0:Lcom/htc/album/addons/slideshow/Slideshow3D;

    #getter for: Lcom/htc/album/addons/slideshow/Slideshow3D;->mRepeat:Z
    invoke-static {v0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->access$300(Lcom/htc/album/addons/slideshow/Slideshow3D;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D$2;->this$0:Lcom/htc/album/addons/slideshow/Slideshow3D;

    #getter for: Lcom/htc/album/addons/slideshow/Slideshow3D;->mCurrentPosition:I
    invoke-static {v0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->access$400(Lcom/htc/album/addons/slideshow/Slideshow3D;)I

    move-result v0

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D$2;->this$0:Lcom/htc/album/addons/slideshow/Slideshow3D;

    #getter for: Lcom/htc/album/addons/slideshow/Slideshow3D;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    invoke-static {v1}, Lcom/htc/album/addons/slideshow/Slideshow3D;->access$500(Lcom/htc/album/addons/slideshow/Slideshow3D;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_1

    .line 941
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D$2;->this$0:Lcom/htc/album/addons/slideshow/Slideshow3D;

    const/4 v1, 0x0

    #setter for: Lcom/htc/album/addons/slideshow/Slideshow3D;->mIsPlaying:Z
    invoke-static {v0, v1}, Lcom/htc/album/addons/slideshow/Slideshow3D;->access$602(Lcom/htc/album/addons/slideshow/Slideshow3D;Z)Z

    .line 942
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D$2;->this$0:Lcom/htc/album/addons/slideshow/Slideshow3D;

    #calls: Lcom/htc/album/addons/slideshow/Slideshow3D;->onControlbarPause()V
    invoke-static {v0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->access$700(Lcom/htc/album/addons/slideshow/Slideshow3D;)V

    .line 943
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D$2;->this$0:Lcom/htc/album/addons/slideshow/Slideshow3D;

    #calls: Lcom/htc/album/addons/slideshow/Slideshow3D;->loadNextImage()V
    invoke-static {v0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->access$800(Lcom/htc/album/addons/slideshow/Slideshow3D;)V

    .line 944
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D$2;->this$0:Lcom/htc/album/addons/slideshow/Slideshow3D;

    const/4 v1, 0x1

    #calls: Lcom/htc/album/addons/slideshow/Slideshow3D;->showControlBar(Z)V
    invoke-static {v0, v1}, Lcom/htc/album/addons/slideshow/Slideshow3D;->access$900(Lcom/htc/album/addons/slideshow/Slideshow3D;Z)V

    goto :goto_0

    .line 948
    :cond_1
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D$2;->this$0:Lcom/htc/album/addons/slideshow/Slideshow3D;

    #calls: Lcom/htc/album/addons/slideshow/Slideshow3D;->loadNextImage()V
    invoke-static {v0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->access$800(Lcom/htc/album/addons/slideshow/Slideshow3D;)V

    goto :goto_0
.end method
