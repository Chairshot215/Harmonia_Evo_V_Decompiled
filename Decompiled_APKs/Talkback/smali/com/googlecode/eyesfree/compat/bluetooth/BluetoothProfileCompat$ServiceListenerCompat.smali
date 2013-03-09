.class public abstract Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompat$ServiceListenerCompat;
.super Ljava/lang/Object;
.source "BluetoothProfileCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ServiceListenerCompat"
.end annotation


# static fields
.field static final CLASS_ServiceListenerCompat:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field final mListener:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 135
    const-string v0, "android.bluetooth.BluetoothProfile.ServiceListener"

    invoke-static {v0}, Lcom/googlecode/eyesfree/compat/CompatUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 134
    sput-object v0, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompat$ServiceListenerCompat;->CLASS_ServiceListenerCompat:Ljava/lang/Class;

    .line 133
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    invoke-static {}, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompat;->access$0()Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompat$BluetoothProfileVersionImpl;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompat$BluetoothProfileVersionImpl;->newServiceListener(Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompat$ServiceListenerCompat;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/eyesfree/compat/bluetooth/BluetoothProfileCompat$ServiceListenerCompat;->mListener:Ljava/lang/Object;

    .line 141
    return-void
.end method


# virtual methods
.method public abstract onServiceConnected(ILjava/lang/Object;)V
.end method

.method public abstract onServiceDisconnected(I)V
.end method
