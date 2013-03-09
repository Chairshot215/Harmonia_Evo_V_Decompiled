.class Lcom/htc/sunny2/slideshow/SlideshowController$2;
.super Ljava/lang/Object;
.source "SlideshowController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny2/slideshow/SlideshowController;->runNotifyUpdateCurStatus(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/slideshow/SlideshowController;

.field final synthetic val$nStatus:I


# direct methods
.method constructor <init>(Lcom/htc/sunny2/slideshow/SlideshowController;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1056
    iput-object p1, p0, Lcom/htc/sunny2/slideshow/SlideshowController$2;->this$0:Lcom/htc/sunny2/slideshow/SlideshowController;

    iput p2, p0, Lcom/htc/sunny2/slideshow/SlideshowController$2;->val$nStatus:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController$2;->this$0:Lcom/htc/sunny2/slideshow/SlideshowController;

    #getter for: Lcom/htc/sunny2/slideshow/SlideshowController;->mSlideshowContrilLis:Lcom/htc/sunny2/slideshow/SlideshowController$SlideshowControlEventListener;
    invoke-static {v0}, Lcom/htc/sunny2/slideshow/SlideshowController;->access$100(Lcom/htc/sunny2/slideshow/SlideshowController;)Lcom/htc/sunny2/slideshow/SlideshowController$SlideshowControlEventListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1061
    invoke-static {}, Lcom/htc/sunny2/slideshow/SlideshowController;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HTCAlbum][setSlideshowControl][runNotifyUpdateCurStatus - run]: mSlideshowContrilLis NG !"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    :goto_0
    return-void

    .line 1065
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/slideshow/SlideshowController$2;->this$0:Lcom/htc/sunny2/slideshow/SlideshowController;

    #getter for: Lcom/htc/sunny2/slideshow/SlideshowController;->mSlideshowContrilLis:Lcom/htc/sunny2/slideshow/SlideshowController$SlideshowControlEventListener;
    invoke-static {v0}, Lcom/htc/sunny2/slideshow/SlideshowController;->access$100(Lcom/htc/sunny2/slideshow/SlideshowController;)Lcom/htc/sunny2/slideshow/SlideshowController$SlideshowControlEventListener;

    move-result-object v0

    iget v1, p0, Lcom/htc/sunny2/slideshow/SlideshowController$2;->val$nStatus:I

    invoke-interface {v0, v1}, Lcom/htc/sunny2/slideshow/SlideshowController$SlideshowControlEventListener;->onStatusChange(I)V

    goto :goto_0
.end method
