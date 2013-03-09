.class final Lcom/htc/dockmode/bluetooth/HtcBluetoothConnector$2;
.super Ljava/lang/Object;
.source "HtcBluetoothConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/dockmode/bluetooth/HtcBluetoothConnector;->turnOffBluetooth(J)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$adapter:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothConnector$2;->val$adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothConnector$2;->val$adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 102
    return-void
.end method
