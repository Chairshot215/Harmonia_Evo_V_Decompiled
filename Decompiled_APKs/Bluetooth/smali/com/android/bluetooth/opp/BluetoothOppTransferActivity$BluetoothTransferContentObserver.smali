.class Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$BluetoothTransferContentObserver;
.super Landroid/database/ContentObserver;
.source "BluetoothOppTransferActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothTransferContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$BluetoothTransferContentObserver;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;

    .line 123
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 124
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$BluetoothTransferContentObserver;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;

    const/4 v1, 0x1

    #setter for: Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mNeedUpdateButton:Z
    invoke-static {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->access$002(Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;Z)Z

    .line 130
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$BluetoothTransferContentObserver;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;

    #calls: Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->updateProgressbar()V
    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->access$100(Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;)V

    .line 131
    return-void
.end method
