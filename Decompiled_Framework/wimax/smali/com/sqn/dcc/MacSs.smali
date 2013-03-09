.class public Lcom/sqn/dcc/MacSs;
.super Ljava/lang/Object;
.source "MacSs.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetAdditionalPhyStats(Lcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Lcom/sqn/dcc/AdditionalPhyStats;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0}, Lcom/sqn/dcc/agscMacSsImpl;->GetAdditionalPhyStats(Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static GetDcd(Lcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Lcom/sqn/dcc/swmDcd;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0}, Lcom/sqn/dcc/agscMacSsImpl;->GetDcd(Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static GetDlBurstStats(Lcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Lcom/sqn/dcc/DlBurstStats;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0}, Lcom/sqn/dcc/agscMacSsImpl;->GetDlBurstStats(Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static GetEstimatedRtd(Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/sqn/dcc/agscMacSsImpl;->GetEstimatedRtd(Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static GetFcd(Lcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Lcom/sqn/dcc/swmFcd;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0}, Lcom/sqn/dcc/agscMacSsImpl;->GetFcd(Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static GetHarqStats(Lcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Lcom/sqn/dcc/swmHarqMsStats;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0}, Lcom/sqn/dcc/agscMacSsImpl;->GetHarqStats(Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static GetLinkSpeed(Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/sqn/dcc/agscMacSsImpl;->GetLinkSpeed(Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static GetPowerControlInfo(Lcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Lcom/sqn/dcc/PowerControlInfo;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0}, Lcom/sqn/dcc/agscMacSsImpl;->GetPowerControlInfo(Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static GetTrafficRateMeasures(Lcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Lcom/sqn/dcc/TrafficRate;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0}, Lcom/sqn/dcc/agscMacSsImpl;->GetTrafficRateMeasures(Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static GetUcd(Lcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Lcom/sqn/dcc/swmUcd;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0}, Lcom/sqn/dcc/agscMacSsImpl;->GetUcd(Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static GetUlBandwidthUsage(Lcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Lcom/sqn/dcc/UlBandwidthUsage;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0}, Lcom/sqn/dcc/agscMacSsImpl;->GetUlBandwidthUsage(Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static GetUlBurstStats(Lcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Lcom/sqn/dcc/UlBurstStats;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0}, Lcom/sqn/dcc/agscMacSsImpl;->GetUlBurstStats(Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static GetWimaxMacAddress(Lcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0}, Lcom/sqn/dcc/agscMacSsImpl;->GetWimaxMacAddress(Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static MacSsInitialize(Lcom/sqn/dcc/MacSsClient;)V
    .locals 1

    new-instance v0, Lcom/sqn/dcc/agscMacSsImpl;

    invoke-direct {v0}, Lcom/sqn/dcc/agscMacSsImpl;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sqn/dcc/agscMacSsImpl;->initialize(Lcom/sqn/dcc/MacSsClient;)V

    return-void
.end method

.method public static ResetTrafficRateMeasures(Lcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0}, Lcom/sqn/dcc/agscMacSsImpl;->ResetTrafficRateMeasures(Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method
