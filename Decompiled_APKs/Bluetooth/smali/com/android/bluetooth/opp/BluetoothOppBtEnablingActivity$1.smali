.class Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity$1;
.super Landroid/os/Handler;
.source "BluetoothOppBtEnablingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 115
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 123
    :goto_0
    return-void

    .line 118
    :pswitch_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;

    #calls: Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->cancelSendingProgress()V
    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->access$000(Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;)V

    goto :goto_0

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
