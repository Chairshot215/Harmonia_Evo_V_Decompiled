.class public Lcom/google/android/location/data/WifiLocatorResult;
.super Lcom/google/android/location/data/LocatorResult;
.source "WifiLocatorResult.java"


# instance fields
.field public final wifiCacheEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/location/data/WifiApPosition;",
            ">;"
        }
    .end annotation
.end field

.field public final wifiScan:Lcom/google/android/location/data/WifiScan;


# direct methods
.method public constructor <init>(Lcom/google/android/location/data/Position;Lcom/google/android/location/data/LocatorResult$ResultStatus;JLcom/google/android/location/data/WifiScan;Ljava/util/Map;)V
    .locals 0
    .parameter "position"
    .parameter "status"
    .parameter "reportTime"
    .parameter "wifiScan"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/location/data/Position;",
            "Lcom/google/android/location/data/LocatorResult$ResultStatus;",
            "J",
            "Lcom/google/android/location/data/WifiScan;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/location/data/WifiApPosition;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p6, wifiCacheEntries:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/google/android/location/data/WifiApPosition;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/location/data/LocatorResult;-><init>(Lcom/google/android/location/data/Position;Lcom/google/android/location/data/LocatorResult$ResultStatus;J)V

    .line 34
    iput-object p5, p0, Lcom/google/android/location/data/WifiLocatorResult;->wifiScan:Lcom/google/android/location/data/WifiScan;

    .line 35
    iput-object p6, p0, Lcom/google/android/location/data/WifiLocatorResult;->wifiCacheEntries:Ljava/util/Map;

    .line 36
    return-void
.end method

.method public static append(Ljava/lang/StringBuilder;Lcom/google/android/location/data/WifiLocatorResult;)V
    .locals 4
    .parameter "sb"
    .parameter "wifiLocatorResult"

    .prologue
    .line 45
    if-nez p1, :cond_0

    .line 46
    const-string v3, "null"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    :goto_0
    return-void

    .line 49
    :cond_0
    const-string v3, "WifiLocatorResult [wifiScan="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget-object v3, p1, Lcom/google/android/location/data/WifiLocatorResult;->wifiScan:Lcom/google/android/location/data/WifiScan;

    invoke-static {p0, v3}, Lcom/google/android/location/data/WifiScan;->append(Ljava/lang/StringBuilder;Lcom/google/android/location/data/WifiScan;)V

    .line 51
    const-string v3, ", Cache={"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget-object v3, p1, Lcom/google/android/location/data/WifiLocatorResult;->wifiCacheEntries:Ljava/util/Map;

    if-eqz v3, :cond_2

    .line 53
    const/4 v1, 0x1

    .line 54
    .local v1, first:Z
    iget-object v3, p1, Lcom/google/android/location/data/WifiLocatorResult;->wifiCacheEntries:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 55
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/google/android/location/data/WifiApPosition;>;"
    if-nez v1, :cond_1

    .line 56
    const-string v3, ", "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    :cond_1
    const/4 v1, 0x0

    .line 59
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    const-string v3, "="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/location/data/WifiApPosition;

    invoke-static {p0, v3}, Lcom/google/android/location/data/WifiApPosition;->append(Ljava/lang/StringBuilder;Lcom/google/android/location/data/WifiApPosition;)V

    goto :goto_1

    .line 64
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/google/android/location/data/WifiApPosition;>;"
    .end local v1           #first:Z
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_2
    const-string v3, "}, "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-static {p0, p1}, Lcom/google/android/location/data/LocatorResult;->append(Ljava/lang/StringBuilder;Lcom/google/android/location/data/LocatorResult;)V

    .line 66
    const-string v3, "]"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static dump(Ljava/io/PrintWriter;Lcom/google/android/location/data/WifiLocatorResult;)V
    .locals 5
    .parameter "out"
    .parameter "wifiLocatorResult"

    .prologue
    .line 70
    if-nez p1, :cond_0

    .line 71
    const-string v3, "null"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 92
    :goto_0
    return-void

    .line 74
    :cond_0
    const-string v3, "WifiLocatorResult [wifiScan="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 75
    iget-object v3, p1, Lcom/google/android/location/data/WifiLocatorResult;->wifiScan:Lcom/google/android/location/data/WifiScan;

    invoke-static {p0, v3}, Lcom/google/android/location/data/WifiScan;->dump(Ljava/io/PrintWriter;Lcom/google/android/location/data/WifiScan;)V

    .line 76
    const-string v3, ", Cache={"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 77
    iget-object v3, p1, Lcom/google/android/location/data/WifiLocatorResult;->wifiCacheEntries:Ljava/util/Map;

    if-eqz v3, :cond_2

    .line 78
    const/4 v1, 0x1

    .line 79
    .local v1, first:Z
    iget-object v3, p1, Lcom/google/android/location/data/WifiLocatorResult;->wifiCacheEntries:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 80
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/google/android/location/data/WifiApPosition;>;"
    if-nez v1, :cond_1

    .line 81
    const-string v3, ", "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 83
    :cond_1
    const/4 v1, 0x0

    .line 84
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {p0, v3, v4}, Lcom/google/android/location/data/WifiScan$Device;->dumpMac(Ljava/io/PrintWriter;J)V

    .line 85
    const-string v3, "="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 86
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/location/data/WifiApPosition;

    invoke-static {p0, v3}, Lcom/google/android/location/data/WifiApPosition;->dump(Ljava/io/PrintWriter;Lcom/google/android/location/data/WifiApPosition;)V

    goto :goto_1

    .line 89
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/google/android/location/data/WifiApPosition;>;"
    .end local v1           #first:Z
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_2
    const-string v3, "}, "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 90
    invoke-static {p0, p1}, Lcom/google/android/location/data/LocatorResult;->dump(Ljava/io/PrintWriter;Lcom/google/android/location/data/LocatorResult;)V

    .line 91
    const-string v3, "]"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiLocatorResult [wifiScan="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/data/WifiLocatorResult;->wifiScan:Lcom/google/android/location/data/WifiScan;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", wifiCacheEntries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/data/WifiLocatorResult;->wifiCacheEntries:Ljava/util/Map;

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
