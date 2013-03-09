.class public Lcom/sqn/dcc/Ndss;
.super Ljava/lang/Object;
.source "Ndss.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ChangeBandConfig(Lcom/sqn/dcc/ProvisionedBand;Lcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/ProvisionedBand;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/sqn/dcc/agscNdssImpl;->ChangeBandConfig(Lcom/sqn/dcc/ProvisionedBand;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static ChangeChannelConfig(Lcom/sqn/dcc/ProvisionedChannel;Lcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/ProvisionedChannel;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/sqn/dcc/agscNdssImpl;->ChangeChannelConfig(Lcom/sqn/dcc/ProvisionedChannel;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static ClearChannelList(Lcom/sqn/dcc/OutValue;)I
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

    invoke-static {p0}, Lcom/sqn/dcc/agscNdssImpl;->ClearChannelList(Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static ConnectToNetwork(IJSILcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJSI",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-static/range {p0 .. p5}, Lcom/sqn/dcc/agscNdssImpl;->ConnectToNetwork(IJSILcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static ConnectToNetworkExt(IJJSILcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJSI",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-static/range {p0 .. p7}, Lcom/sqn/dcc/agscNdssImpl;->ConnectToNetworkExt(IJJSILcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static DisconnectFromNetwork(Lcom/sqn/dcc/OutValue;)I
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

    invoke-static {p0}, Lcom/sqn/dcc/agscNdssImpl;->DisconnectFromNetwork(Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static GetBandConfig(JLcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Lcom/sqn/dcc/ProvisionedBand;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/sqn/dcc/agscNdssImpl;->GetBandConfig(JLcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static GetBandList(Lcom/sqn/dcc/OutArray;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/OutArray",
            "<",
            "Lcom/sqn/dcc/ProvisionedBand;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0}, Lcom/sqn/dcc/agscNdssImpl;->GetBandList(Lcom/sqn/dcc/OutArray;)I

    move-result v0

    return v0
.end method

.method public static GetChannelConfig(JLcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Lcom/sqn/dcc/ProvisionedChannel;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/sqn/dcc/agscNdssImpl;->GetChannelConfig(JLcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static GetChannelList(Lcom/sqn/dcc/OutArray;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/OutArray",
            "<",
            "Lcom/sqn/dcc/ProvisionedChannel;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0}, Lcom/sqn/dcc/agscNdssImpl;->GetChannelList(Lcom/sqn/dcc/OutArray;)I

    move-result v0

    return v0
.end method

.method public static GetEntryCriteriaStatus(Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/sqn/dcc/agscNdssImpl;->GetEntryCriteriaStatus(Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static GetExitCriteriaStatus(Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/sqn/dcc/agscNdssImpl;->GetExitCriteriaStatus(Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static GetHomeNsp(Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutArray;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sqn/dcc/OutArray",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/sqn/dcc/agscNdssImpl;->GetHomeNsp(Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutArray;)I

    move-result v0

    return v0
.end method

.method public static GetNdsBackoffConfig(Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
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

    invoke-static {p0, p1}, Lcom/sqn/dcc/agscNdssImpl;->GetNdsBackoffConfig(Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static GetNdsConfig(Lcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Lcom/sqn/dcc/ConnectionConfig;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0}, Lcom/sqn/dcc/agscNdssImpl;->GetNdsConfig(Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static GetNdsState(Lcom/sqn/dcc/OutValue;)I
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

    invoke-static {p0}, Lcom/sqn/dcc/agscNdssImpl;->GetNdsState(Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static GetProvisionedNaps(Lcom/sqn/dcc/OutArray;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/OutArray",
            "<",
            "Lcom/sqn/dcc/ProvisionedNap;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0}, Lcom/sqn/dcc/agscNdssImpl;->GetProvisionedNaps(Lcom/sqn/dcc/OutArray;)I

    move-result v0

    return v0
.end method

.method public static GetProvisionedNsps(Lcom/sqn/dcc/OutArray;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/OutArray",
            "<",
            "Lcom/sqn/dcc/ProvisionedNsp;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0}, Lcom/sqn/dcc/agscNdssImpl;->GetProvisionedNsps(Lcom/sqn/dcc/OutArray;)I

    move-result v0

    return v0
.end method

.method public static GetScanProgress(Lcom/sqn/dcc/OutValue;)I
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

    invoke-static {p0}, Lcom/sqn/dcc/agscNdssImpl;->GetScanProgress(Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static GetScanResults(Lcom/sqn/dcc/OutArray;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/OutArray",
            "<",
            "Lcom/sqn/dcc/ScanResult;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0}, Lcom/sqn/dcc/agscNdssImpl;->GetScanResults(Lcom/sqn/dcc/OutArray;)I

    move-result v0

    return v0
.end method

.method public static GetScanResultsExt(Lcom/sqn/dcc/OutArray;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/OutArray",
            "<",
            "Lcom/sqn/dcc/ScanResultExt;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0}, Lcom/sqn/dcc/agscNdssImpl;->GetScanResultsExt(Lcom/sqn/dcc/OutArray;)I

    move-result v0

    return v0
.end method

.method public static GetScanResultsExtBand(Lcom/sqn/dcc/OutArray;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/OutArray",
            "<",
            "Lcom/sqn/dcc/ScanResultExtBand;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0}, Lcom/sqn/dcc/agscNdssImpl;->GetScanResultsExtBand(Lcom/sqn/dcc/OutArray;)I

    move-result v0

    return v0
.end method

.method public static NdssInitialize(Lcom/sqn/dcc/NdssClient;)V
    .locals 1

    new-instance v0, Lcom/sqn/dcc/agscNdssImpl;

    invoke-direct {v0}, Lcom/sqn/dcc/agscNdssImpl;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sqn/dcc/agscNdssImpl;->initialize(Lcom/sqn/dcc/NdssClient;)V

    return-void
.end method

.method public static Scan(Lcom/sqn/dcc/OutValue;)I
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

    invoke-static {p0}, Lcom/sqn/dcc/agscNdssImpl;->Scan(Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static SetBandList([Lcom/sqn/dcc/ProvisionedBand;Lcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/sqn/dcc/ProvisionedBand;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/sqn/dcc/agscNdssImpl;->SetBandList([Lcom/sqn/dcc/ProvisionedBand;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static SetChannelList([Lcom/sqn/dcc/ProvisionedChannel;Lcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/sqn/dcc/ProvisionedChannel;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/sqn/dcc/agscNdssImpl;->SetChannelList([Lcom/sqn/dcc/ProvisionedChannel;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static SetHomeNsp(Ljava/lang/String;[ILcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[I",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/sqn/dcc/agscNdssImpl;->SetHomeNsp(Ljava/lang/String;[ILcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static SetInitialChannel(IIILcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/sqn/dcc/agscNdssImpl;->SetInitialChannel(IIILcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static SetNdsBackoffConfig(IILcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/sqn/dcc/agscNdssImpl;->SetNdsBackoffConfig(IILcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static SetNdsConfig(Lcom/sqn/dcc/ConnectionConfig;Lcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/ConnectionConfig;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/sqn/dcc/agscNdssImpl;->SetNdsConfig(Lcom/sqn/dcc/ConnectionConfig;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static SetProvisionedNaps([Lcom/sqn/dcc/ProvisionedNap;Lcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/sqn/dcc/ProvisionedNap;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/sqn/dcc/agscNdssImpl;->SetProvisionedNaps([Lcom/sqn/dcc/ProvisionedNap;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static SetProvisionedNsps([Lcom/sqn/dcc/ProvisionedNsp;Lcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/sqn/dcc/ProvisionedNsp;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/sqn/dcc/agscNdssImpl;->SetProvisionedNsps([Lcom/sqn/dcc/ProvisionedNsp;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method
