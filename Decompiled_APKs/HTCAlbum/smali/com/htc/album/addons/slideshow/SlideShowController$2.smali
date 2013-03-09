.class Lcom/htc/album/addons/slideshow/SlideShowController$2;
.super Ljava/lang/Object;
.source "SlideShowController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/slideshow/SlideShowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/slideshow/SlideShowController;


# direct methods
.method constructor <init>(Lcom/htc/album/addons/slideshow/SlideShowController;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideShowController$2;->this$0:Lcom/htc/album/addons/slideshow/SlideShowController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    .line 195
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    .line 197
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController$2;->this$0:Lcom/htc/album/addons/slideshow/SlideShowController;

    iget-boolean v0, v0, Lcom/htc/album/addons/slideshow/SlideShowController;->mShowing:Z

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShowController$2;->this$0:Lcom/htc/album/addons/slideshow/SlideShowController;

    iget-object v1, v1, Lcom/htc/album/addons/slideshow/SlideShowController;->mRoot:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShowController$2;->this$0:Lcom/htc/album/addons/slideshow/SlideShowController;

    iget-object v1, v1, Lcom/htc/album/addons/slideshow/SlideShowController;->mRoot:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShowController$2;->this$0:Lcom/htc/album/addons/slideshow/SlideShowController;

    iget-object v1, v1, Lcom/htc/album/addons/slideshow/SlideShowController;->mRoot:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_2

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShowController$2;->this$0:Lcom/htc/album/addons/slideshow/SlideShowController;

    iget-object v1, v1, Lcom/htc/album/addons/slideshow/SlideShowController;->mRoot:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 200
    :cond_2
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController$2;->this$0:Lcom/htc/album/addons/slideshow/SlideShowController;

    invoke-virtual {v0}, Lcom/htc/album/addons/slideshow/SlideShowController;->hide()V

    .line 203
    :cond_3
    const/4 v0, 0x0

    return v0
.end method
