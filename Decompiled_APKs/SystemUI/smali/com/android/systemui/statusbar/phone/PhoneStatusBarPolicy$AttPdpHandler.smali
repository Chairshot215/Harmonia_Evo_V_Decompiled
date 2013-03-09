.class Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$AttPdpHandler;
.super Landroid/os/Handler;
.source "PhoneStatusBarPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AttPdpHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$AttPdpHandler;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/16 v4, 0x384

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$AttPdpHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$AttPdpHandler;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->getATTDataType()[I
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$2100(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)[I

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$AttPdpHandler;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    iget v2, p1, Landroid/os/Message;->arg1:I

    #setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCurrentPos:I
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$2202(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;I)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$AttPdpHandler;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    iget v2, p1, Landroid/os/Message;->arg2:I

    #setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mImgLength:I
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$2302(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;I)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$AttPdpHandler;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$AttPdpHandler;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCurrentPos:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$2200(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$AttPdpHandler;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mImgLength:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$2300(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)I

    move-result v3

    rem-int/2addr v2, v3

    #setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCurrentPos:I
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$2202(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;I)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$AttPdpHandler;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mAttPdpHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$2400(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$AttPdpHandler;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCurrentPos:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$2200(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$AttPdpHandler;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mImgLength:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$2300(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)I

    move-result v3

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$AttPdpHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$AttPdpHandler;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$2500(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Landroid/app/StatusBarManager;

    move-result-object v1

    const-string v2, "data_connection"

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$AttPdpHandler;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCurrentPos:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$2200(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)I

    move-result v3

    aget v3, v0, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_0
    .end packed-switch
.end method
