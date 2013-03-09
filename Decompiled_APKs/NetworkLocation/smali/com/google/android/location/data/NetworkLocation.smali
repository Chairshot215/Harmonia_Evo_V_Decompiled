.class public Lcom/google/android/location/data/NetworkLocation;
.super Ljava/lang/Object;
.source "NetworkLocation.java"


# instance fields
.field public final bestResult:Lcom/google/android/location/data/LocatorResult;

.field public final cellResult:Lcom/google/android/location/data/CellLocatorResult;

.field public final glsResult:Lcom/google/android/location/data/GlsLocatorResult;

.field public final wifiResult:Lcom/google/android/location/data/WifiLocatorResult;


# direct methods
.method public constructor <init>(Lcom/google/android/location/data/LocatorResult;Lcom/google/android/location/data/WifiLocatorResult;Lcom/google/android/location/data/CellLocatorResult;Lcom/google/android/location/data/GlsLocatorResult;)V
    .locals 2
    .parameter "bestResult"
    .parameter "wifiResult"
    .parameter "cellResult"
    .parameter "glsResult"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/google/android/location/data/NetworkLocation;->bestResult:Lcom/google/android/location/data/LocatorResult;

    .line 35
    iput-object p2, p0, Lcom/google/android/location/data/NetworkLocation;->wifiResult:Lcom/google/android/location/data/WifiLocatorResult;

    .line 36
    iput-object p3, p0, Lcom/google/android/location/data/NetworkLocation;->cellResult:Lcom/google/android/location/data/CellLocatorResult;

    .line 37
    iput-object p4, p0, Lcom/google/android/location/data/NetworkLocation;->glsResult:Lcom/google/android/location/data/GlsLocatorResult;

    .line 38
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/google/android/location/data/LocatorResult;->status:Lcom/google/android/location/data/LocatorResult$ResultStatus;

    sget-object v1, Lcom/google/android/location/data/LocatorResult$ResultStatus;->OK:Lcom/google/android/location/data/LocatorResult$ResultStatus;

    if-eq v0, v1, :cond_0

    .line 39
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid Args"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .parameter "out"

    .prologue
    .line 87
    const-string v0, "NetworkLocation [\n bestResult="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/google/android/location/data/NetworkLocation;->bestResult:Lcom/google/android/location/data/LocatorResult;

    if-nez v0, :cond_1

    .line 89
    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 97
    :cond_0
    :goto_0
    const-string v0, "\n wifiResult="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/google/android/location/data/NetworkLocation;->wifiResult:Lcom/google/android/location/data/WifiLocatorResult;

    invoke-static {p1, v0}, Lcom/google/android/location/data/WifiLocatorResult;->dump(Ljava/io/PrintWriter;Lcom/google/android/location/data/WifiLocatorResult;)V

    .line 99
    const-string v0, "\n cellResult="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/google/android/location/data/NetworkLocation;->cellResult:Lcom/google/android/location/data/CellLocatorResult;

    invoke-static {p1, v0}, Lcom/google/android/location/data/CellLocatorResult;->dump(Ljava/io/PrintWriter;Lcom/google/android/location/data/CellLocatorResult;)V

    .line 101
    const-string v0, "\n glsResult="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/google/android/location/data/NetworkLocation;->glsResult:Lcom/google/android/location/data/GlsLocatorResult;

    invoke-static {p1, v0}, Lcom/google/android/location/data/GlsLocatorResult;->dump(Ljava/io/PrintWriter;Lcom/google/android/location/data/GlsLocatorResult;)V

    .line 103
    const-string v0, "\n]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 104
    return-void

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/data/NetworkLocation;->bestResult:Lcom/google/android/location/data/LocatorResult;

    iget-object v1, p0, Lcom/google/android/location/data/NetworkLocation;->wifiResult:Lcom/google/android/location/data/WifiLocatorResult;

    if-ne v0, v1, :cond_2

    .line 91
    const-string v0, "WIFI"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/data/NetworkLocation;->bestResult:Lcom/google/android/location/data/LocatorResult;

    iget-object v1, p0, Lcom/google/android/location/data/NetworkLocation;->cellResult:Lcom/google/android/location/data/CellLocatorResult;

    if-ne v0, v1, :cond_3

    .line 93
    const-string v0, "CELL"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/data/NetworkLocation;->bestResult:Lcom/google/android/location/data/LocatorResult;

    iget-object v1, p0, Lcom/google/android/location/data/NetworkLocation;->glsResult:Lcom/google/android/location/data/GlsLocatorResult;

    if-ne v0, v1, :cond_0

    .line 95
    const-string v0, "GLS"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCellResultPrimary()Lcom/google/android/location/data/CellState;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/location/data/NetworkLocation;->cellResult:Lcom/google/android/location/data/CellLocatorResult;

    if-nez v0, :cond_0

    .line 58
    const/4 v0, 0x0

    .line 60
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/location/data/NetworkLocation;->cellResult:Lcom/google/android/location/data/CellLocatorResult;

    iget-object v0, v0, Lcom/google/android/location/data/CellLocatorResult;->cellStatus:Lcom/google/android/location/data/CellStatus;

    invoke-virtual {v0}, Lcom/google/android/location/data/CellStatus;->getPrimary()Lcom/google/android/location/data/CellState;

    move-result-object v0

    goto :goto_0
.end method

.method public getWifiResultScan()Lcom/google/android/location/data/WifiScan;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/location/data/NetworkLocation;->wifiResult:Lcom/google/android/location/data/WifiLocatorResult;

    if-nez v0, :cond_0

    .line 48
    const/4 v0, 0x0

    .line 50
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/location/data/NetworkLocation;->wifiResult:Lcom/google/android/location/data/WifiLocatorResult;

    iget-object v0, v0, Lcom/google/android/location/data/WifiLocatorResult;->wifiScan:Lcom/google/android/location/data/WifiScan;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1388

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 66
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "NetworkLocation [\n bestResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget-object v1, p0, Lcom/google/android/location/data/NetworkLocation;->bestResult:Lcom/google/android/location/data/LocatorResult;

    if-nez v1, :cond_1

    .line 68
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    :cond_0
    :goto_0
    const-string v1, "\n wifiResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget-object v1, p0, Lcom/google/android/location/data/NetworkLocation;->wifiResult:Lcom/google/android/location/data/WifiLocatorResult;

    invoke-static {v0, v1}, Lcom/google/android/location/data/WifiLocatorResult;->append(Ljava/lang/StringBuilder;Lcom/google/android/location/data/WifiLocatorResult;)V

    .line 78
    const-string v1, "\n cellResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget-object v1, p0, Lcom/google/android/location/data/NetworkLocation;->cellResult:Lcom/google/android/location/data/CellLocatorResult;

    invoke-static {v0, v1}, Lcom/google/android/location/data/CellLocatorResult;->append(Ljava/lang/StringBuilder;Lcom/google/android/location/data/CellLocatorResult;)V

    .line 80
    const-string v1, "\n glsResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget-object v1, p0, Lcom/google/android/location/data/NetworkLocation;->glsResult:Lcom/google/android/location/data/GlsLocatorResult;

    invoke-static {v0, v1}, Lcom/google/android/location/data/GlsLocatorResult;->append(Ljava/lang/StringBuilder;Lcom/google/android/location/data/GlsLocatorResult;)V

    .line 82
    const-string v1, "\n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 69
    :cond_1
    iget-object v1, p0, Lcom/google/android/location/data/NetworkLocation;->bestResult:Lcom/google/android/location/data/LocatorResult;

    iget-object v2, p0, Lcom/google/android/location/data/NetworkLocation;->wifiResult:Lcom/google/android/location/data/WifiLocatorResult;

    if-ne v1, v2, :cond_2

    .line 70
    const-string v1, "WIFI"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 71
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/data/NetworkLocation;->bestResult:Lcom/google/android/location/data/LocatorResult;

    iget-object v2, p0, Lcom/google/android/location/data/NetworkLocation;->cellResult:Lcom/google/android/location/data/CellLocatorResult;

    if-ne v1, v2, :cond_3

    .line 72
    const-string v1, "CELL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 73
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/data/NetworkLocation;->bestResult:Lcom/google/android/location/data/LocatorResult;

    iget-object v2, p0, Lcom/google/android/location/data/NetworkLocation;->glsResult:Lcom/google/android/location/data/GlsLocatorResult;

    if-ne v1, v2, :cond_0

    .line 74
    const-string v1, "GLS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
