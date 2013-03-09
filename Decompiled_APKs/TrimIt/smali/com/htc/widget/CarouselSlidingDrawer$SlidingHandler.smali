.class Lcom/htc/widget/CarouselSlidingDrawer$SlidingHandler;
.super Landroid/os/Handler;
.source "CarouselSlidingDrawer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/CarouselSlidingDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlidingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/CarouselSlidingDrawer;


# direct methods
.method private constructor <init>(Lcom/htc/widget/CarouselSlidingDrawer;)V
    .locals 0
    .parameter

    .prologue
    .line 1029
    iput-object p1, p0, Lcom/htc/widget/CarouselSlidingDrawer$SlidingHandler;->this$0:Lcom/htc/widget/CarouselSlidingDrawer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/CarouselSlidingDrawer;Lcom/htc/widget/CarouselSlidingDrawer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1029
    invoke-direct {p0, p1}, Lcom/htc/widget/CarouselSlidingDrawer$SlidingHandler;-><init>(Lcom/htc/widget/CarouselSlidingDrawer;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "m"

    .prologue
    .line 1031
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1036
    :goto_0
    return-void

    .line 1033
    :pswitch_0
    iget-object v0, p0, Lcom/htc/widget/CarouselSlidingDrawer$SlidingHandler;->this$0:Lcom/htc/widget/CarouselSlidingDrawer;

    #calls: Lcom/htc/widget/CarouselSlidingDrawer;->doAnimation()V
    invoke-static {v0}, Lcom/htc/widget/CarouselSlidingDrawer;->access$400(Lcom/htc/widget/CarouselSlidingDrawer;)V

    goto :goto_0

    .line 1031
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
