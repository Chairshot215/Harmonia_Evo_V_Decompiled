.class public Lcom/sqn/dcc/swmSf;
.super Ljava/lang/Object;
.source "swmSf.java"


# instance fields
.field public authentAlgo:Lcom/sqn/dcc/swmPkmDataAuthentAlgo;

.field public basicCid:I

.field public cid:I

.field public direction:J

.field public encryptAlgo:Lcom/sqn/dcc/swmPkmDataEncryptAlgo;

.field public param:Lcom/sqn/dcc/swmSfParam;

.field public said:I

.field public sfid:J

.field public state:Lcom/sqn/dcc/swmSfState;

.field public type:Lcom/sqn/dcc/swmSfType;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sqn/dcc/swmPkmDataEncryptAlgo;

    invoke-direct {v0}, Lcom/sqn/dcc/swmPkmDataEncryptAlgo;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/swmSf;->encryptAlgo:Lcom/sqn/dcc/swmPkmDataEncryptAlgo;

    new-instance v0, Lcom/sqn/dcc/swmPkmDataAuthentAlgo;

    invoke-direct {v0}, Lcom/sqn/dcc/swmPkmDataAuthentAlgo;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/swmSf;->authentAlgo:Lcom/sqn/dcc/swmPkmDataAuthentAlgo;

    new-instance v0, Lcom/sqn/dcc/swmSfType;

    invoke-direct {v0}, Lcom/sqn/dcc/swmSfType;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/swmSf;->type:Lcom/sqn/dcc/swmSfType;

    new-instance v0, Lcom/sqn/dcc/swmSfState;

    invoke-direct {v0}, Lcom/sqn/dcc/swmSfState;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/swmSf;->state:Lcom/sqn/dcc/swmSfState;

    new-instance v0, Lcom/sqn/dcc/swmSfParam;

    invoke-direct {v0}, Lcom/sqn/dcc/swmSfParam;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/swmSf;->param:Lcom/sqn/dcc/swmSfParam;

    return-void
.end method

.method public static marshall([BLcom/sqn/dcc/swmSf;Lcom/sqn/dcc/OutValue;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/swmSf;",
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

    add-int/lit8 v1, v1, 0x1e

    if-ge v2, v1, :cond_0

    const v1, -0xfffb

    :goto_0
    return v1

    :cond_0
    iget-wide v1, p1, Lcom/sqn/dcc/swmSf;->sfid:J

    invoke-static {p0, v1, v2, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget v1, p1, Lcom/sqn/dcc/swmSf;->cid:I

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/Util;->Copy16ToBuffer([BILcom/sqn/dcc/OutValue;)V

    iget v1, p1, Lcom/sqn/dcc/swmSf;->basicCid:I

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/Util;->Copy16ToBuffer([BILcom/sqn/dcc/OutValue;)V

    iget v1, p1, Lcom/sqn/dcc/swmSf;->said:I

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/Util;->Copy16ToBuffer([BILcom/sqn/dcc/OutValue;)V

    iget-object v1, p1, Lcom/sqn/dcc/swmSf;->encryptAlgo:Lcom/sqn/dcc/swmPkmDataEncryptAlgo;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmPkmDataEncryptAlgo;->marshall([BLcom/sqn/dcc/swmPkmDataEncryptAlgo;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/sqn/dcc/swmSf;->authentAlgo:Lcom/sqn/dcc/swmPkmDataAuthentAlgo;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmPkmDataAuthentAlgo;->marshall([BLcom/sqn/dcc/swmPkmDataAuthentAlgo;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lcom/sqn/dcc/swmSf;->type:Lcom/sqn/dcc/swmSfType;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmSfType;->marshall([BLcom/sqn/dcc/swmSfType;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_3

    move v1, v0

    goto :goto_0

    :cond_3
    iget-object v1, p1, Lcom/sqn/dcc/swmSf;->state:Lcom/sqn/dcc/swmSfState;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmSfState;->marshall([BLcom/sqn/dcc/swmSfState;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_4

    move v1, v0

    goto :goto_0

    :cond_4
    iget-wide v1, p1, Lcom/sqn/dcc/swmSf;->direction:J

    invoke-static {p0, v1, v2, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget-object v1, p1, Lcom/sqn/dcc/swmSf;->param:Lcom/sqn/dcc/swmSfParam;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmSfParam;->marshall([BLcom/sqn/dcc/swmSfParam;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_5

    move v1, v0

    goto :goto_0

    :cond_5
    move v1, v0

    goto :goto_0
.end method

.method public static unmarshall([BLcom/sqn/dcc/swmSf;Lcom/sqn/dcc/OutValue;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/swmSf;",
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

    add-int/lit8 v1, v1, 0x1e

    if-ge v2, v1, :cond_0

    const v1, -0xfffb

    :goto_0
    return v1

    :cond_0
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/sqn/dcc/swmSf;->sfid:J

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy16FromBuffer([BLcom/sqn/dcc/OutValue;)I

    move-result v1

    iput v1, p1, Lcom/sqn/dcc/swmSf;->cid:I

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy16FromBuffer([BLcom/sqn/dcc/OutValue;)I

    move-result v1

    iput v1, p1, Lcom/sqn/dcc/swmSf;->basicCid:I

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy16FromBuffer([BLcom/sqn/dcc/OutValue;)I

    move-result v1

    iput v1, p1, Lcom/sqn/dcc/swmSf;->said:I

    iget-object v1, p1, Lcom/sqn/dcc/swmSf;->encryptAlgo:Lcom/sqn/dcc/swmPkmDataEncryptAlgo;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmPkmDataEncryptAlgo;->unmarshall([BLcom/sqn/dcc/swmPkmDataEncryptAlgo;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/sqn/dcc/swmSf;->authentAlgo:Lcom/sqn/dcc/swmPkmDataAuthentAlgo;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmPkmDataAuthentAlgo;->unmarshall([BLcom/sqn/dcc/swmPkmDataAuthentAlgo;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lcom/sqn/dcc/swmSf;->type:Lcom/sqn/dcc/swmSfType;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmSfType;->unmarshall([BLcom/sqn/dcc/swmSfType;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_3

    move v1, v0

    goto :goto_0

    :cond_3
    iget-object v1, p1, Lcom/sqn/dcc/swmSf;->state:Lcom/sqn/dcc/swmSfState;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmSfState;->unmarshall([BLcom/sqn/dcc/swmSfState;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_4

    move v1, v0

    goto :goto_0

    :cond_4
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/sqn/dcc/swmSf;->direction:J

    iget-object v1, p1, Lcom/sqn/dcc/swmSf;->param:Lcom/sqn/dcc/swmSfParam;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmSfParam;->unmarshall([BLcom/sqn/dcc/swmSfParam;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_5

    move v1, v0

    goto :goto_0

    :cond_5
    move v1, v0

    goto :goto_0
.end method
