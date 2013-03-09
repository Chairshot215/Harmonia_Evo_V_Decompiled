.class public Lcom/sqn/dcc/swmSfParam;
.super Ljava/lang/Object;
.source "swmSfParam.java"


# instance fields
.field public activeQos:Lcom/sqn/dcc/swmQosParam;

.field public admittedQos:Lcom/sqn/dcc/swmQosParam;

.field public arq:Lcom/sqn/dcc/swmArqParam;

.field public cs:Lcom/sqn/dcc/swmCsSpecification;

.field public deliveryService:Lcom/sqn/dcc/swmDataDeliveryService;

.field public harq:Lcom/sqn/dcc/swmHarqParam;

.field public isLongFsn:Z

.field public provisionedQos:Lcom/sqn/dcc/swmQosParam;

.field public rtPolicy:S

.field public scMask:J

.field public scName:[C

.field public scheduling:Lcom/sqn/dcc/swmSchedulingType;

.field public sdu:Lcom/sqn/dcc/swmSduParam;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/sqn/dcc/swmSfParam;->scName:[C

    new-instance v0, Lcom/sqn/dcc/swmSchedulingType;

    invoke-direct {v0}, Lcom/sqn/dcc/swmSchedulingType;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/swmSfParam;->scheduling:Lcom/sqn/dcc/swmSchedulingType;

    new-instance v0, Lcom/sqn/dcc/swmDataDeliveryService;

    invoke-direct {v0}, Lcom/sqn/dcc/swmDataDeliveryService;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/swmSfParam;->deliveryService:Lcom/sqn/dcc/swmDataDeliveryService;

    new-instance v0, Lcom/sqn/dcc/swmQosParam;

    invoke-direct {v0}, Lcom/sqn/dcc/swmQosParam;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/swmSfParam;->provisionedQos:Lcom/sqn/dcc/swmQosParam;

    new-instance v0, Lcom/sqn/dcc/swmQosParam;

    invoke-direct {v0}, Lcom/sqn/dcc/swmQosParam;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/swmSfParam;->admittedQos:Lcom/sqn/dcc/swmQosParam;

    new-instance v0, Lcom/sqn/dcc/swmQosParam;

    invoke-direct {v0}, Lcom/sqn/dcc/swmQosParam;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/swmSfParam;->activeQos:Lcom/sqn/dcc/swmQosParam;

    new-instance v0, Lcom/sqn/dcc/swmSduParam;

    invoke-direct {v0}, Lcom/sqn/dcc/swmSduParam;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/swmSfParam;->sdu:Lcom/sqn/dcc/swmSduParam;

    new-instance v0, Lcom/sqn/dcc/swmArqParam;

    invoke-direct {v0}, Lcom/sqn/dcc/swmArqParam;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/swmSfParam;->arq:Lcom/sqn/dcc/swmArqParam;

    new-instance v0, Lcom/sqn/dcc/swmHarqParam;

    invoke-direct {v0}, Lcom/sqn/dcc/swmHarqParam;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/swmSfParam;->harq:Lcom/sqn/dcc/swmHarqParam;

    new-instance v0, Lcom/sqn/dcc/swmCsSpecification;

    invoke-direct {v0}, Lcom/sqn/dcc/swmCsSpecification;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/swmSfParam;->cs:Lcom/sqn/dcc/swmCsSpecification;

    return-void
.end method

.method public static marshall([BLcom/sqn/dcc/swmSfParam;Lcom/sqn/dcc/OutValue;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/swmSfParam;",
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
    const/4 v0, 0x0

    :goto_1
    const/16 v2, 0x80

    if-ge v0, v2, :cond_1

    iget-object v2, p1, Lcom/sqn/dcc/swmSfParam;->scName:[C

    aget-char v2, v2, v0

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BCLcom/sqn/dcc/OutValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-wide v2, p1, Lcom/sqn/dcc/swmSfParam;->scMask:J

    invoke-static {p0, v2, v3, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget-object v2, p1, Lcom/sqn/dcc/swmSfParam;->scheduling:Lcom/sqn/dcc/swmSchedulingType;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmSchedulingType;->marshall([BLcom/sqn/dcc/swmSchedulingType;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/sqn/dcc/swmSfParam;->deliveryService:Lcom/sqn/dcc/swmDataDeliveryService;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmDataDeliveryService;->marshall([BLcom/sqn/dcc/swmDataDeliveryService;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_3

    move v2, v1

    goto :goto_0

    :cond_3
    iget-object v2, p1, Lcom/sqn/dcc/swmSfParam;->provisionedQos:Lcom/sqn/dcc/swmQosParam;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmQosParam;->marshall([BLcom/sqn/dcc/swmQosParam;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_4

    move v2, v1

    goto :goto_0

    :cond_4
    iget-object v2, p1, Lcom/sqn/dcc/swmSfParam;->admittedQos:Lcom/sqn/dcc/swmQosParam;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmQosParam;->marshall([BLcom/sqn/dcc/swmQosParam;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_5

    move v2, v1

    goto :goto_0

    :cond_5
    iget-object v2, p1, Lcom/sqn/dcc/swmSfParam;->activeQos:Lcom/sqn/dcc/swmQosParam;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmQosParam;->marshall([BLcom/sqn/dcc/swmQosParam;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_6

    move v2, v1

    goto :goto_0

    :cond_6
    iget-object v2, p1, Lcom/sqn/dcc/swmSfParam;->sdu:Lcom/sqn/dcc/swmSduParam;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmSduParam;->marshall([BLcom/sqn/dcc/swmSduParam;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_7

    move v2, v1

    goto :goto_0

    :cond_7
    iget-object v2, p1, Lcom/sqn/dcc/swmSfParam;->arq:Lcom/sqn/dcc/swmArqParam;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmArqParam;->marshall([BLcom/sqn/dcc/swmArqParam;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_8

    move v2, v1

    goto :goto_0

    :cond_8
    iget-object v2, p1, Lcom/sqn/dcc/swmSfParam;->harq:Lcom/sqn/dcc/swmHarqParam;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmHarqParam;->marshall([BLcom/sqn/dcc/swmHarqParam;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_9

    move v2, v1

    goto :goto_0

    :cond_9
    iget-short v2, p1, Lcom/sqn/dcc/swmSfParam;->rtPolicy:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-boolean v2, p1, Lcom/sqn/dcc/swmSfParam;->isLongFsn:Z

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BZLcom/sqn/dcc/OutValue;)V

    iget-object v2, p1, Lcom/sqn/dcc/swmSfParam;->cs:Lcom/sqn/dcc/swmCsSpecification;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmCsSpecification;->marshall([BLcom/sqn/dcc/swmCsSpecification;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_a

    move v2, v1

    goto :goto_0

    :cond_a
    move v2, v1

    goto :goto_0
.end method

.method public static unmarshall([BLcom/sqn/dcc/swmSfParam;Lcom/sqn/dcc/OutValue;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/swmSfParam;",
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
    const/4 v0, 0x0

    :goto_1
    const/16 v2, 0x80

    if-ge v0, v2, :cond_1

    iget-object v2, p1, Lcom/sqn/dcc/swmSfParam;->scName:[C

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v3

    int-to-char v3, v3

    aput-char v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/sqn/dcc/swmSfParam;->scMask:J

    iget-object v2, p1, Lcom/sqn/dcc/swmSfParam;->scheduling:Lcom/sqn/dcc/swmSchedulingType;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmSchedulingType;->unmarshall([BLcom/sqn/dcc/swmSchedulingType;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/sqn/dcc/swmSfParam;->deliveryService:Lcom/sqn/dcc/swmDataDeliveryService;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmDataDeliveryService;->unmarshall([BLcom/sqn/dcc/swmDataDeliveryService;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_3

    move v2, v1

    goto :goto_0

    :cond_3
    iget-object v2, p1, Lcom/sqn/dcc/swmSfParam;->provisionedQos:Lcom/sqn/dcc/swmQosParam;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmQosParam;->unmarshall([BLcom/sqn/dcc/swmQosParam;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_4

    move v2, v1

    goto :goto_0

    :cond_4
    iget-object v2, p1, Lcom/sqn/dcc/swmSfParam;->admittedQos:Lcom/sqn/dcc/swmQosParam;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmQosParam;->unmarshall([BLcom/sqn/dcc/swmQosParam;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_5

    move v2, v1

    goto :goto_0

    :cond_5
    iget-object v2, p1, Lcom/sqn/dcc/swmSfParam;->activeQos:Lcom/sqn/dcc/swmQosParam;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmQosParam;->unmarshall([BLcom/sqn/dcc/swmQosParam;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_6

    move v2, v1

    goto :goto_0

    :cond_6
    iget-object v2, p1, Lcom/sqn/dcc/swmSfParam;->sdu:Lcom/sqn/dcc/swmSduParam;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmSduParam;->unmarshall([BLcom/sqn/dcc/swmSduParam;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_7

    move v2, v1

    goto :goto_0

    :cond_7
    iget-object v2, p1, Lcom/sqn/dcc/swmSfParam;->arq:Lcom/sqn/dcc/swmArqParam;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmArqParam;->unmarshall([BLcom/sqn/dcc/swmArqParam;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_8

    move v2, v1

    goto :goto_0

    :cond_8
    iget-object v2, p1, Lcom/sqn/dcc/swmSfParam;->harq:Lcom/sqn/dcc/swmHarqParam;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmHarqParam;->unmarshall([BLcom/sqn/dcc/swmHarqParam;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_9

    move v2, v1

    goto :goto_0

    :cond_9
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmSfParam;->rtPolicy:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_a

    const/4 v2, 0x0

    :goto_2
    iput-boolean v2, p1, Lcom/sqn/dcc/swmSfParam;->isLongFsn:Z

    iget-object v2, p1, Lcom/sqn/dcc/swmSfParam;->cs:Lcom/sqn/dcc/swmCsSpecification;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmCsSpecification;->unmarshall([BLcom/sqn/dcc/swmCsSpecification;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_b

    move v2, v1

    goto/16 :goto_0

    :cond_a
    const/4 v2, 0x1

    goto :goto_2

    :cond_b
    move v2, v1

    goto/16 :goto_0
.end method
