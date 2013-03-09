.class Lcom/htc/album/addons/slideshow/SlideShowController$3;
.super Landroid/os/Handler;
.source "SlideShowController.java"


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
    .line 341
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideShowController$3;->this$0:Lcom/htc/album/addons/slideshow/SlideShowController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 344
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 354
    :goto_0
    :pswitch_0
    return-void

    .line 346
    :pswitch_1
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController$3;->this$0:Lcom/htc/album/addons/slideshow/SlideShowController;

    invoke-virtual {v0}, Lcom/htc/album/addons/slideshow/SlideShowController;->hide()V

    goto :goto_0

    .line 350
    :pswitch_2
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController$3;->this$0:Lcom/htc/album/addons/slideshow/SlideShowController;

    #calls: Lcom/htc/album/addons/slideshow/SlideShowController;->updatePausePlay()V
    invoke-static {v0}, Lcom/htc/album/addons/slideshow/SlideShowController;->access$000(Lcom/htc/album/addons/slideshow/SlideShowController;)V

    goto :goto_0

    .line 344
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
