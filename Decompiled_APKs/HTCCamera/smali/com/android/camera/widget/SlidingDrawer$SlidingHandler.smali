.class Lcom/android/camera/widget/SlidingDrawer$SlidingHandler;
.super Landroid/os/Handler;
.source "SlidingDrawer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/widget/SlidingDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlidingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/widget/SlidingDrawer;


# direct methods
.method private constructor <init>(Lcom/android/camera/widget/SlidingDrawer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/widget/SlidingDrawer$SlidingHandler;->this$0:Lcom/android/camera/widget/SlidingDrawer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/widget/SlidingDrawer;Lcom/android/camera/widget/SlidingDrawer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/widget/SlidingDrawer$SlidingHandler;-><init>(Lcom/android/camera/widget/SlidingDrawer;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/android/camera/widget/SlidingDrawer$SlidingHandler;->this$0:Lcom/android/camera/widget/SlidingDrawer;

    #calls: Lcom/android/camera/widget/SlidingDrawer;->doAnimation()V
    invoke-static {v0}, Lcom/android/camera/widget/SlidingDrawer;->access$500(Lcom/android/camera/widget/SlidingDrawer;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/camera/widget/SlidingDrawer$SlidingHandler;->this$0:Lcom/android/camera/widget/SlidingDrawer;

    #calls: Lcom/android/camera/widget/SlidingDrawer;->doActionUp()V
    invoke-static {v0}, Lcom/android/camera/widget/SlidingDrawer;->access$600(Lcom/android/camera/widget/SlidingDrawer;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x7d0 -> :sswitch_1
    .end sparse-switch
.end method
