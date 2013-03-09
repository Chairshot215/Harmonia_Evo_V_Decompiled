.class public Lcom/google/android/location/NetworkProvider;
.super Ljava/lang/Object;
.source "NetworkProvider.java"

# interfaces
.implements Lcom/google/android/location/os/Callbacks;


# instance fields
.field final locator:Lcom/google/android/location/NetworkLocator;

.field final stats:Lcom/google/android/location/Stats;


# direct methods
.method public constructor <init>(Lcom/google/android/location/os/Os;Lcom/google/android/location/cache/PersistentState;)V
    .locals 3
    .parameter "os"
    .parameter "state"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/google/android/location/Stats;

    invoke-direct {v0}, Lcom/google/android/location/Stats;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/NetworkProvider;->stats:Lcom/google/android/location/Stats;

    .line 29
    new-instance v0, Lcom/google/android/location/NetworkLocator;

    iget-object v1, p0, Lcom/google/android/location/NetworkProvider;->stats:Lcom/google/android/location/Stats;

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/location/NetworkLocator;-><init>(Lcom/google/android/location/os/Os;Lcom/google/android/location/cache/PersistentState;Lcom/google/android/location/Stats;)V

    iput-object v0, p0, Lcom/google/android/location/NetworkProvider;->locator:Lcom/google/android/location/NetworkLocator;

    .line 31
    iget-object v0, p0, Lcom/google/android/location/NetworkProvider;->stats:Lcom/google/android/location/Stats;

    invoke-interface {p1}, Lcom/google/android/location/os/Os;->millisSinceBoot()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p2}, Lcom/google/android/location/Stats;->reset(JLcom/google/android/location/cache/PersistentState;)V

    .line 32
    invoke-interface {p1, p0}, Lcom/google/android/location/os/Os;->registerCallbacks(Lcom/google/android/location/os/Callbacks;)V

    .line 33
    return-void
.end method


# virtual methods
.method public airplaneModeChanged(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/location/NetworkProvider;->locator:Lcom/google/android/location/NetworkLocator;

    invoke-virtual {v0, p1}, Lcom/google/android/location/NetworkLocator;->airplaneModeChanged(Z)V

    .line 85
    return-void
.end method

.method public alarmRing(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 50
    packed-switch p1, :pswitch_data_0

    .line 55
    :goto_0
    return-void

    .line 52
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/location/NetworkProvider;->locator:Lcom/google/android/location/NetworkLocator;

    invoke-virtual {v0}, Lcom/google/android/location/NetworkLocator;->alarmRing()V

    goto :goto_0

    .line 50
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public cellScanResults(Lcom/google/android/location/data/CellState;)V
    .locals 1
    .parameter "cellState"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/location/NetworkProvider;->locator:Lcom/google/android/location/NetworkLocator;

    invoke-virtual {v0, p1}, Lcom/google/android/location/NetworkLocator;->cellScanResults(Lcom/google/android/location/data/CellState;)V

    .line 60
    return-void
.end method

.method public cellSignalStrength(I)V
    .locals 1
    .parameter "signalStrength"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/location/NetworkProvider;->locator:Lcom/google/android/location/NetworkLocator;

    invoke-virtual {v0, p1}, Lcom/google/android/location/NetworkLocator;->cellSignalStrength(I)V

    .line 65
    return-void
.end method

.method public glsQueryResponse(Lcom/google/common/io/protocol/ProtoBuf;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/location/NetworkProvider;->locator:Lcom/google/android/location/NetworkLocator;

    invoke-virtual {v0, p1}, Lcom/google/android/location/NetworkLocator;->glsQueryResponse(Lcom/google/common/io/protocol/ProtoBuf;)V

    .line 70
    return-void
.end method

.method public setPeriod(IZ)V
    .locals 1
    .parameter "periodSecs"
    .parameter "trigger"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/location/NetworkProvider;->locator:Lcom/google/android/location/NetworkLocator;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/location/NetworkLocator;->setPeriod(IZ)V

    .line 46
    return-void
.end method

.method public wifiScanResults(Lcom/google/android/location/data/WifiScan;)V
    .locals 1
    .parameter "wifiScan"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/location/NetworkProvider;->locator:Lcom/google/android/location/NetworkLocator;

    invoke-virtual {v0, p1}, Lcom/google/android/location/NetworkLocator;->wifiScanResults(Lcom/google/android/location/data/WifiScan;)V

    .line 75
    return-void
.end method

.method public wifiStateChanged(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/location/NetworkProvider;->locator:Lcom/google/android/location/NetworkLocator;

    invoke-virtual {v0, p1}, Lcom/google/android/location/NetworkLocator;->wifiStateChanged(Z)V

    .line 80
    return-void
.end method
