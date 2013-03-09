.class public Lcom/sqn/dcc/FwdFilterConfig;
.super Ljava/lang/Object;
.source "FwdFilterConfig.java"


# instance fields
.field public action:Lcom/sqn/dcc/FwdFilterAction;

.field public chunk:[Lcom/sqn/dcc/FwdChunkConfig;

.field public chunkOp:Lcom/sqn/dcc/FwdChunkOp;

.field public dpr:Lcom/sqn/dcc/swmProtocolPortRange;

.field public dscprm:Lcom/sqn/dcc/swmIpDscpRangeMask;

.field public enable:Z

.field public ethType:I

.field public ethda:Lcom/sqn/dcc/swmMaskedMacAddress;

.field public ethsa:Lcom/sqn/dcc/swmMaskedMacAddress;

.field public ipdst:Lcom/sqn/dcc/swmMaskedIpAddress;

.field public ipsrc:Lcom/sqn/dcc/swmMaskedIpAddress;

.field public isRx:Z

.field public maskHostStates:J

.field public maskRules:I

.field public maskSsStates:J

.field public name:Ljava/lang/String;

.field public port:Ljava/lang/String;

.field public priority:S

.field public proto:S

.field public spr:Lcom/sqn/dcc/swmProtocolPortRange;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/sqn/dcc/FwdFilterConfig;->name:Ljava/lang/String;

    new-instance v0, Lcom/sqn/dcc/FwdFilterAction;

    invoke-direct {v0}, Lcom/sqn/dcc/FwdFilterAction;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/FwdFilterConfig;->action:Lcom/sqn/dcc/FwdFilterAction;

    const-string v0, ""

    iput-object v0, p0, Lcom/sqn/dcc/FwdFilterConfig;->port:Ljava/lang/String;

    new-instance v0, Lcom/sqn/dcc/swmMaskedMacAddress;

    invoke-direct {v0}, Lcom/sqn/dcc/swmMaskedMacAddress;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/FwdFilterConfig;->ethsa:Lcom/sqn/dcc/swmMaskedMacAddress;

    new-instance v0, Lcom/sqn/dcc/swmMaskedMacAddress;

    invoke-direct {v0}, Lcom/sqn/dcc/swmMaskedMacAddress;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/FwdFilterConfig;->ethda:Lcom/sqn/dcc/swmMaskedMacAddress;

    new-instance v0, Lcom/sqn/dcc/swmIpDscpRangeMask;

    invoke-direct {v0}, Lcom/sqn/dcc/swmIpDscpRangeMask;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/FwdFilterConfig;->dscprm:Lcom/sqn/dcc/swmIpDscpRangeMask;

    new-instance v0, Lcom/sqn/dcc/swmMaskedIpAddress;

    invoke-direct {v0}, Lcom/sqn/dcc/swmMaskedIpAddress;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/FwdFilterConfig;->ipsrc:Lcom/sqn/dcc/swmMaskedIpAddress;

    new-instance v0, Lcom/sqn/dcc/swmMaskedIpAddress;

    invoke-direct {v0}, Lcom/sqn/dcc/swmMaskedIpAddress;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/FwdFilterConfig;->ipdst:Lcom/sqn/dcc/swmMaskedIpAddress;

    new-instance v0, Lcom/sqn/dcc/swmProtocolPortRange;

    invoke-direct {v0}, Lcom/sqn/dcc/swmProtocolPortRange;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/FwdFilterConfig;->spr:Lcom/sqn/dcc/swmProtocolPortRange;

    new-instance v0, Lcom/sqn/dcc/swmProtocolPortRange;

    invoke-direct {v0}, Lcom/sqn/dcc/swmProtocolPortRange;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/FwdFilterConfig;->dpr:Lcom/sqn/dcc/swmProtocolPortRange;

    new-instance v0, Lcom/sqn/dcc/FwdChunkOp;

    invoke-direct {v0}, Lcom/sqn/dcc/FwdChunkOp;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/FwdFilterConfig;->chunkOp:Lcom/sqn/dcc/FwdChunkOp;

    return-void
.end method

.method public static marshall([BLcom/sqn/dcc/FwdFilterConfig;Lcom/sqn/dcc/OutValue;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/FwdFilterConfig;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/4 v6, 0x0

    const v3, -0xfffb

    const/4 v1, 0x0

    array-length v4, p0

    iget-object v2, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x22

    if-ge v4, v2, :cond_0

    move v2, v3

    :goto_0
    return v2

    :cond_0
    array-length v4, p0

    iget-object v2, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v5, p1, Lcom/sqn/dcc/FwdFilterConfig;->name:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v2, v5

    if-ge v4, v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p1, Lcom/sqn/dcc/FwdFilterConfig;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v4, p1, Lcom/sqn/dcc/FwdFilterConfig;->name:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, p0, v2

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object v2, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput-byte v6, p0, v2

    iget-object v2, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    iget-boolean v2, p1, Lcom/sqn/dcc/FwdFilterConfig;->enable:Z

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BZLcom/sqn/dcc/OutValue;)V

    iget-object v2, p1, Lcom/sqn/dcc/FwdFilterConfig;->action:Lcom/sqn/dcc/FwdFilterAction;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/FwdFilterAction;->marshall([BLcom/sqn/dcc/FwdFilterAction;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_3

    move v2, v1

    goto :goto_0

    :cond_3
    iget-short v2, p1, Lcom/sqn/dcc/FwdFilterConfig;->priority:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    array-length v4, p0

    iget-object v2, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v5, p1, Lcom/sqn/dcc/FwdFilterConfig;->port:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v2, v5

    if-ge v4, v2, :cond_4

    move v2, v3

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_2
    iget-object v2, p1, Lcom/sqn/dcc/FwdFilterConfig;->port:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_5

    iget-object v2, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p1, Lcom/sqn/dcc/FwdFilterConfig;->port:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    goto :goto_2

    :cond_5
    iget-object v2, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput-byte v6, p0, v2

    iget-object v2, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    iget-boolean v2, p1, Lcom/sqn/dcc/FwdFilterConfig;->isRx:Z

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BZLcom/sqn/dcc/OutValue;)V

    iget-object v2, p1, Lcom/sqn/dcc/FwdFilterConfig;->ethsa:Lcom/sqn/dcc/swmMaskedMacAddress;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmMaskedMacAddress;->marshall([BLcom/sqn/dcc/swmMaskedMacAddress;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_6

    move v2, v1

    goto/16 :goto_0

    :cond_6
    iget-object v2, p1, Lcom/sqn/dcc/FwdFilterConfig;->ethda:Lcom/sqn/dcc/swmMaskedMacAddress;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmMaskedMacAddress;->marshall([BLcom/sqn/dcc/swmMaskedMacAddress;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_7

    move v2, v1

    goto/16 :goto_0

    :cond_7
    iget-object v2, p1, Lcom/sqn/dcc/FwdFilterConfig;->dscprm:Lcom/sqn/dcc/swmIpDscpRangeMask;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmIpDscpRangeMask;->marshall([BLcom/sqn/dcc/swmIpDscpRangeMask;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_8

    move v2, v1

    goto/16 :goto_0

    :cond_8
    iget v2, p1, Lcom/sqn/dcc/FwdFilterConfig;->ethType:I

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy16ToBuffer([BILcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/FwdFilterConfig;->proto:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-object v2, p1, Lcom/sqn/dcc/FwdFilterConfig;->ipsrc:Lcom/sqn/dcc/swmMaskedIpAddress;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmMaskedIpAddress;->marshall([BLcom/sqn/dcc/swmMaskedIpAddress;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_9

    move v2, v1

    goto/16 :goto_0

    :cond_9
    iget-object v2, p1, Lcom/sqn/dcc/FwdFilterConfig;->ipdst:Lcom/sqn/dcc/swmMaskedIpAddress;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmMaskedIpAddress;->marshall([BLcom/sqn/dcc/swmMaskedIpAddress;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_a

    move v2, v1

    goto/16 :goto_0

    :cond_a
    iget-object v2, p1, Lcom/sqn/dcc/FwdFilterConfig;->spr:Lcom/sqn/dcc/swmProtocolPortRange;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmProtocolPortRange;->marshall([BLcom/sqn/dcc/swmProtocolPortRange;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_b

    move v2, v1

    goto/16 :goto_0

    :cond_b
    iget-object v2, p1, Lcom/sqn/dcc/FwdFilterConfig;->dpr:Lcom/sqn/dcc/swmProtocolPortRange;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmProtocolPortRange;->marshall([BLcom/sqn/dcc/swmProtocolPortRange;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_c

    move v2, v1

    goto/16 :goto_0

    :cond_c
    iget-wide v2, p1, Lcom/sqn/dcc/FwdFilterConfig;->maskSsStates:J

    invoke-static {p0, v2, v3, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget-wide v2, p1, Lcom/sqn/dcc/FwdFilterConfig;->maskHostStates:J

    invoke-static {p0, v2, v3, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget-object v2, p1, Lcom/sqn/dcc/FwdFilterConfig;->chunkOp:Lcom/sqn/dcc/FwdChunkOp;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/FwdChunkOp;->marshall([BLcom/sqn/dcc/FwdChunkOp;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_d

    move v2, v1

    goto/16 :goto_0

    :cond_d
    iget-object v2, p1, Lcom/sqn/dcc/FwdFilterConfig;->chunk:[Lcom/sqn/dcc/FwdChunkConfig;

    if-nez v2, :cond_f

    const-wide/16 v2, 0x0

    invoke-static {p0, v2, v3, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    :cond_e
    iget v2, p1, Lcom/sqn/dcc/FwdFilterConfig;->maskRules:I

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy16ToBuffer([BILcom/sqn/dcc/OutValue;)V

    move v2, v1

    goto/16 :goto_0

    :cond_f
    iget-object v2, p1, Lcom/sqn/dcc/FwdFilterConfig;->chunk:[Lcom/sqn/dcc/FwdChunkConfig;

    array-length v2, v2

    int-to-long v2, v2

    invoke-static {p0, v2, v3, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    const/4 v0, 0x0

    :goto_3
    iget-object v2, p1, Lcom/sqn/dcc/FwdFilterConfig;->chunk:[Lcom/sqn/dcc/FwdChunkConfig;

    array-length v2, v2

    if-ge v0, v2, :cond_e

    iget-object v2, p1, Lcom/sqn/dcc/FwdFilterConfig;->chunk:[Lcom/sqn/dcc/FwdChunkConfig;

    aget-object v2, v2, v0

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/FwdChunkConfig;->marshall([BLcom/sqn/dcc/FwdChunkConfig;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_10

    move v2, v1

    goto/16 :goto_0

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public static unmarshall([BLcom/sqn/dcc/FwdFilterConfig;Lcom/sqn/dcc/OutValue;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/FwdFilterConfig;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const-wide/16 v10, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    array-length v7, p0

    iget-object v4, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x22

    if-ge v7, v4, :cond_0

    const v4, -0xfffb

    :goto_0
    return v4

    :cond_0
    iget-object v4, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_1
    aget-byte v4, p0, v1

    if-eqz v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    :try_start_0
    new-instance v7, Ljava/lang/String;

    iget-object v4, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v4, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v4, v1, v4

    const-string v9, "UTF8"

    invoke-direct {v7, p0, v8, v4, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v7, p1, Lcom/sqn/dcc/FwdFilterConfig;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_2
    add-int/lit8 v4, v1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v7

    cmp-long v4, v7, v10

    if-nez v4, :cond_2

    move v4, v5

    :goto_3
    iput-boolean v4, p1, Lcom/sqn/dcc/FwdFilterConfig;->enable:Z

    iget-object v4, p1, Lcom/sqn/dcc/FwdFilterConfig;->action:Lcom/sqn/dcc/FwdFilterAction;

    invoke-static {p0, v4, p2}, Lcom/sqn/dcc/FwdFilterAction;->unmarshall([BLcom/sqn/dcc/FwdFilterAction;Lcom/sqn/dcc/OutValue;)I

    move-result v3

    if-eqz v3, :cond_3

    move v4, v3

    goto :goto_0

    :cond_2
    move v4, v6

    goto :goto_3

    :cond_3
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v4

    iput-short v4, p1, Lcom/sqn/dcc/FwdFilterConfig;->priority:S

    iget-object v4, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_4
    aget-byte v4, p0, v1

    if-eqz v4, :cond_4

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    :try_start_1
    new-instance v7, Ljava/lang/String;

    iget-object v4, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v4, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v4, v1, v4

    const-string v9, "UTF8"

    invoke-direct {v7, p0, v8, v4, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v7, p1, Lcom/sqn/dcc/FwdFilterConfig;->port:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_5
    add-int/lit8 v4, v1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v7

    cmp-long v4, v7, v10

    if-nez v4, :cond_5

    :goto_6
    iput-boolean v5, p1, Lcom/sqn/dcc/FwdFilterConfig;->isRx:Z

    iget-object v4, p1, Lcom/sqn/dcc/FwdFilterConfig;->ethsa:Lcom/sqn/dcc/swmMaskedMacAddress;

    invoke-static {p0, v4, p2}, Lcom/sqn/dcc/swmMaskedMacAddress;->unmarshall([BLcom/sqn/dcc/swmMaskedMacAddress;Lcom/sqn/dcc/OutValue;)I

    move-result v3

    if-eqz v3, :cond_6

    move v4, v3

    goto/16 :goto_0

    :cond_5
    move v5, v6

    goto :goto_6

    :cond_6
    iget-object v4, p1, Lcom/sqn/dcc/FwdFilterConfig;->ethda:Lcom/sqn/dcc/swmMaskedMacAddress;

    invoke-static {p0, v4, p2}, Lcom/sqn/dcc/swmMaskedMacAddress;->unmarshall([BLcom/sqn/dcc/swmMaskedMacAddress;Lcom/sqn/dcc/OutValue;)I

    move-result v3

    if-eqz v3, :cond_7

    move v4, v3

    goto/16 :goto_0

    :cond_7
    iget-object v4, p1, Lcom/sqn/dcc/FwdFilterConfig;->dscprm:Lcom/sqn/dcc/swmIpDscpRangeMask;

    invoke-static {p0, v4, p2}, Lcom/sqn/dcc/swmIpDscpRangeMask;->unmarshall([BLcom/sqn/dcc/swmIpDscpRangeMask;Lcom/sqn/dcc/OutValue;)I

    move-result v3

    if-eqz v3, :cond_8

    move v4, v3

    goto/16 :goto_0

    :cond_8
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy16FromBuffer([BLcom/sqn/dcc/OutValue;)I

    move-result v4

    iput v4, p1, Lcom/sqn/dcc/FwdFilterConfig;->ethType:I

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v4

    iput-short v4, p1, Lcom/sqn/dcc/FwdFilterConfig;->proto:S

    iget-object v4, p1, Lcom/sqn/dcc/FwdFilterConfig;->ipsrc:Lcom/sqn/dcc/swmMaskedIpAddress;

    invoke-static {p0, v4, p2}, Lcom/sqn/dcc/swmMaskedIpAddress;->unmarshall([BLcom/sqn/dcc/swmMaskedIpAddress;Lcom/sqn/dcc/OutValue;)I

    move-result v3

    if-eqz v3, :cond_9

    move v4, v3

    goto/16 :goto_0

    :cond_9
    iget-object v4, p1, Lcom/sqn/dcc/FwdFilterConfig;->ipdst:Lcom/sqn/dcc/swmMaskedIpAddress;

    invoke-static {p0, v4, p2}, Lcom/sqn/dcc/swmMaskedIpAddress;->unmarshall([BLcom/sqn/dcc/swmMaskedIpAddress;Lcom/sqn/dcc/OutValue;)I

    move-result v3

    if-eqz v3, :cond_a

    move v4, v3

    goto/16 :goto_0

    :cond_a
    iget-object v4, p1, Lcom/sqn/dcc/FwdFilterConfig;->spr:Lcom/sqn/dcc/swmProtocolPortRange;

    invoke-static {p0, v4, p2}, Lcom/sqn/dcc/swmProtocolPortRange;->unmarshall([BLcom/sqn/dcc/swmProtocolPortRange;Lcom/sqn/dcc/OutValue;)I

    move-result v3

    if-eqz v3, :cond_b

    move v4, v3

    goto/16 :goto_0

    :cond_b
    iget-object v4, p1, Lcom/sqn/dcc/FwdFilterConfig;->dpr:Lcom/sqn/dcc/swmProtocolPortRange;

    invoke-static {p0, v4, p2}, Lcom/sqn/dcc/swmProtocolPortRange;->unmarshall([BLcom/sqn/dcc/swmProtocolPortRange;Lcom/sqn/dcc/OutValue;)I

    move-result v3

    if-eqz v3, :cond_c

    move v4, v3

    goto/16 :goto_0

    :cond_c
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v4

    iput-wide v4, p1, Lcom/sqn/dcc/FwdFilterConfig;->maskSsStates:J

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v4

    iput-wide v4, p1, Lcom/sqn/dcc/FwdFilterConfig;->maskHostStates:J

    iget-object v4, p1, Lcom/sqn/dcc/FwdFilterConfig;->chunkOp:Lcom/sqn/dcc/FwdChunkOp;

    invoke-static {p0, v4, p2}, Lcom/sqn/dcc/FwdChunkOp;->unmarshall([BLcom/sqn/dcc/FwdChunkOp;Lcom/sqn/dcc/OutValue;)I

    move-result v3

    if-eqz v3, :cond_d

    move v4, v3

    goto/16 :goto_0

    :cond_d
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v4

    long-to-int v0, v4

    new-array v4, v0, [Lcom/sqn/dcc/FwdChunkConfig;

    iput-object v4, p1, Lcom/sqn/dcc/FwdFilterConfig;->chunk:[Lcom/sqn/dcc/FwdChunkConfig;

    const/4 v2, 0x0

    :goto_7
    iget-object v4, p1, Lcom/sqn/dcc/FwdFilterConfig;->chunk:[Lcom/sqn/dcc/FwdChunkConfig;

    array-length v4, v4

    if-ge v2, v4, :cond_e

    iget-object v4, p1, Lcom/sqn/dcc/FwdFilterConfig;->chunk:[Lcom/sqn/dcc/FwdChunkConfig;

    new-instance v5, Lcom/sqn/dcc/FwdChunkConfig;

    invoke-direct {v5}, Lcom/sqn/dcc/FwdChunkConfig;-><init>()V

    aput-object v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_e
    const/4 v2, 0x0

    :goto_8
    iget-object v4, p1, Lcom/sqn/dcc/FwdFilterConfig;->chunk:[Lcom/sqn/dcc/FwdChunkConfig;

    array-length v4, v4

    if-ge v2, v4, :cond_10

    iget-object v4, p1, Lcom/sqn/dcc/FwdFilterConfig;->chunk:[Lcom/sqn/dcc/FwdChunkConfig;

    aget-object v4, v4, v2

    invoke-static {p0, v4, p2}, Lcom/sqn/dcc/FwdChunkConfig;->unmarshall([BLcom/sqn/dcc/FwdChunkConfig;Lcom/sqn/dcc/OutValue;)I

    move-result v3

    if-eqz v3, :cond_f

    move v4, v3

    goto/16 :goto_0

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_10
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy16FromBuffer([BLcom/sqn/dcc/OutValue;)I

    move-result v4

    iput v4, p1, Lcom/sqn/dcc/FwdFilterConfig;->maskRules:I

    move v4, v3

    goto/16 :goto_0

    :catch_0
    move-exception v4

    goto/16 :goto_5

    :catch_1
    move-exception v4

    goto/16 :goto_2
.end method
