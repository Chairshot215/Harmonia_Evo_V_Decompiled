.class public final Lcom/google/android/location/data/WifiScan$Device;
.super Ljava/lang/Object;
.source "WifiScan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/location/data/WifiScan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Device"
.end annotation


# instance fields
.field public final mac:Ljava/lang/Long;

.field public final rssi:I

.field public final ssid:Ljava/lang/String;


# direct methods
.method public constructor <init>(JILjava/lang/String;)V
    .locals 1
    .parameter "mac"
    .parameter "rssi"
    .parameter "ssid"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/data/WifiScan$Device;->mac:Ljava/lang/Long;

    .line 33
    iput p3, p0, Lcom/google/android/location/data/WifiScan$Device;->rssi:I

    .line 34
    if-nez p4, :cond_0

    const-string p4, ""

    .end local p4
    :cond_0
    iput-object p4, p0, Lcom/google/android/location/data/WifiScan$Device;->ssid:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public static append(Ljava/lang/StringBuilder;Lcom/google/android/location/data/WifiScan$Device;)V
    .locals 2
    .parameter "sb"
    .parameter "device"

    .prologue
    .line 54
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    iget-object v0, p1, Lcom/google/android/location/data/WifiScan$Device;->mac:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/location/data/WifiUtils;->macValueToHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    const-string v0, ", rssi="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget v0, p1, Lcom/google/android/location/data/WifiScan$Device;->rssi:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    const-string v0, ", ssid="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget-object v0, p1, Lcom/google/android/location/data/WifiScan$Device;->ssid:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    return-void
.end method

.method public static dump(Ljava/io/PrintWriter;Lcom/google/android/location/data/WifiScan$Device;)V
    .locals 2
    .parameter "out"
    .parameter "device"

    .prologue
    .line 64
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 65
    iget-object v0, p1, Lcom/google/android/location/data/WifiScan$Device;->mac:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/google/android/location/data/WifiScan$Device;->dumpMac(Ljava/io/PrintWriter;J)V

    .line 66
    const-string v0, ", rssi="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 67
    iget v0, p1, Lcom/google/android/location/data/WifiScan$Device;->rssi:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 68
    const-string v0, ", ssid="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 69
    iget-object v0, p1, Lcom/google/android/location/data/WifiScan$Device;->ssid:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 70
    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public static dumpMac(Ljava/io/PrintWriter;J)V
    .locals 9
    .parameter "out"
    .parameter "mac"

    .prologue
    const/16 v8, 0x2d

    const-wide/16 v6, 0xff

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 74
    const-string v0, "%02X"

    new-array v1, v5, [Ljava/lang/Object;

    const/16 v2, 0x28

    shr-long v2, p1, v2

    and-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 75
    invoke-virtual {p0, v8}, Ljava/io/PrintWriter;->print(C)V

    .line 76
    const-string v0, "%02X"

    new-array v1, v5, [Ljava/lang/Object;

    const/16 v2, 0x20

    shr-long v2, p1, v2

    and-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 77
    invoke-virtual {p0, v8}, Ljava/io/PrintWriter;->print(C)V

    .line 78
    const-string v0, "%02X"

    new-array v1, v5, [Ljava/lang/Object;

    const/16 v2, 0x18

    shr-long v2, p1, v2

    and-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 79
    invoke-virtual {p0, v8}, Ljava/io/PrintWriter;->print(C)V

    .line 80
    const-string v0, "%02X"

    new-array v1, v5, [Ljava/lang/Object;

    const/16 v2, 0x10

    shr-long v2, p1, v2

    and-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 81
    invoke-virtual {p0, v8}, Ljava/io/PrintWriter;->print(C)V

    .line 82
    const-string v0, "%02X"

    new-array v1, v5, [Ljava/lang/Object;

    const/16 v2, 0x8

    shr-long v2, p1, v2

    and-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 83
    invoke-virtual {p0, v8}, Ljava/io/PrintWriter;->print(C)V

    .line 84
    const-string v0, "%02X"

    new-array v1, v5, [Ljava/lang/Object;

    and-long v2, p1, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 85
    return-void
.end method


# virtual methods
.method public createProto()Lcom/google/common/io/protocol/ProtoBuf;
    .locals 4

    .prologue
    .line 41
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/android/location/protocol/LocserverMessageTypes;->GWIFI_DEVICE:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 42
    .local v0, wifiDevice:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/location/data/WifiScan$Device;->mac:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/location/data/WifiUtils;->macValueToHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 43
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/location/data/WifiScan$Device;->rssi:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 44
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/location/data/WifiScan$Device;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 45
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device [mac="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/data/WifiScan$Device;->mac:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/location/data/WifiScan$Device;->rssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
