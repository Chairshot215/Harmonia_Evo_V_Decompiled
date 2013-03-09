.class public Lcom/sqn/dcc/swmClassifierRule;
.super Ljava/lang/Object;
.source "swmClassifierRule.java"


# instance fields
.field public classificationAction:S

.field public dscpRangeMask:Lcom/sqn/dcc/swmIpDscpRangeMask;

.field public dscpRangeMaskPresent:S

.field public dstIpAddress:Lcom/sqn/dcc/swmMaskedIpAddress;

.field public dstIpAddressPresent:S

.field public dstMacAddress:Lcom/sqn/dcc/swmMaskedMacAddress;

.field public dstMacAddressPresent:S

.field public dstPortRange:Lcom/sqn/dcc/swmProtocolPortRange;

.field public dstPortRangePresent:S

.field public index:I

.field public ipProtocol:S

.field public ipProtocolPresent:S

.field public ipv6FlowLabel:[S

.field public ipv6FlowLabelPresent:S

.field public phsi:S

.field public phsiPresent:S

.field public priority:S

.field public sap:Lcom/sqn/dcc/swmIeee802_2_Sap;

.field public sapPresent:S

.field public srcIpAddress:Lcom/sqn/dcc/swmMaskedIpAddress;

.field public srcIpAddressPresent:S

.field public srcMacAddress:Lcom/sqn/dcc/swmMaskedMacAddress;

.field public srcMacAddressPresent:S

.field public srcPortRange:Lcom/sqn/dcc/swmProtocolPortRange;

.field public srcPortRangePresent:S

.field public userPriority:Lcom/sqn/dcc/swmIeee802_1D_User_Priority;

.field public userPriorityPresent:S

.field public vlanId:I

.field public vlanIdPresent:S


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/sqn/dcc/swmClassifierRule;->ipv6FlowLabel:[S

    new-instance v0, Lcom/sqn/dcc/swmIpDscpRangeMask;

    invoke-direct {v0}, Lcom/sqn/dcc/swmIpDscpRangeMask;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/swmClassifierRule;->dscpRangeMask:Lcom/sqn/dcc/swmIpDscpRangeMask;

    new-instance v0, Lcom/sqn/dcc/swmMaskedIpAddress;

    invoke-direct {v0}, Lcom/sqn/dcc/swmMaskedIpAddress;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/swmClassifierRule;->srcIpAddress:Lcom/sqn/dcc/swmMaskedIpAddress;

    new-instance v0, Lcom/sqn/dcc/swmMaskedIpAddress;

    invoke-direct {v0}, Lcom/sqn/dcc/swmMaskedIpAddress;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/swmClassifierRule;->dstIpAddress:Lcom/sqn/dcc/swmMaskedIpAddress;

    new-instance v0, Lcom/sqn/dcc/swmProtocolPortRange;

    invoke-direct {v0}, Lcom/sqn/dcc/swmProtocolPortRange;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/swmClassifierRule;->srcPortRange:Lcom/sqn/dcc/swmProtocolPortRange;

    new-instance v0, Lcom/sqn/dcc/swmProtocolPortRange;

    invoke-direct {v0}, Lcom/sqn/dcc/swmProtocolPortRange;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/swmClassifierRule;->dstPortRange:Lcom/sqn/dcc/swmProtocolPortRange;

    new-instance v0, Lcom/sqn/dcc/swmMaskedMacAddress;

    invoke-direct {v0}, Lcom/sqn/dcc/swmMaskedMacAddress;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/swmClassifierRule;->srcMacAddress:Lcom/sqn/dcc/swmMaskedMacAddress;

    new-instance v0, Lcom/sqn/dcc/swmMaskedMacAddress;

    invoke-direct {v0}, Lcom/sqn/dcc/swmMaskedMacAddress;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/swmClassifierRule;->dstMacAddress:Lcom/sqn/dcc/swmMaskedMacAddress;

    new-instance v0, Lcom/sqn/dcc/swmIeee802_2_Sap;

    invoke-direct {v0}, Lcom/sqn/dcc/swmIeee802_2_Sap;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/swmClassifierRule;->sap:Lcom/sqn/dcc/swmIeee802_2_Sap;

    new-instance v0, Lcom/sqn/dcc/swmIeee802_1D_User_Priority;

    invoke-direct {v0}, Lcom/sqn/dcc/swmIeee802_1D_User_Priority;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/swmClassifierRule;->userPriority:Lcom/sqn/dcc/swmIeee802_1D_User_Priority;

    return-void
.end method

.method public static marshall([BLcom/sqn/dcc/swmClassifierRule;Lcom/sqn/dcc/OutValue;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/swmClassifierRule;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/4 v1, 0x0

    array-length v3, p0

    iget-object v2, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x16

    if-ge v3, v2, :cond_0

    const v2, -0xfffb

    :goto_0
    return v2

    :cond_0
    iget-short v2, p1, Lcom/sqn/dcc/swmClassifierRule;->priority:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-object v2, p1, Lcom/sqn/dcc/swmClassifierRule;->dscpRangeMask:Lcom/sqn/dcc/swmIpDscpRangeMask;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmIpDscpRangeMask;->marshall([BLcom/sqn/dcc/swmIpDscpRangeMask;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    iget-short v2, p1, Lcom/sqn/dcc/swmClassifierRule;->ipProtocol:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-object v2, p1, Lcom/sqn/dcc/swmClassifierRule;->srcIpAddress:Lcom/sqn/dcc/swmMaskedIpAddress;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmMaskedIpAddress;->marshall([BLcom/sqn/dcc/swmMaskedIpAddress;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/sqn/dcc/swmClassifierRule;->dstIpAddress:Lcom/sqn/dcc/swmMaskedIpAddress;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmMaskedIpAddress;->marshall([BLcom/sqn/dcc/swmMaskedIpAddress;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_3

    move v2, v1

    goto :goto_0

    :cond_3
    iget-object v2, p1, Lcom/sqn/dcc/swmClassifierRule;->srcPortRange:Lcom/sqn/dcc/swmProtocolPortRange;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmProtocolPortRange;->marshall([BLcom/sqn/dcc/swmProtocolPortRange;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_4

    move v2, v1

    goto :goto_0

    :cond_4
    iget-object v2, p1, Lcom/sqn/dcc/swmClassifierRule;->dstPortRange:Lcom/sqn/dcc/swmProtocolPortRange;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmProtocolPortRange;->marshall([BLcom/sqn/dcc/swmProtocolPortRange;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_5

    move v2, v1

    goto :goto_0

    :cond_5
    iget-object v2, p1, Lcom/sqn/dcc/swmClassifierRule;->srcMacAddress:Lcom/sqn/dcc/swmMaskedMacAddress;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmMaskedMacAddress;->marshall([BLcom/sqn/dcc/swmMaskedMacAddress;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_6

    move v2, v1

    goto :goto_0

    :cond_6
    iget-object v2, p1, Lcom/sqn/dcc/swmClassifierRule;->dstMacAddress:Lcom/sqn/dcc/swmMaskedMacAddress;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmMaskedMacAddress;->marshall([BLcom/sqn/dcc/swmMaskedMacAddress;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_7

    move v2, v1

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    :goto_1
    const/4 v2, 0x3

    if-ge v0, v2, :cond_8

    iget-object v2, p1, Lcom/sqn/dcc/swmClassifierRule;->ipv6FlowLabel:[S

    aget-short v2, v2, v0

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    iget-object v2, p1, Lcom/sqn/dcc/swmClassifierRule;->sap:Lcom/sqn/dcc/swmIeee802_2_Sap;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmIeee802_2_Sap;->marshall([BLcom/sqn/dcc/swmIeee802_2_Sap;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_9

    move v2, v1

    goto :goto_0

    :cond_9
    iget-object v2, p1, Lcom/sqn/dcc/swmClassifierRule;->userPriority:Lcom/sqn/dcc/swmIeee802_1D_User_Priority;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmIeee802_1D_User_Priority;->marshall([BLcom/sqn/dcc/swmIeee802_1D_User_Priority;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_a

    move v2, v1

    goto :goto_0

    :cond_a
    iget v2, p1, Lcom/sqn/dcc/swmClassifierRule;->vlanId:I

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy16ToBuffer([BILcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmClassifierRule;->phsi:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget v2, p1, Lcom/sqn/dcc/swmClassifierRule;->index:I

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy16ToBuffer([BILcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmClassifierRule;->classificationAction:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmClassifierRule;->dscpRangeMaskPresent:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmClassifierRule;->ipProtocolPresent:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmClassifierRule;->srcIpAddressPresent:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmClassifierRule;->dstIpAddressPresent:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmClassifierRule;->srcPortRangePresent:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmClassifierRule;->dstPortRangePresent:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmClassifierRule;->srcMacAddressPresent:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmClassifierRule;->dstMacAddressPresent:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmClassifierRule;->ipv6FlowLabelPresent:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmClassifierRule;->sapPresent:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmClassifierRule;->userPriorityPresent:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmClassifierRule;->vlanIdPresent:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmClassifierRule;->phsiPresent:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    move v2, v1

    goto/16 :goto_0
.end method

.method public static unmarshall([BLcom/sqn/dcc/swmClassifierRule;Lcom/sqn/dcc/OutValue;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/swmClassifierRule;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/4 v1, 0x0

    array-length v3, p0

    iget-object v2, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x16

    if-ge v3, v2, :cond_0

    const v2, -0xfffb

    :goto_0
    return v2

    :cond_0
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmClassifierRule;->priority:S

    iget-object v2, p1, Lcom/sqn/dcc/swmClassifierRule;->dscpRangeMask:Lcom/sqn/dcc/swmIpDscpRangeMask;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmIpDscpRangeMask;->unmarshall([BLcom/sqn/dcc/swmIpDscpRangeMask;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmClassifierRule;->ipProtocol:S

    iget-object v2, p1, Lcom/sqn/dcc/swmClassifierRule;->srcIpAddress:Lcom/sqn/dcc/swmMaskedIpAddress;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmMaskedIpAddress;->unmarshall([BLcom/sqn/dcc/swmMaskedIpAddress;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/sqn/dcc/swmClassifierRule;->dstIpAddress:Lcom/sqn/dcc/swmMaskedIpAddress;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmMaskedIpAddress;->unmarshall([BLcom/sqn/dcc/swmMaskedIpAddress;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_3

    move v2, v1

    goto :goto_0

    :cond_3
    iget-object v2, p1, Lcom/sqn/dcc/swmClassifierRule;->srcPortRange:Lcom/sqn/dcc/swmProtocolPortRange;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmProtocolPortRange;->unmarshall([BLcom/sqn/dcc/swmProtocolPortRange;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_4

    move v2, v1

    goto :goto_0

    :cond_4
    iget-object v2, p1, Lcom/sqn/dcc/swmClassifierRule;->dstPortRange:Lcom/sqn/dcc/swmProtocolPortRange;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmProtocolPortRange;->unmarshall([BLcom/sqn/dcc/swmProtocolPortRange;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_5

    move v2, v1

    goto :goto_0

    :cond_5
    iget-object v2, p1, Lcom/sqn/dcc/swmClassifierRule;->srcMacAddress:Lcom/sqn/dcc/swmMaskedMacAddress;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmMaskedMacAddress;->unmarshall([BLcom/sqn/dcc/swmMaskedMacAddress;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_6

    move v2, v1

    goto :goto_0

    :cond_6
    iget-object v2, p1, Lcom/sqn/dcc/swmClassifierRule;->dstMacAddress:Lcom/sqn/dcc/swmMaskedMacAddress;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmMaskedMacAddress;->unmarshall([BLcom/sqn/dcc/swmMaskedMacAddress;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_7

    move v2, v1

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    :goto_1
    const/4 v2, 0x3

    if-ge v0, v2, :cond_8

    iget-object v2, p1, Lcom/sqn/dcc/swmClassifierRule;->ipv6FlowLabel:[S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v3

    aput-short v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    iget-object v2, p1, Lcom/sqn/dcc/swmClassifierRule;->sap:Lcom/sqn/dcc/swmIeee802_2_Sap;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmIeee802_2_Sap;->unmarshall([BLcom/sqn/dcc/swmIeee802_2_Sap;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_9

    move v2, v1

    goto :goto_0

    :cond_9
    iget-object v2, p1, Lcom/sqn/dcc/swmClassifierRule;->userPriority:Lcom/sqn/dcc/swmIeee802_1D_User_Priority;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmIeee802_1D_User_Priority;->unmarshall([BLcom/sqn/dcc/swmIeee802_1D_User_Priority;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_a

    move v2, v1

    goto :goto_0

    :cond_a
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy16FromBuffer([BLcom/sqn/dcc/OutValue;)I

    move-result v2

    iput v2, p1, Lcom/sqn/dcc/swmClassifierRule;->vlanId:I

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmClassifierRule;->phsi:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy16FromBuffer([BLcom/sqn/dcc/OutValue;)I

    move-result v2

    iput v2, p1, Lcom/sqn/dcc/swmClassifierRule;->index:I

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmClassifierRule;->classificationAction:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmClassifierRule;->dscpRangeMaskPresent:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmClassifierRule;->ipProtocolPresent:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmClassifierRule;->srcIpAddressPresent:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmClassifierRule;->dstIpAddressPresent:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmClassifierRule;->srcPortRangePresent:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmClassifierRule;->dstPortRangePresent:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmClassifierRule;->srcMacAddressPresent:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmClassifierRule;->dstMacAddressPresent:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmClassifierRule;->ipv6FlowLabelPresent:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmClassifierRule;->sapPresent:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmClassifierRule;->userPriorityPresent:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmClassifierRule;->vlanIdPresent:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmClassifierRule;->phsiPresent:S

    move v2, v1

    goto/16 :goto_0
.end method
