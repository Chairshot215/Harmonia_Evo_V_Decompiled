.class Lcom/htc/launcher/widget/SlidingDrawer$SlidingHandler;
.super Landroid/os/Handler;
.source "SlidingDrawer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/widget/SlidingDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlidingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/widget/SlidingDrawer;


# direct methods
.method private constructor <init>(Lcom/htc/launcher/widget/SlidingDrawer;)V
    .locals 0
    .parameter

    .prologue
    .line 1027
    iput-object p1, p0, Lcom/htc/launcher/widget/SlidingDrawer$SlidingHandler;->this$0:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/launcher/widget/SlidingDrawer;Lcom/htc/launcher/widget/SlidingDrawer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1027
    invoke-direct {p0, p1}, Lcom/htc/launcher/widget/SlidingDrawer$SlidingHandler;-><init>(Lcom/htc/launcher/widget/SlidingDrawer;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "m"

    .prologue
    .line 1029
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1034
    :goto_0
    return-void

    .line 1031
    :pswitch_0
    iget-object v0, p0, Lcom/htc/launcher/widget/SlidingDrawer$SlidingHandler;->this$0:Lcom/htc/launcher/widget/SlidingDrawer;

    #calls: Lcom/htc/launcher/widget/SlidingDrawer;->doAnimation()V
    invoke-static {v0}, Lcom/htc/launcher/widget/SlidingDrawer;->access$700(Lcom/htc/launcher/widget/SlidingDrawer;)V

    goto :goto_0

    .line 1029
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
