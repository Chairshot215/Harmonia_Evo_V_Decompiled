.class Lcom/android/mms/util/SendMMSHelper$CMediaPickerHandler;
.super Landroid/os/Handler;
.source "MsgForwardReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/SendMMSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CMediaPickerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/SendMMSHelper;


# direct methods
.method constructor <init>(Lcom/android/mms/util/SendMMSHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 991
    iput-object p1, p0, Lcom/android/mms/util/SendMMSHelper$CMediaPickerHandler;->this$0:Lcom/android/mms/util/SendMMSHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 993
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 998
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1001
    :goto_0
    return-void

    .line 995
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/util/SendMMSHelper$CMediaPickerHandler;->this$0:Lcom/android/mms/util/SendMMSHelper;

    #getter for: Lcom/android/mms/util/SendMMSHelper;->mMediaPicker:Lcom/android/mms/ui/MediaPicker;
    invoke-static {v0}, Lcom/android/mms/util/SendMMSHelper;->access$200(Lcom/android/mms/util/SendMMSHelper;)Lcom/android/mms/ui/MediaPicker;

    move-result-object v1

    const/16 v2, 0x12

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v1, v2, v0}, Lcom/android/mms/ui/MediaPicker;->onMediaPicked(ILandroid/content/Intent;)Lcom/android/mms/model/MediaModel;

    goto :goto_0

    .line 993
    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch
.end method
