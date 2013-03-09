.class Lcom/htc/album/addons/slideshow/Slideshow3D$1;
.super Ljava/lang/Object;
.source "Slideshow3D.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 551
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D$1;->this$0:Lcom/htc/album/addons/slideshow/Slideshow3D;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 553
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D$1;->this$0:Lcom/htc/album/addons/slideshow/Slideshow3D;

    #getter for: Lcom/htc/album/addons/slideshow/Slideshow3D;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;
    invoke-static {v0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->access$000(Lcom/htc/album/addons/slideshow/Slideshow3D;)Lcom/htc/album/modules/ui/ControlBarManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D$1;->this$0:Lcom/htc/album/addons/slideshow/Slideshow3D;

    #calls: Lcom/htc/album/addons/slideshow/Slideshow3D;->updateControlBar()V
    invoke-static {v0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->access$100(Lcom/htc/album/addons/slideshow/Slideshow3D;)V

    .line 556
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
