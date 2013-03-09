.class public Lcom/sqn/dcc/MgtSs;
.super Ljava/lang/Object;
.source "MgtSs.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetChannelScanList(Lcom/sqn/dcc/OutArray;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/OutArray",
            "<",
            "Lcom/sqn/dcc/ScanChannel;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0}, Lcom/sqn/dcc/agscMgtSsImpl;->GetChannelScanList(Lcom/sqn/dcc/OutArray;)I

    move-result v0

    return v0
.end method

.method public static GetPhyStats(Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
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
            ">;",
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

    invoke-static {p0, p1, p2, p3}, Lcom/sqn/dcc/agscMgtSsImpl;->GetPhyStats(Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static GetPhyStatsDl(Lcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Lcom/sqn/dcc/PhyStatsDl;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0}, Lcom/sqn/dcc/agscMgtSsImpl;->GetPhyStatsDl(Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static GetSsStarted(Lcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Boolean;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0}, Lcom/sqn/dcc/agscMgtSsImpl;->GetSsStarted(Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static GetSsState(Lcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Lcom/sqn/dcc/swmSsState;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0}, Lcom/sqn/dcc/agscMgtSsImpl;->GetSsState(Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static GetSsStateFilter(Lcom/sqn/dcc/OutValue;)I
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

    invoke-static {p0}, Lcom/sqn/dcc/agscMgtSsImpl;->GetSsStateFilter(Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static GetTagInfoContent([JLcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutArray;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/sqn/dcc/OutArray",
            "<",
            "Ljava/lang/Short;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/sqn/dcc/agscMgtSsImpl;->GetTagInfoContent([JLcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutArray;)I

    move-result v0

    return v0
.end method

.method public static MgtSsInitialize(Lcom/sqn/dcc/MgtSsClient;)V
    .locals 1

    new-instance v0, Lcom/sqn/dcc/agscMgtSsImpl;

    invoke-direct {v0}, Lcom/sqn/dcc/agscMgtSsImpl;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sqn/dcc/agscMgtSsImpl;->initialize(Lcom/sqn/dcc/MgtSsClient;)V

    return-void
.end method

.method public static Reboot()I
    .locals 1

    invoke-static {}, Lcom/sqn/dcc/agscMgtSsImpl;->Reboot()I

    move-result v0

    return v0
.end method

.method public static SetChannelScanList([Lcom/sqn/dcc/ScanChannel;Lcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/sqn/dcc/ScanChannel;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/sqn/dcc/agscMgtSsImpl;->SetChannelScanList([Lcom/sqn/dcc/ScanChannel;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static SetHostState(Lcom/sqn/dcc/HostState;Lcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/HostState;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/sqn/dcc/agscMgtSsImpl;->SetHostState(Lcom/sqn/dcc/HostState;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static SetIdleAutoDelay(I)I
    .locals 1

    invoke-static {p0}, Lcom/sqn/dcc/agscMgtSsImpl;->SetIdleAutoDelay(I)I

    move-result v0

    return v0
.end method

.method public static SetPowerCtlMode(Lcom/sqn/dcc/swmSsPowerCtrlMode;ILcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/swmSsPowerCtrlMode;",
            "I",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/sqn/dcc/agscMgtSsImpl;->SetPowerCtlMode(Lcom/sqn/dcc/swmSsPowerCtrlMode;ILcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static SetRssiLevelNtfLevelParams(ILcom/sqn/dcc/RssiLevelLimitsStruct;)I
    .locals 1

    invoke-static {p0, p1}, Lcom/sqn/dcc/agscMgtSsImpl;->SetRssiLevelNtfLevelParams(ILcom/sqn/dcc/RssiLevelLimitsStruct;)I

    move-result v0

    return v0
.end method

.method public static SetRssiLevelNtfMinTimeoutBetweenUpdates(I)I
    .locals 1

    invoke-static {p0}, Lcom/sqn/dcc/agscMgtSsImpl;->SetRssiLevelNtfMinTimeoutBetweenUpdates(I)I

    move-result v0

    return v0
.end method

.method public static SetSsStarted(Z)I
    .locals 1

    invoke-static {p0}, Lcom/sqn/dcc/agscMgtSsImpl;->SetSsStarted(Z)I

    move-result v0

    return v0
.end method

.method public static SetSsStateFilter(J)I
    .locals 1

    invoke-static {p0, p1}, Lcom/sqn/dcc/agscMgtSsImpl;->SetSsStateFilter(J)I

    move-result v0

    return v0
.end method
