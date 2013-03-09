.class final Lcom/coremobility/integration/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# instance fields
.field final synthetic a:Lcom/coremobility/integration/b;


# direct methods
.method constructor <init>(Lcom/coremobility/integration/b;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/integration/c;->a:Lcom/coremobility/integration/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1

    iget-object v0, p0, Lcom/coremobility/integration/c;->a:Lcom/coremobility/integration/b;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    invoke-static {v0, p2}, Lcom/coremobility/integration/b;->a(Lcom/coremobility/integration/b;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    return-void
.end method

.method public final onServiceDisconnected(I)V
    .locals 2

    iget-object v0, p0, Lcom/coremobility/integration/c;->a:Lcom/coremobility/integration/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coremobility/integration/b;->a(Lcom/coremobility/integration/b;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    return-void
.end method
