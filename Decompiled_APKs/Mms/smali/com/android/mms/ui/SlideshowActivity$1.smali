.class Lcom/android/mms/ui/SlideshowActivity$1;
.super Landroid/os/Handler;
.source "SlideshowActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideshowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideshowActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideshowActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowActivity$1;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 109
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 124
    :goto_0
    return-void

    .line 112
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$1;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->access$100(Lcom/android/mms/ui/SlideshowActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/SlideshowActivity$1$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/SlideshowActivity$1$1;-><init>(Lcom/android/mms/ui/SlideshowActivity$1;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
