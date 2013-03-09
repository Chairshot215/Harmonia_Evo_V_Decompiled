.class public Lcom/sqn/dcc/swmNbrDesc;
.super Ljava/lang/Object;
.source "swmNbrDesc.java"


# instance fields
.field public bsEirp:I

.field public dcdCount:S

.field public dcdSettings:Lcom/sqn/dcc/swmDcd;

.field public faIndex:S

.field public hoProcessOptimization:S

.field public length:S

.field public mobilityFeatures:S

.field public nbrBsid:J

.field public neighborBsTriggerQty:S

.field public neighborBsTriggers:Lcom/sqn/dcc/swmOfdmaTrigger;

.field public pagingGroupId:[I

.field public pagingGroupIdQty:S

.field public phy:Lcom/sqn/dcc/swmOfdmaPhy;

.field public phyProfileId:S

.field public preambleIndex:S

.field public reuse3:Z

.field public schedulingService:S

.field public ucdCount:S

.field public ucdSettings:Lcom/sqn/dcc/swmUcd;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sqn/dcc/swmNbrDesc;->pagingGroupId:[I

    new-instance v0, Lcom/sqn/dcc/swmDcd;

    invoke-direct {v0}, Lcom/sqn/dcc/swmDcd;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/swmNbrDesc;->dcdSettings:Lcom/sqn/dcc/swmDcd;

    new-instance v0, Lcom/sqn/dcc/swmUcd;

    invoke-direct {v0}, Lcom/sqn/dcc/swmUcd;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/swmNbrDesc;->ucdSettings:Lcom/sqn/dcc/swmUcd;

    new-instance v0, Lcom/sqn/dcc/swmOfdmaPhy;

    invoke-direct {v0}, Lcom/sqn/dcc/swmOfdmaPhy;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/swmNbrDesc;->phy:Lcom/sqn/dcc/swmOfdmaPhy;

    new-instance v0, Lcom/sqn/dcc/swmOfdmaTrigger;

    invoke-direct {v0}, Lcom/sqn/dcc/swmOfdmaTrigger;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/swmNbrDesc;->neighborBsTriggers:Lcom/sqn/dcc/swmOfdmaTrigger;

    return-void
.end method

.method public static marshall([BLcom/sqn/dcc/swmNbrDesc;Lcom/sqn/dcc/OutValue;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/swmNbrDesc;",
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

    add-int/lit8 v2, v2, 0x17

    if-ge v3, v2, :cond_0

    const v2, -0xfffb

    :goto_0
    return v2

    :cond_0
    iget-short v2, p1, Lcom/sqn/dcc/swmNbrDesc;->length:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmNbrDesc;->phyProfileId:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmNbrDesc;->faIndex:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget v2, p1, Lcom/sqn/dcc/swmNbrDesc;->bsEirp:I

    int-to-long v2, v2

    invoke-static {p0, v2, v3, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget-wide v2, p1, Lcom/sqn/dcc/swmNbrDesc;->nbrBsid:J

    invoke-static {p0, v2, v3, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmNbrDesc;->preambleIndex:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-boolean v2, p1, Lcom/sqn/dcc/swmNbrDesc;->reuse3:Z

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BZLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmNbrDesc;->hoProcessOptimization:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmNbrDesc;->schedulingService:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmNbrDesc;->dcdCount:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmNbrDesc;->ucdCount:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmNbrDesc;->mobilityFeatures:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/swmNbrDesc;->pagingGroupIdQty:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    const/4 v0, 0x0

    :goto_1
    const/16 v2, 0xc

    if-ge v0, v2, :cond_1

    iget-object v2, p1, Lcom/sqn/dcc/swmNbrDesc;->pagingGroupId:[I

    aget v2, v2, v0

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy16ToBuffer([BILcom/sqn/dcc/OutValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v2, p1, Lcom/sqn/dcc/swmNbrDesc;->dcdSettings:Lcom/sqn/dcc/swmDcd;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmDcd;->marshall([BLcom/sqn/dcc/swmDcd;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/sqn/dcc/swmNbrDesc;->ucdSettings:Lcom/sqn/dcc/swmUcd;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmUcd;->marshall([BLcom/sqn/dcc/swmUcd;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_3

    move v2, v1

    goto :goto_0

    :cond_3
    iget-object v2, p1, Lcom/sqn/dcc/swmNbrDesc;->phy:Lcom/sqn/dcc/swmOfdmaPhy;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmOfdmaPhy;->marshall([BLcom/sqn/dcc/swmOfdmaPhy;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_4

    move v2, v1

    goto :goto_0

    :cond_4
    iget-short v2, p1, Lcom/sqn/dcc/swmNbrDesc;->neighborBsTriggerQty:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-object v2, p1, Lcom/sqn/dcc/swmNbrDesc;->neighborBsTriggers:Lcom/sqn/dcc/swmOfdmaTrigger;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmOfdmaTrigger;->marshall([BLcom/sqn/dcc/swmOfdmaTrigger;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_5

    move v2, v1

    goto :goto_0

    :cond_5
    move v2, v1

    goto :goto_0
.end method

.method public static unmarshall([BLcom/sqn/dcc/swmNbrDesc;Lcom/sqn/dcc/OutValue;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/swmNbrDesc;",
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

    add-int/lit8 v2, v2, 0x17

    if-ge v3, v2, :cond_0

    const v2, -0xfffb

    :goto_0
    return v2

    :cond_0
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmNbrDesc;->length:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmNbrDesc;->phyProfileId:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmNbrDesc;->faIndex:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p1, Lcom/sqn/dcc/swmNbrDesc;->bsEirp:I

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/sqn/dcc/swmNbrDesc;->nbrBsid:J

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmNbrDesc;->preambleIndex:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p1, Lcom/sqn/dcc/swmNbrDesc;->reuse3:Z

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmNbrDesc;->hoProcessOptimization:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmNbrDesc;->schedulingService:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmNbrDesc;->dcdCount:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmNbrDesc;->ucdCount:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmNbrDesc;->mobilityFeatures:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmNbrDesc;->pagingGroupIdQty:S

    const/4 v0, 0x0

    :goto_2
    const/16 v2, 0xc

    if-ge v0, v2, :cond_2

    iget-object v2, p1, Lcom/sqn/dcc/swmNbrDesc;->pagingGroupId:[I

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy16FromBuffer([BLcom/sqn/dcc/OutValue;)I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    iget-object v2, p1, Lcom/sqn/dcc/swmNbrDesc;->dcdSettings:Lcom/sqn/dcc/swmDcd;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmDcd;->unmarshall([BLcom/sqn/dcc/swmDcd;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_3

    move v2, v1

    goto :goto_0

    :cond_3
    iget-object v2, p1, Lcom/sqn/dcc/swmNbrDesc;->ucdSettings:Lcom/sqn/dcc/swmUcd;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmUcd;->unmarshall([BLcom/sqn/dcc/swmUcd;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_4

    move v2, v1

    goto :goto_0

    :cond_4
    iget-object v2, p1, Lcom/sqn/dcc/swmNbrDesc;->phy:Lcom/sqn/dcc/swmOfdmaPhy;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmOfdmaPhy;->unmarshall([BLcom/sqn/dcc/swmOfdmaPhy;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_5

    move v2, v1

    goto/16 :goto_0

    :cond_5
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v2

    iput-short v2, p1, Lcom/sqn/dcc/swmNbrDesc;->neighborBsTriggerQty:S

    iget-object v2, p1, Lcom/sqn/dcc/swmNbrDesc;->neighborBsTriggers:Lcom/sqn/dcc/swmOfdmaTrigger;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmOfdmaTrigger;->unmarshall([BLcom/sqn/dcc/swmOfdmaTrigger;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_6

    move v2, v1

    goto/16 :goto_0

    :cond_6
    move v2, v1

    goto/16 :goto_0
.end method
