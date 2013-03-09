.class public Lcom/google/android/location/data/GlsLocatorResult;
.super Lcom/google/android/location/data/LocatorResult;
.source "GlsLocatorResult.java"


# instance fields
.field public final wifiScan:Lcom/google/android/location/data/WifiScan;


# direct methods
.method public constructor <init>(Lcom/google/android/location/data/Position;Lcom/google/android/location/data/LocatorResult$ResultStatus;JLcom/google/android/location/data/WifiScan;)V
    .locals 0
    .parameter "position"
    .parameter "status"
    .parameter "reportTime"
    .parameter "wifiScan"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/location/data/LocatorResult;-><init>(Lcom/google/android/location/data/Position;Lcom/google/android/location/data/LocatorResult$ResultStatus;J)V

    .line 39
    iput-object p5, p0, Lcom/google/android/location/data/GlsLocatorResult;->wifiScan:Lcom/google/android/location/data/WifiScan;

    .line 40
    return-void
.end method

.method public static append(Ljava/lang/StringBuilder;Lcom/google/android/location/data/GlsLocatorResult;)V
    .locals 1
    .parameter "sb"
    .parameter "glsLocatorResult"

    .prologue
    .line 75
    if-nez p1, :cond_0

    .line 76
    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    :goto_0
    return-void

    .line 79
    :cond_0
    const-string v0, "GlsLocatorResult [wifiScan="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    iget-object v0, p1, Lcom/google/android/location/data/GlsLocatorResult;->wifiScan:Lcom/google/android/location/data/WifiScan;

    invoke-static {p0, v0}, Lcom/google/android/location/data/WifiScan;->append(Ljava/lang/StringBuilder;Lcom/google/android/location/data/WifiScan;)V

    .line 81
    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-static {p0, p1}, Lcom/google/android/location/data/LocatorResult;->append(Ljava/lang/StringBuilder;Lcom/google/android/location/data/LocatorResult;)V

    .line 83
    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static dump(Ljava/io/PrintWriter;Lcom/google/android/location/data/GlsLocatorResult;)V
    .locals 1
    .parameter "out"
    .parameter "glsLocatorResult"

    .prologue
    .line 87
    if-nez p1, :cond_0

    .line 88
    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 96
    :goto_0
    return-void

    .line 91
    :cond_0
    const-string v0, "GlsLocatorResult [wifiScan="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 92
    iget-object v0, p1, Lcom/google/android/location/data/GlsLocatorResult;->wifiScan:Lcom/google/android/location/data/WifiScan;

    invoke-static {p0, v0}, Lcom/google/android/location/data/WifiScan;->dump(Ljava/io/PrintWriter;Lcom/google/android/location/data/WifiScan;)V

    .line 93
    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 94
    invoke-static {p0, p1}, Lcom/google/android/location/data/LocatorResult;->dump(Ljava/io/PrintWriter;Lcom/google/android/location/data/LocatorResult;)V

    .line 95
    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static fromGLocReply(Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/android/location/data/WifiScan;J)Lcom/google/android/location/data/GlsLocatorResult;
    .locals 12
    .parameter "response"
    .parameter "wifiScan"
    .parameter "reportedTime"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 44
    if-eqz p0, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    invoke-virtual {p0, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v11

    .line 48
    .local v11, replyElement:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {v11, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v11, v2}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {v11, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v9

    .line 51
    .local v9, location:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {v9, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    invoke-virtual {v9, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v10

    .line 53
    .local v10, point:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {v10, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v7

    .line 54
    .local v7, lat:I
    invoke-virtual {v10, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v8

    .line 55
    .local v8, lng:I
    const/4 v6, 0x0

    .line 56
    .local v6, accuracy:I
    invoke-virtual {v9, v3}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v9, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    mul-int/lit16 v6, v0, 0x3e8

    .line 59
    :cond_0
    const v0, 0x4c4b40

    if-gt v6, v0, :cond_1

    .line 60
    new-instance v0, Lcom/google/android/location/data/GlsLocatorResult;

    new-instance v1, Lcom/google/android/location/data/Position;

    invoke-direct {v1, v7, v8, v6}, Lcom/google/android/location/data/Position;-><init>(III)V

    sget-object v2, Lcom/google/android/location/data/LocatorResult$ResultStatus;->OK:Lcom/google/android/location/data/LocatorResult$ResultStatus;

    move-wide v3, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/data/GlsLocatorResult;-><init>(Lcom/google/android/location/data/Position;Lcom/google/android/location/data/LocatorResult$ResultStatus;JLcom/google/android/location/data/WifiScan;)V

    .line 66
    .end local v6           #accuracy:I
    .end local v7           #lat:I
    .end local v8           #lng:I
    .end local v9           #location:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v10           #point:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v11           #replyElement:Lcom/google/common/io/protocol/ProtoBuf;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GlsLocatorResult [wifiScan="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/data/GlsLocatorResult;->wifiScan:Lcom/google/android/location/data/WifiScan;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/google/android/location/data/LocatorResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
