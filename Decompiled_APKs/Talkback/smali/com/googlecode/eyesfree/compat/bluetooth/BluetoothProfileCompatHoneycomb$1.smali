.class Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompatHoneycomb$1;
.super Ljava/lang/Object;
.source "BluetoothProfileCompatHoneycomb.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompatHoneycomb;->newServiceListener(Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompatHoneycomb$ServiceListenerBridge;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$bridge:Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompatHoneycomb$ServiceListenerBridge;


# direct methods
.method constructor <init>(Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompatHoneycomb$ServiceListenerBridge;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompatHoneycomb$1;->val$bridge:Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompatHoneycomb$ServiceListenerBridge;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1
    .parameter "profile"
    .parameter "proxy"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompatHoneycomb$1;->val$bridge:Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompatHoneycomb$ServiceListenerBridge;

    invoke-interface {v0, p1, p2}, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompatHoneycomb$ServiceListenerBridge;->onServiceConnected(ILjava/lang/Object;)V

    .line 41
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 1
    .parameter "profile"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompatHoneycomb$1;->val$bridge:Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompatHoneycomb$ServiceListenerBridge;

    invoke-interface {v0, p1}, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompatHoneycomb$ServiceListenerBridge;->onServiceDisconnected(I)V

    .line 46
    return-void
.end method
