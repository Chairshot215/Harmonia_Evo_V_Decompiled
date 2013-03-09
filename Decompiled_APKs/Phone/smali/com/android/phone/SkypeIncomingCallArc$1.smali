.class Lcom/android/phone/SkypeIncomingCallArc$1;
.super Landroid/os/Handler;
.source "SkypeIncomingCallArc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SkypeIncomingCallArc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SkypeIncomingCallArc;


# direct methods
.method constructor <init>(Lcom/android/phone/SkypeIncomingCallArc;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/phone/SkypeIncomingCallArc$1;->this$0:Lcom/android/phone/SkypeIncomingCallArc;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 139
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 146
    :goto_0
    return-void

    .line 141
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/SkypeIncomingCallArc$1;->this$0:Lcom/android/phone/SkypeIncomingCallArc;

    #getter for: Lcom/android/phone/SkypeIncomingCallArc;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/SkypeIncomingCallArc;->access$000(Lcom/android/phone/SkypeIncomingCallArc;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 142
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->preventScreenOn(Z)V

    .line 143
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->forceWakeUpScreen()V

    goto :goto_0

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
