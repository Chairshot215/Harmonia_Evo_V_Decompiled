.class Lcom/htc/album/addons/slideshow/SlideShow$1;
.super Ljava/lang/Object;
.source "SlideShow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 561
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideShow$1;->this$0:Lcom/htc/album/addons/slideshow/SlideShow;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 563
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow$1;->this$0:Lcom/htc/album/addons/slideshow/SlideShow;

    #getter for: Lcom/htc/album/addons/slideshow/SlideShow;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;
    invoke-static {v0}, Lcom/htc/album/addons/slideshow/SlideShow;->access$000(Lcom/htc/album/addons/slideshow/SlideShow;)Lcom/htc/album/modules/ui/ControlBarManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow$1;->this$0:Lcom/htc/album/addons/slideshow/SlideShow;

    #calls: Lcom/htc/album/addons/slideshow/SlideShow;->updateControlBar()V
    invoke-static {v0}, Lcom/htc/album/addons/slideshow/SlideShow;->access$100(Lcom/htc/album/addons/slideshow/SlideShow;)V

    .line 566
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
