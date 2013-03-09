.class public Lcom/sqn/dcc/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DeviceInfoInitialize(Lcom/sqn/dcc/DeviceInfoClient;)V
    .locals 1

    new-instance v0, Lcom/sqn/dcc/agscDeviceInfoImpl;

    invoke-direct {v0}, Lcom/sqn/dcc/agscDeviceInfoImpl;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sqn/dcc/agscDeviceInfoImpl;->initialize(Lcom/sqn/dcc/DeviceInfoClient;)V

    return-void
.end method

.method public static GetAdapterStats(Lcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Lcom/sqn/dcc/AdapterStatistics;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0}, Lcom/sqn/dcc/agscDeviceInfoImpl;->GetAdapterStats(Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static GetAsnGatewayId(Lcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0}, Lcom/sqn/dcc/agscDeviceInfoImpl;->GetAsnGatewayId(Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static GetAuthenticationRealm(Lcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0}, Lcom/sqn/dcc/agscDeviceInfoImpl;->GetAuthenticationRealm(Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static GetBaseBandChipName(Lcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0}, Lcom/sqn/dcc/agscDeviceInfoImpl;->GetBaseBandChipName(Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static GetBoardName(Lcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0}, Lcom/sqn/dcc/agscDeviceInfoImpl;->GetBoardName(Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static GetMsVersion(Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Lcom/sqn/dcc/DeviceVersion;",
            ">;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Lcom/sqn/dcc/DeviceVersion;",
            ">;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Lcom/sqn/dcc/DeviceVersion;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/sqn/dcc/agscDeviceInfoImpl;->GetMsVersion(Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static GetRfChipName(Lcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0}, Lcom/sqn/dcc/agscDeviceInfoImpl;->GetRfChipName(Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static GetRfFrequency(Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I
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

    invoke-static {p0, p1}, Lcom/sqn/dcc/agscDeviceInfoImpl;->GetRfFrequency(Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static IsFsPresent(Lcom/sqn/dcc/OutValue;)I
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

    invoke-static {p0}, Lcom/sqn/dcc/agscDeviceInfoImpl;->IsFsPresent(Lcom/sqn/dcc/OutValue;)I

    move-result v0

    return v0
.end method

.method public static ResetAdapterStats(J)I
    .locals 1

    invoke-static {p0, p1}, Lcom/sqn/dcc/agscDeviceInfoImpl;->ResetAdapterStats(J)I

    move-result v0

    return v0
.end method
