.class Lcom/android/settings/bluetooth/CachedBluetoothDevice$1;
.super Ljava/util/HashMap;
.source "CachedBluetoothDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/CachedBluetoothDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/CachedBluetoothDevice;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 3
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDevice$1;->this$0:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 59
    const-string v0, "Blue Multi"

    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v0, "HTC Car V100"

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-void
.end method
