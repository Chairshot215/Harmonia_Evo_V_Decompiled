.class Lcom/htc/video/HeadSetHelper$A2dpServiceListener;
.super Ljava/lang/Object;
.source "HeadSetHelper.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/video/HeadSetHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "A2dpServiceListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 0
    .parameter "profile"
    .parameter "proxy"

    .prologue
    .line 34
    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    .end local p2
    invoke-static {p2}, Lcom/htc/video/HeadSetHelper;->access$002(Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 35
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 1
    .parameter "profile"

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/htc/video/HeadSetHelper;->access$002(Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 39
    return-void
.end method
