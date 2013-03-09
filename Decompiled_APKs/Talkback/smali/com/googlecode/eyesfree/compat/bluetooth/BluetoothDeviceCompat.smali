.class public Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothDeviceCompat;
.super Ljava/lang/Object;
.source "BluetoothDeviceCompat.java"


# instance fields
.field private final mReceiver:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter "receiver"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothDeviceCompat;->mReceiver:Ljava/lang/Object;

    .line 24
    return-void
.end method


# virtual methods
.method public getObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothDeviceCompat;->mReceiver:Ljava/lang/Object;

    return-object v0
.end method
