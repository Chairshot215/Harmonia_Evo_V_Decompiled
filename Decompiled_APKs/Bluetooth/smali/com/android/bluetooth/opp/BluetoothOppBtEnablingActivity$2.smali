.class Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity$2;
.super Landroid/content/BroadcastReceiver;
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
    .line 126
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 129
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v2, -0x8000

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 134
    :pswitch_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->mTimeoutHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->access$100(Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 135
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;

    #calls: Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->dismissProgressDialog()V
    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->access$200(Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;)V

    .line 136
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;

    invoke-virtual {v1}, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->finish()V

    goto :goto_0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method
