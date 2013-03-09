.class public Lcom/sqn/dcc/swmSsRegCapabilities;
.super Ljava/lang/Object;
.source "swmSsRegCapabilities.java"


# instance fields
.field public csCaps:Lcom/sqn/dcc/swmCsCapabilities;

.field public extendedCapability:S

.field public handoverSupport:Lcom/sqn/dcc/swmHoSupport;

.field public hoParamProcessingTime:Lcom/sqn/dcc/swmHoParametersProcessingTime;

.field public idleModeTimeout:I

.field public macHeaderSupport:J

.field public mobilityParams:Lcom/sqn/dcc/swmMobilityParameters;

.field public prevIpAddress:Lcom/sqn/dcc/swmIpAddress;

.field public secondarySfIpAllocation:S

.field public sleepModeRecoveryTimer:J

.field public snReportingBase:S

.field public ssCaps:Lcom/sqn/dcc/swmSsCapabilities;

.field public ssMgtCaps:Lcom/sqn/dcc/swmSsMgtCapabilities;

.field public t4:I

.field public vendor:Lcom/sqn/dcc/swmVendorSpecific;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sqn/dcc/swmSsCapabilities;

    invoke-direct {v0}, Lcom/sqn/dcc/swmSsCapabilities;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/swmSsRegCapabilities;->ssCaps:Lcom/sqn/dcc/swmSsCapabilities;

    new-instance v0, Lcom/sqn/dcc/swmCsCapabilities;

    invoke-direct {v0}, Lcom/sqn/dcc/swmCsCapabilities;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/swmSsRegCapabilities;->csCaps:Lcom/sqn/dcc/swmCsCapabilities;

    new-instance v0, Lcom/sqn/dcc/swmSsMgtCapabilities;

    invoke-direct {v0}, Lcom/sqn/dcc/swmSsMgtCapabilities;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/swmSsRegCapabilities;->ssMgtCaps:Lcom/sqn/dcc/swmSsMgtCapabilities;

    new-instance v0, Lcom/sqn/dcc/swmHoSupport;

    invoke-direct {v0}, Lcom/sqn/dcc/swmHoSupport;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/swmSsRegCapabilities;->handoverSupport:Lcom/sqn/dcc/swmHoSupport;

    new-instance v0, Lcom/sqn/dcc/swmMobilityParameters;

    invoke-direct {v0}, Lcom/sqn/dcc/swmMobilityParameters;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/swmSsRegCapabilities;->mobilityParams:Lcom/sqn/dcc/swmMobilityParameters;

    new-instance v0, Lcom/sqn/dcc/swmIpAddress;

    invoke-direct {v0}, Lcom/sqn/dcc/swmIpAddress;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/swmSsRegCapabilities;->prevIpAddress:Lcom/sqn/dcc/swmIpAddress;

    new-instance v0, Lcom/sqn/dcc/swmHoParametersProcessingTime;

    invoke-direct {v0}, Lcom/sqn/dcc/swmHoParametersProcessingTime;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/swmSsRegCapabilities;->hoParamProcessingTime:Lcom/sqn/dcc/swmHoParametersProcessingTime;

    new-instance v0, Lcom/sqn/dcc/swmVendorSpecific;

    invoke-direct {v0}, Lcom/sqn/dcc/swmVendorSpecific;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/swmSsRegCapabilities;->vendor:Lcom/sqn/dcc/swmVendorSpecific;

    return-void
.end method

.method public static marshall([BLcom/sqn/dcc/swmSsRegCapabilities;Lcom/sqn/dcc/OutValue;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/swmSsRegCapabilities;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    array-length v2, p0

    iget-object v1, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x13

    if-ge v2, v1, :cond_0

    const v1, -0xfffb

    :goto_0
    return v1

    :cond_0
    iget-object v1, p1, Lcom/sqn/dcc/swmSsRegCapabilities;->ssCaps:Lcom/sqn/dcc/swmSsCapabilities;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmSsCapabilities;->marshall([BLcom/sqn/dcc/swmSsCapabilities;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/sqn/dcc/swmSsRegCapabilities;->csCaps:Lcom/sqn/dcc/swmCsCapabilities;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmCsCapabilities;->marshall([BLcom/sqn/dcc/swmCsCapabilities;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lcom/sqn/dcc/swmSsRegCapabilities;->ssMgtCaps:Lcom/sqn/dcc/swmSsMgtCapabilities;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmSsMgtCapabilities;->marshall([BLcom/sqn/dcc/swmSsMgtCapabilities;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_3

    move v1, v0

    goto :goto_0

    :cond_3
    iget-short v1, p1, Lcom/sqn/dcc/swmSsRegCapabilities;->secondarySfIpAllocation:S

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-object v1, p1, Lcom/sqn/dcc/swmSsRegCapabilities;->handoverSupport:Lcom/sqn/dcc/swmHoSupport;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmHoSupport;->marshall([BLcom/sqn/dcc/swmHoSupport;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_4

    move v1, v0

    goto :goto_0

    :cond_4
    iget-object v1, p1, Lcom/sqn/dcc/swmSsRegCapabilities;->mobilityParams:Lcom/sqn/dcc/swmMobilityParameters;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmMobilityParameters;->marshall([BLcom/sqn/dcc/swmMobilityParameters;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_5

    move v1, v0

    goto :goto_0

    :cond_5
    iget-wide v1, p1, Lcom/sqn/dcc/swmSsRegCapabilities;->sleepModeRecoveryTimer:J

    invoke-static {p0, v1, v2, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget-object v1, p1, Lcom/sqn/dcc/swmSsRegCapabilities;->prevIpAddress:Lcom/sqn/dcc/swmIpAddress;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmIpAddress;->marshall([BLcom/sqn/dcc/swmIpAddress;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_6

    move v1, v0

    goto :goto_0

    :cond_6
    iget v1, p1, Lcom/sqn/dcc/swmSsRegCapabilities;->idleModeTimeout:I

    int-to-long v1, v1

    invoke-static {p0, v1, v2, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget-object v1, p1, Lcom/sqn/dcc/swmSsRegCapabilities;->hoParamProcessingTime:Lcom/sqn/dcc/swmHoParametersProcessingTime;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmHoParametersProcessingTime;->marshall([BLcom/sqn/dcc/swmHoParametersProcessingTime;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_7

    move v1, v0

    goto :goto_0

    :cond_7
    iget-wide v1, p1, Lcom/sqn/dcc/swmSsRegCapabilities;->macHeaderSupport:J

    invoke-static {p0, v1, v2, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget-short v1, p1, Lcom/sqn/dcc/swmSsRegCapabilities;->extendedCapability:S

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v1, p1, Lcom/sqn/dcc/swmSsRegCapabilities;->snReportingBase:S

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-object v1, p1, Lcom/sqn/dcc/swmSsRegCapabilities;->vendor:Lcom/sqn/dcc/swmVendorSpecific;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmVendorSpecific;->marshall([BLcom/sqn/dcc/swmVendorSpecific;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_8

    move v1, v0

    goto :goto_0

    :cond_8
    iget v1, p1, Lcom/sqn/dcc/swmSsRegCapabilities;->t4:I

    int-to-long v1, v1

    invoke-static {p0, v1, v2, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    move v1, v0

    goto :goto_0
.end method

.method public static unmarshall([BLcom/sqn/dcc/swmSsRegCapabilities;Lcom/sqn/dcc/OutValue;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/swmSsRegCapabilities;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    array-length v2, p0

    iget-object v1, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x13

    if-ge v2, v1, :cond_0

    const v1, -0xfffb

    :goto_0
    return v1

    :cond_0
    iget-object v1, p1, Lcom/sqn/dcc/swmSsRegCapabilities;->ssCaps:Lcom/sqn/dcc/swmSsCapabilities;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmSsCapabilities;->unmarshall([BLcom/sqn/dcc/swmSsCapabilities;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/sqn/dcc/swmSsRegCapabilities;->csCaps:Lcom/sqn/dcc/swmCsCapabilities;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmCsCapabilities;->unmarshall([BLcom/sqn/dcc/swmCsCapabilities;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lcom/sqn/dcc/swmSsRegCapabilities;->ssMgtCaps:Lcom/sqn/dcc/swmSsMgtCapabilities;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmSsMgtCapabilities;->unmarshall([BLcom/sqn/dcc/swmSsMgtCapabilities;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_3

    move v1, v0

    goto :goto_0

    :cond_3
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v1

    iput-short v1, p1, Lcom/sqn/dcc/swmSsRegCapabilities;->secondarySfIpAllocation:S

    iget-object v1, p1, Lcom/sqn/dcc/swmSsRegCapabilities;->handoverSupport:Lcom/sqn/dcc/swmHoSupport;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmHoSupport;->unmarshall([BLcom/sqn/dcc/swmHoSupport;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_4

    move v1, v0

    goto :goto_0

    :cond_4
    iget-object v1, p1, Lcom/sqn/dcc/swmSsRegCapabilities;->mobilityParams:Lcom/sqn/dcc/swmMobilityParameters;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmMobilityParameters;->unmarshall([BLcom/sqn/dcc/swmMobilityParameters;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_5

    move v1, v0

    goto :goto_0

    :cond_5
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/sqn/dcc/swmSsRegCapabilities;->sleepModeRecoveryTimer:J

    iget-object v1, p1, Lcom/sqn/dcc/swmSsRegCapabilities;->prevIpAddress:Lcom/sqn/dcc/swmIpAddress;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmIpAddress;->unmarshall([BLcom/sqn/dcc/swmIpAddress;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_6

    move v1, v0

    goto :goto_0

    :cond_6
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, p1, Lcom/sqn/dcc/swmSsRegCapabilities;->idleModeTimeout:I

    iget-object v1, p1, Lcom/sqn/dcc/swmSsRegCapabilities;->hoParamProcessingTime:Lcom/sqn/dcc/swmHoParametersProcessingTime;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmHoParametersProcessingTime;->unmarshall([BLcom/sqn/dcc/swmHoParametersProcessingTime;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_7

    move v1, v0

    goto :goto_0

    :cond_7
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/sqn/dcc/swmSsRegCapabilities;->macHeaderSupport:J

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v1

    iput-short v1, p1, Lcom/sqn/dcc/swmSsRegCapabilities;->extendedCapability:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v1

    iput-short v1, p1, Lcom/sqn/dcc/swmSsRegCapabilities;->snReportingBase:S

    iget-object v1, p1, Lcom/sqn/dcc/swmSsRegCapabilities;->vendor:Lcom/sqn/dcc/swmVendorSpecific;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmVendorSpecific;->unmarshall([BLcom/sqn/dcc/swmVendorSpecific;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_8

    move v1, v0

    goto :goto_0

    :cond_8
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, p1, Lcom/sqn/dcc/swmSsRegCapabilities;->t4:I

    move v1, v0

    goto :goto_0
.end method
