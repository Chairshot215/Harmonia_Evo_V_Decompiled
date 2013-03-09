.class Lcom/htc/album/addons/slideshow/SlideShowController$1;
.super Ljava/lang/Object;
.source "SlideShowController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/addons/slideshow/SlideShowController;->initControllerView(Landroid/view/View;)V
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
    .line 145
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideShowController$1;->this$0:Lcom/htc/album/addons/slideshow/SlideShowController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController$1;->this$0:Lcom/htc/album/addons/slideshow/SlideShowController;

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/SlideShowController;->mEventListener:Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController$1;->this$0:Lcom/htc/album/addons/slideshow/SlideShowController;

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/SlideShowController;->mEventListener:Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;

    invoke-interface {v0}, Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;->onGoBack()V

    .line 152
    :cond_0
    return-void
.end method
