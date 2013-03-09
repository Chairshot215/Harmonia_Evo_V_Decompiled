.class public Lcom/sqn/dcc/swmSsOfdmaCapabilities;
.super Ljava/lang/Object;
.source "swmSsOfdmaCapabilities.java"


# instance fields
.field public aasCapabilities:I

.field public aasPrivateMap:Lcom/sqn/dcc/swmSsOfdmaAasPrivateMapCapabilities;

.field public cinrMeasurementCapability:S

.field public csitCapability:Lcom/sqn/dcc/swmSsOfdmaCsitCapability;

.field public demodulator:I

.field public extendedHArqIeSupport:S

.field public fftSize:S

.field public harqBufferCapability:Lcom/sqn/dcc/swmOfdmaHarqBufferCapability;

.field public harqDlMgt:Lcom/sqn/dcc/swmHarqParam;

.field public harqUlMgt:Lcom/sqn/dcc/swmHarqParam;

.field public maxBurstPerFrameCapabilityInHarq:Lcom/sqn/dcc/swmSsOfdmaMaxBurstPerFrameCapabilityInHarq;

.field public maxDlHarqChannelQty:S

.field public maxUlHarqChannelQty:S

.field public mimoDemodulator:J

.field public mimoModulator:I

.field public modulator:S

.field public multipleDlBpCapability:S

.field public parametersSets:Lcom/sqn/dcc/swmOfdmaParametersSets;

.field public permutation:S

.field public sdmaPilotCapability:S

.field public ulControlChannelSupport:S

.field public ulPowerControl:Lcom/sqn/dcc/swmSsOfdmaUlPowerControl;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sqn/dcc/swmSsOfdmaAasPrivateMapCapabilities;

    invoke-direct {v0}, Lcom/sqn/dcc/swmSsOfdmaAasPrivateMapCapabilities;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/swmSsOfdmaCapabilities;->aasPrivateMap:Lcom/sqn/dcc/swmSsOfdmaAasPrivateMapCapabilities;

    new-instance v0, Lcom/sqn/dcc/swmSsOfdmaUlPowerControl;

    invoke-direct {v0}, Lcom/sqn/dcc/swmSsOfdmaUlPowerControl;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/swmSsOfdmaCapabilities;->ulPowerControl:Lcom/sqn/dcc/swmSsOfdmaUlPowerControl;

    new-instance v0, Lcom/sqn/dcc/swmSsOfdmaCsitCapability;

    invoke-direct {v0}, Lcom/sqn/dcc/swmSsOfdmaCsitCapability;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/swmSsOfdmaCapabilities;->csitCapability:Lcom/sqn/dcc/swmSsOfdmaCsitCapability;

    new-instance v0, Lcom/sqn/dcc/swmSsOfdmaMaxBurstPerFrameCapabilityInHarq;

    invoke-direct {v0}, Lcom/sqn/dcc/swmSsOfdmaMaxBurstPerFrameCapabilityInHarq;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/swmSsOfdmaCapabilities;->maxBurstPerFrameCapabilityInHarq:Lcom/sqn/dcc/swmSsOfdmaMaxBurstPerFrameCapabilityInHarq;

    new-instance v0, Lcom/sqn/dcc/swmOfdmaHarqBufferCapability;

    invoke-direct {v0}, Lcom/sqn/dcc/swmOfdmaHarqBufferCapability;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/swmSsOfdmaCapabilities;->harqBufferCapability:Lcom/sqn/dcc/swmOfdmaHarqBufferCapability;

    new-instance v0, Lcom/sqn/dcc/swmHarqParam;

    invoke-direct {v0}, Lcom/sqn/dcc/swmHarqParam;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/swmSsOfdmaCapabilities;->harqUlMgt:Lcom/sqn/dcc/swmHarqParam;

    new-instance v0, Lcom/sqn/dcc/swmHarqParam;

    invoke-direct {v0}, Lcom/sqn/dcc/swmHarqParam;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/swmSsOfdmaCapabilities;->harqDlMgt:Lcom/sqn/dcc/swmHarqParam;

    new-instance v0, Lcom/sqn/dcc/swmOfdmaParametersSets;

    invoke-direct {v0}, Lcom/sqn/dcc/swmOfdmaParametersSets;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/swmSsOfdmaCapabilities;->parametersSets:Lcom/sqn/dcc/swmOfdmaParametersSets;

    return-void
.end method

.method public static marshall([BLcom/sqn/dcc/swmSsOfdmaCapabilities;Lcom/sqn/dcc/OutValue;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/swmSsOfdmaCapabilities;",
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

    add-int/lit8 v1, v1, 0x14

    if-ge v2, v1, :cond_0

    const v1, -0xfffb

    :goto_0
    return v1

    :cond_0
    iget-short v1, p1, Lcom/sqn/dcc/swmSsOfdmaCapabilities;->fftSize:S

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget v1, p1, Lcom/sqn/dcc/swmSsOfdmaCapabilities;->demodulator:I

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/Util;->Copy16ToBuffer([BILcom/sqn/dcc/OutValue;)V

    iget-short v1, p1, Lcom/sqn/dcc/swmSsOfdmaCapabilities;->modulator:S

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v1, p1, Lcom/sqn/dcc/swmSsOfdmaCapabilities;->maxUlHarqChannelQty:S

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v1, p1, Lcom/sqn/dcc/swmSsOfdmaCapabilities;->maxDlHarqChannelQty:S

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-wide v1, p1, Lcom/sqn/dcc/swmSsOfdmaCapabilities;->mimoDemodulator:J

    invoke-static {p0, v1, v2, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget v1, p1, Lcom/sqn/dcc/swmSsOfdmaCapabilities;->mimoModulator:I

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/Util;->Copy16ToBuffer([BILcom/sqn/dcc/OutValue;)V

    iget-short v1, p1, Lcom/sqn/dcc/swmSsOfdmaCapabilities;->permutation:S

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-object v1, p1, Lcom/sqn/dcc/swmSsOfdmaCapabilities;->aasPrivateMap:Lcom/sqn/dcc/swmSsOfdmaAasPrivateMapCapabilities;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmSsOfdmaAasPrivateMapCapabilities;->marshall([BLcom/sqn/dcc/swmSsOfdmaAasPrivateMapCapabilities;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    iget v1, p1, Lcom/sqn/dcc/swmSsOfdmaCapabilities;->aasCapabilities:I

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/Util;->Copy16ToBuffer([BILcom/sqn/dcc/OutValue;)V

    iget-short v1, p1, Lcom/sqn/dcc/swmSsOfdmaCapabilities;->cinrMeasurementCapability:S

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-object v1, p1, Lcom/sqn/dcc/swmSsOfdmaCapabilities;->ulPowerControl:Lcom/sqn/dcc/swmSsOfdmaUlPowerControl;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmSsOfdmaUlPowerControl;->marshall([BLcom/sqn/dcc/swmSsOfdmaUlPowerControl;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    iget-short v1, p1, Lcom/sqn/dcc/swmSsOfdmaCapabilities;->extendedHArqIeSupport:S

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v1, p1, Lcom/sqn/dcc/swmSsOfdmaCapabilities;->ulControlChannelSupport:S

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-object v1, p1, Lcom/sqn/dcc/swmSsOfdmaCapabilities;->csitCapability:Lcom/sqn/dcc/swmSsOfdmaCsitCapability;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmSsOfdmaCsitCapability;->marshall([BLcom/sqn/dcc/swmSsOfdmaCsitCapability;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_3

    move v1, v0

    goto :goto_0

    :cond_3
    iget-object v1, p1, Lcom/sqn/dcc/swmSsOfdmaCapabilities;->maxBurstPerFrameCapabilityInHarq:Lcom/sqn/dcc/swmSsOfdmaMaxBurstPerFrameCapabilityInHarq;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmSsOfdmaMaxBurstPerFrameCapabilityInHarq;->marshall([BLcom/sqn/dcc/swmSsOfdmaMaxBurstPerFrameCapabilityInHarq;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_4

    move v1, v0

    goto :goto_0

    :cond_4
    iget-short v1, p1, Lcom/sqn/dcc/swmSsOfdmaCapabilities;->sdmaPilotCapability:S

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v1, p1, Lcom/sqn/dcc/swmSsOfdmaCapabilities;->multipleDlBpCapability:S

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-object v1, p1, Lcom/sqn/dcc/swmSsOfdmaCapabilities;->harqBufferCapability:Lcom/sqn/dcc/swmOfdmaHarqBufferCapability;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmOfdmaHarqBufferCapability;->marshall([BLcom/sqn/dcc/swmOfdmaHarqBufferCapability;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_5

    move v1, v0

    goto :goto_0

    :cond_5
    iget-object v1, p1, Lcom/sqn/dcc/swmSsOfdmaCapabilities;->harqUlMgt:Lcom/sqn/dcc/swmHarqParam;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmHarqParam;->marshall([BLcom/sqn/dcc/swmHarqParam;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_6

    move v1, v0

    goto/16 :goto_0

    :cond_6
    iget-object v1, p1, Lcom/sqn/dcc/swmSsOfdmaCapabilities;->harqDlMgt:Lcom/sqn/dcc/swmHarqParam;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmHarqParam;->marshall([BLcom/sqn/dcc/swmHarqParam;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_7

    move v1, v0

    goto/16 :goto_0

    :cond_7
    iget-object v1, p1, Lcom/sqn/dcc/swmSsOfdmaCapabilities;->parametersSets:Lcom/sqn/dcc/swmOfdmaParametersSets;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmOfdmaParametersSets;->marshall([BLcom/sqn/dcc/swmOfdmaParametersSets;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_8

    move v1, v0

    goto/16 :goto_0

    :cond_8
    move v1, v0

    goto/16 :goto_0
.end method

.method public static unmarshall([BLcom/sqn/dcc/swmSsOfdmaCapabilities;Lcom/sqn/dcc/OutValue;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/swmSsOfdmaCapabilities;",
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

    add-int/lit8 v1, v1, 0x14

    if-ge v2, v1, :cond_0

    const v1, -0xfffb

    :goto_0
    return v1

    :cond_0
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v1

    iput-short v1, p1, Lcom/sqn/dcc/swmSsOfdmaCapabilities;->fftSize:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy16FromBuffer([BLcom/sqn/dcc/OutValue;)I

    move-result v1

    iput v1, p1, Lcom/sqn/dcc/swmSsOfdmaCapabilities;->demodulator:I

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v1

    iput-short v1, p1, Lcom/sqn/dcc/swmSsOfdmaCapabilities;->modulator:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v1

    iput-short v1, p1, Lcom/sqn/dcc/swmSsOfdmaCapabilities;->maxUlHarqChannelQty:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v1

    iput-short v1, p1, Lcom/sqn/dcc/swmSsOfdmaCapabilities;->maxDlHarqChannelQty:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/sqn/dcc/swmSsOfdmaCapabilities;->mimoDemodulator:J

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy16FromBuffer([BLcom/sqn/dcc/OutValue;)I

    move-result v1

    iput v1, p1, Lcom/sqn/dcc/swmSsOfdmaCapabilities;->mimoModulator:I

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v1

    iput-short v1, p1, Lcom/sqn/dcc/swmSsOfdmaCapabilities;->permutation:S

    iget-object v1, p1, Lcom/sqn/dcc/swmSsOfdmaCapabilities;->aasPrivateMap:Lcom/sqn/dcc/swmSsOfdmaAasPrivateMapCapabilities;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmSsOfdmaAasPrivateMapCapabilities;->unmarshall([BLcom/sqn/dcc/swmSsOfdmaAasPrivateMapCapabilities;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy16FromBuffer([BLcom/sqn/dcc/OutValue;)I

    move-result v1

    iput v1, p1, Lcom/sqn/dcc/swmSsOfdmaCapabilities;->aasCapabilities:I

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v1

    iput-short v1, p1, Lcom/sqn/dcc/swmSsOfdmaCapabilities;->cinrMeasurementCapability:S

    iget-object v1, p1, Lcom/sqn/dcc/swmSsOfdmaCapabilities;->ulPowerControl:Lcom/sqn/dcc/swmSsOfdmaUlPowerControl;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmSsOfdmaUlPowerControl;->unmarshall([BLcom/sqn/dcc/swmSsOfdmaUlPowerControl;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v1

    iput-short v1, p1, Lcom/sqn/dcc/swmSsOfdmaCapabilities;->extendedHArqIeSupport:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v1

    iput-short v1, p1, Lcom/sqn/dcc/swmSsOfdmaCapabilities;->ulControlChannelSupport:S

    iget-object v1, p1, Lcom/sqn/dcc/swmSsOfdmaCapabilities;->csitCapability:Lcom/sqn/dcc/swmSsOfdmaCsitCapability;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmSsOfdmaCsitCapability;->unmarshall([BLcom/sqn/dcc/swmSsOfdmaCsitCapability;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_3

    move v1, v0

    goto :goto_0

    :cond_3
    iget-object v1, p1, Lcom/sqn/dcc/swmSsOfdmaCapabilities;->maxBurstPerFrameCapabilityInHarq:Lcom/sqn/dcc/swmSsOfdmaMaxBurstPerFrameCapabilityInHarq;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmSsOfdmaMaxBurstPerFrameCapabilityInHarq;->unmarshall([BLcom/sqn/dcc/swmSsOfdmaMaxBurstPerFrameCapabilityInHarq;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_4

    move v1, v0

    goto :goto_0

    :cond_4
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v1

    iput-short v1, p1, Lcom/sqn/dcc/swmSsOfdmaCapabilities;->sdmaPilotCapability:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v1

    iput-short v1, p1, Lcom/sqn/dcc/swmSsOfdmaCapabilities;->multipleDlBpCapability:S

    iget-object v1, p1, Lcom/sqn/dcc/swmSsOfdmaCapabilities;->harqBufferCapability:Lcom/sqn/dcc/swmOfdmaHarqBufferCapability;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmOfdmaHarqBufferCapability;->unmarshall([BLcom/sqn/dcc/swmOfdmaHarqBufferCapability;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_5

    move v1, v0

    goto/16 :goto_0

    :cond_5
    iget-object v1, p1, Lcom/sqn/dcc/swmSsOfdmaCapabilities;->harqUlMgt:Lcom/sqn/dcc/swmHarqParam;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmHarqParam;->unmarshall([BLcom/sqn/dcc/swmHarqParam;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_6

    move v1, v0

    goto/16 :goto_0

    :cond_6
    iget-object v1, p1, Lcom/sqn/dcc/swmSsOfdmaCapabilities;->harqDlMgt:Lcom/sqn/dcc/swmHarqParam;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmHarqParam;->unmarshall([BLcom/sqn/dcc/swmHarqParam;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_7

    move v1, v0

    goto/16 :goto_0

    :cond_7
    iget-object v1, p1, Lcom/sqn/dcc/swmSsOfdmaCapabilities;->parametersSets:Lcom/sqn/dcc/swmOfdmaParametersSets;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmOfdmaParametersSets;->unmarshall([BLcom/sqn/dcc/swmOfdmaParametersSets;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_8

    move v1, v0

    goto/16 :goto_0

    :cond_8
    move v1, v0

    goto/16 :goto_0
.end method
