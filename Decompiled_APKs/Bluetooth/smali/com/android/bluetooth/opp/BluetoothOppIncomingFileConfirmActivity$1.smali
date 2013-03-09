.class Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$1;
.super Landroid/content/BroadcastReceiver;
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
    .line 82
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 85
    const-string v0, "android.btopp.intent.action.USER_CONFIRMATION_TIMEOUT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;

    #calls: Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->onTimeout()V
    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->access$000(Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;)V

    goto :goto_0
.end method
