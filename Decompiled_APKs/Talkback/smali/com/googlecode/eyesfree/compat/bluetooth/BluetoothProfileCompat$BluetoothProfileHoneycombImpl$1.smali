.class Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompat$BluetoothProfileHoneycombImpl$1;
.super Ljava/lang/Object;
.source "BluetoothProfileCompat.java"

# interfaces
.implements Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompatHoneycomb$ServiceListenerBridge;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompat$BluetoothProfileHoneycombImpl;->newServiceListener(Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompat$ServiceListenerCompat;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompat$BluetoothProfileHoneycombImpl;

.field private final synthetic val$listener:Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompat$ServiceListenerCompat;


# direct methods
.method constructor <init>(Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompat$BluetoothProfileHoneycombImpl;Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompat$ServiceListenerCompat;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompat$BluetoothProfileHoneycombImpl$1;->this$1:Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompat$BluetoothProfileHoneycombImpl;

    iput-object p2, p0, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompat$BluetoothProfileHoneycombImpl$1;->val$listener:Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompat$ServiceListenerCompat;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILjava/lang/Object;)V
    .locals 1
    .parameter "profile"
    .parameter "proxy"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompat$BluetoothProfileHoneycombImpl$1;->val$listener:Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompat$ServiceListenerCompat;

    invoke-virtual {v0, p1, p2}, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompat$ServiceListenerCompat;->onServiceConnected(ILjava/lang/Object;)V

    .line 48
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 1
    .parameter "profile"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompat$BluetoothProfileHoneycombImpl$1;->val$listener:Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompat$ServiceListenerCompat;

    invoke-virtual {v0, p1}, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompat$ServiceListenerCompat;->onServiceDisconnected(I)V

    .line 53
    return-void
.end method
