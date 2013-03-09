.class Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$2;
.super Landroid/os/Handler;
.source "BluetoothOppIncomingFileConfirmActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 220
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 228
    :goto_0
    return-void

    .line 223
    :pswitch_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->finish()V

    goto :goto_0

    .line 220
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
