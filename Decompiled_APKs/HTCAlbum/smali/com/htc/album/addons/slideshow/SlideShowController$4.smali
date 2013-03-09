.class Lcom/htc/album/addons/slideshow/SlideShowController$4;
.super Ljava/lang/Object;
.source "SlideShowController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 455
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideShowController$4;->this$0:Lcom/htc/album/addons/slideshow/SlideShowController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 458
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController$4;->this$0:Lcom/htc/album/addons/slideshow/SlideShowController;

    invoke-virtual {v0}, Lcom/htc/album/addons/slideshow/SlideShowController;->show()V

    .line 459
    const-string v0, "SlideShowController"

    const-string v1, "[mPauseListener][onClick]: PauseListener"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController$4;->this$0:Lcom/htc/album/addons/slideshow/SlideShowController;

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/SlideShowController;->mEventListener:Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController$4;->this$0:Lcom/htc/album/addons/slideshow/SlideShowController;

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/SlideShowController;->mEventListener:Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;

    invoke-interface {v0}, Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;->onDLNASupportRange()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController$4;->this$0:Lcom/htc/album/addons/slideshow/SlideShowController;

    invoke-virtual {v0}, Lcom/htc/album/addons/slideshow/SlideShowController;->doPauseResume()V

    .line 462
    :cond_1
    return-void
.end method
