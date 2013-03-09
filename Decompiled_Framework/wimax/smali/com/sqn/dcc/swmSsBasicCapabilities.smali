.class public Lcom/sqn/dcc/swmSsBasicCapabilities;
.super Ljava/lang/Object;
.source "swmSsBasicCapabilities.java"


# instance fields
.field public associationType:S

.field public authorizationPolicy:S

.field public bwAllocation:S

.field public extensionCapability:S

.field public hoTriggerMetric:S

.field public macPdus:S

.field public maxConcurrentPkmQty:S

.field public maxSaQty:S

.field public maxTxPowerBpsk:I

.field public maxTxPowerQam16:I

.field public maxTxPowerQam64:I

.field public maxTxPowerQpsk:I

.field public phy:Lcom/sqn/dcc/swmSsBasicCapabilitiesPhy;

.field public securityParams:Lcom/sqn/dcc/swmSecurityNegociationParameters;

.field public ssrtg:I

.field public ssttg:I

.field public vendor:Lcom/sqn/dcc/swmVendorSpecific;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sqn/dcc/swmSecurityNegociationParameters;

    invoke-direct {v0}, Lcom/sqn/dcc/swmSecurityNegociationParameters;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/swmSsBasicCapabilities;->securityParams:Lcom/sqn/dcc/swmSecurityNegociationParameters;

    new-instance v0, Lcom/sqn/dcc/swmSsBasicCapabilitiesPhy;

    invoke-direct {v0}, Lcom/sqn/dcc/swmSsBasicCapabilitiesPhy;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/swmSsBasicCapabilities;->phy:Lcom/sqn/dcc/swmSsBasicCapabilitiesPhy;

    new-instance v0, Lcom/sqn/dcc/swmVendorSpecific;

    invoke-direct {v0}, Lcom/sqn/dcc/swmVendorSpecific;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/swmSsBasicCapabilities;->vendor:Lcom/sqn/dcc/swmVendorSpecific;

    return-void
.end method

.method public static marshall([BLcom/sqn/dcc/swmSsBasicCapabilities;Lcom/sqn/dcc/OutValue;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/swmSsBasicCapabilities;",
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

    add-int/lit8 v1, v1, 0x20

    if-ge v2, v1, :cond_0

    const v1, -0xfffb

    :goto_0
    return v1

    :cond_0
    iget-short v1, p1, Lcom/sqn/dcc/swmSsBasicCapabilities;->authorizationPolicy:S

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-object v1, p1, Lcom/sqn/dcc/swmSsBasicCapabilities;->securityParams:Lcom/sqn/dcc/swmSecurityNegociationParameters;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmSecurityNegociationParameters;->marshall([BLcom/sqn/dcc/swmSecurityNegociationParameters;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-short v1, p1, Lcom/sqn/dcc/swmSsBasicCapabilities;->bwAllocation:S

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v1, p1, Lcom/sqn/dcc/swmSsBasicCapabilities;->macPdus:S

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget v1, p1, Lcom/sqn/dcc/swmSsBasicCapabilities;->ssttg:I

    int-to-long v1, v1

    invoke-static {p0, v1, v2, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget v1, p1, Lcom/sqn/dcc/swmSsBasicCapabilities;->ssrtg:I

    int-to-long v1, v1

    invoke-static {p0, v1, v2, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget v1, p1, Lcom/sqn/dcc/swmSsBasicCapabilities;->maxTxPowerBpsk:I

    int-to-long v1, v1

    invoke-static {p0, v1, v2, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget v1, p1, Lcom/sqn/dcc/swmSsBasicCapabilities;->maxTxPowerQpsk:I

    int-to-long v1, v1

    invoke-static {p0, v1, v2, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget v1, p1, Lcom/sqn/dcc/swmSsBasicCapabilities;->maxTxPowerQam16:I

    int-to-long v1, v1

    invoke-static {p0, v1, v2, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget v1, p1, Lcom/sqn/dcc/swmSsBasicCapabilities;->maxTxPowerQam64:I

    int-to-long v1, v1

    invoke-static {p0, v1, v2, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget-short v1, p1, Lcom/sqn/dcc/swmSsBasicCapabilities;->maxConcurrentPkmQty:S

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v1, p1, Lcom/sqn/dcc/swmSsBasicCapabilities;->maxSaQty:S

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v1, p1, Lcom/sqn/dcc/swmSsBasicCapabilities;->extensionCapability:S

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v1, p1, Lcom/sqn/dcc/swmSsBasicCapabilities;->hoTriggerMetric:S

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v1, p1, Lcom/sqn/dcc/swmSsBasicCapabilities;->associationType:S

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-object v1, p1, Lcom/sqn/dcc/swmSsBasicCapabilities;->phy:Lcom/sqn/dcc/swmSsBasicCapabilitiesPhy;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmSsBasicCapabilitiesPhy;->marshall([BLcom/sqn/dcc/swmSsBasicCapabilitiesPhy;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lcom/sqn/dcc/swmSsBasicCapabilities;->vendor:Lcom/sqn/dcc/swmVendorSpecific;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmVendorSpecific;->marshall([BLcom/sqn/dcc/swmVendorSpecific;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_3

    move v1, v0

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_0
.end method

.method public static unmarshall([BLcom/sqn/dcc/swmSsBasicCapabilities;Lcom/sqn/dcc/OutValue;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/swmSsBasicCapabilities;",
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

    add-int/lit8 v1, v1, 0x20

    if-ge v2, v1, :cond_0

    const v1, -0xfffb

    :goto_0
    return v1

    :cond_0
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v1

    iput-short v1, p1, Lcom/sqn/dcc/swmSsBasicCapabilities;->authorizationPolicy:S

    iget-object v1, p1, Lcom/sqn/dcc/swmSsBasicCapabilities;->securityParams:Lcom/sqn/dcc/swmSecurityNegociationParameters;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmSecurityNegociationParameters;->unmarshall([BLcom/sqn/dcc/swmSecurityNegociationParameters;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v1

    iput-short v1, p1, Lcom/sqn/dcc/swmSsBasicCapabilities;->bwAllocation:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v1

    iput-short v1, p1, Lcom/sqn/dcc/swmSsBasicCapabilities;->macPdus:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, p1, Lcom/sqn/dcc/swmSsBasicCapabilities;->ssttg:I

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, p1, Lcom/sqn/dcc/swmSsBasicCapabilities;->ssrtg:I

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, p1, Lcom/sqn/dcc/swmSsBasicCapabilities;->maxTxPowerBpsk:I

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, p1, Lcom/sqn/dcc/swmSsBasicCapabilities;->maxTxPowerQpsk:I

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, p1, Lcom/sqn/dcc/swmSsBasicCapabilities;->maxTxPowerQam16:I

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, p1, Lcom/sqn/dcc/swmSsBasicCapabilities;->maxTxPowerQam64:I

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v1

    iput-short v1, p1, Lcom/sqn/dcc/swmSsBasicCapabilities;->maxConcurrentPkmQty:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v1

    iput-short v1, p1, Lcom/sqn/dcc/swmSsBasicCapabilities;->maxSaQty:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v1

    iput-short v1, p1, Lcom/sqn/dcc/swmSsBasicCapabilities;->extensionCapability:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v1

    iput-short v1, p1, Lcom/sqn/dcc/swmSsBasicCapabilities;->hoTriggerMetric:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v1

    iput-short v1, p1, Lcom/sqn/dcc/swmSsBasicCapabilities;->associationType:S

    iget-object v1, p1, Lcom/sqn/dcc/swmSsBasicCapabilities;->phy:Lcom/sqn/dcc/swmSsBasicCapabilitiesPhy;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmSsBasicCapabilitiesPhy;->unmarshall([BLcom/sqn/dcc/swmSsBasicCapabilitiesPhy;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lcom/sqn/dcc/swmSsBasicCapabilities;->vendor:Lcom/sqn/dcc/swmVendorSpecific;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmVendorSpecific;->unmarshall([BLcom/sqn/dcc/swmVendorSpecific;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_3

    move v1, v0

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_0
.end method
