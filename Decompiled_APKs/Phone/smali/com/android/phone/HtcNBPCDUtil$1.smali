.class Lcom/android/phone/HtcNBPCDUtil$1;
.super Landroid/os/Handler;
.source "HtcNBPCDUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/HtcNBPCDUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/HtcNBPCDUtil;


# direct methods
.method constructor <init>(Lcom/android/phone/HtcNBPCDUtil;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/phone/HtcNBPCDUtil$1;->this$0:Lcom/android/phone/HtcNBPCDUtil;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 135
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 150
    :goto_0
    return-void

    .line 137
    :pswitch_0
    const-string v0, "HtcNBPCDUtil"

    const-string v1, "EVENT_NBPCD_INFO"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v1, p0, Lcom/android/phone/HtcNBPCDUtil$1;->this$0:Lcom/android/phone/HtcNBPCDUtil;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {v1, v0}, Lcom/android/phone/HtcNBPCDUtil;->handleNBPCDInfo(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 142
    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/HtcNBPCDUtil$1;->this$0:Lcom/android/phone/HtcNBPCDUtil;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {v1, v0}, Lcom/android/phone/HtcNBPCDUtil;->handleServiceStateChange(Landroid/os/AsyncResult;)V

    .line 143
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/phone/HtcNBPCDUtil$1;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 146
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/HtcNBPCDUtil$1;->this$0:Lcom/android/phone/HtcNBPCDUtil;

    #calls: Lcom/android/phone/HtcNBPCDUtil;->updateAreaCodeByMdn()V
    invoke-static {v0}, Lcom/android/phone/HtcNBPCDUtil;->access$000(Lcom/android/phone/HtcNBPCDUtil;)V

    goto :goto_0

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
