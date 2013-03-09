.class Lcom/android/camera/widget/PanoramaIndicatorView$1;
.super Landroid/os/Handler;
.source "PanoramaIndicatorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/widget/PanoramaIndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/widget/PanoramaIndicatorView;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/PanoramaIndicatorView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/widget/PanoramaIndicatorView$1;->this$0:Lcom/android/camera/widget/PanoramaIndicatorView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/widget/PanoramaIndicatorView$1;->this$0:Lcom/android/camera/widget/PanoramaIndicatorView;

    #calls: Lcom/android/camera/widget/PanoramaIndicatorView;->updateFrameOffset()V
    invoke-static {v0}, Lcom/android/camera/widget/PanoramaIndicatorView;->access$000(Lcom/android/camera/widget/PanoramaIndicatorView;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/widget/PanoramaIndicatorView$1;->this$0:Lcom/android/camera/widget/PanoramaIndicatorView;

    #calls: Lcom/android/camera/widget/PanoramaIndicatorView;->updateOrientation()V
    invoke-static {v0}, Lcom/android/camera/widget/PanoramaIndicatorView;->access$100(Lcom/android/camera/widget/PanoramaIndicatorView;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
