.class public Lcom/sqn/dcc/SniffPacket;
.super Ljava/lang/Object;
.source "SniffPacket.java"


# instance fields
.field public cdmaBackoff:I

.field public cdmaCode:S

.field public cdmaCodeDomain:Lcom/sqn/dcc/swmCdmaCodeDomain;

.field public cqichBasicCid:I

.field public cqichCode:S

.field public cqichIndex:I

.field public cqichType:Lcom/sqn/dcc/swmCqichFeedbackType;

.field public date:J

.field public frameNbr:J

.field public isBwrPiggyback:Z

.field public isRx:Z

.field public payload:[S

.field public pointName:Ljava/lang/String;

.field public type:Lcom/sqn/dcc/swmSniffLoggedType;

.field public wiMaxHeader:[S


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/sqn/dcc/SniffPacket;->wiMaxHeader:[S

    const-string v0, ""

    iput-object v0, p0, Lcom/sqn/dcc/SniffPacket;->pointName:Ljava/lang/String;

    new-instance v0, Lcom/sqn/dcc/swmSniffLoggedType;

    invoke-direct {v0}, Lcom/sqn/dcc/swmSniffLoggedType;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/SniffPacket;->type:Lcom/sqn/dcc/swmSniffLoggedType;

    new-instance v0, Lcom/sqn/dcc/swmCdmaCodeDomain;

    invoke-direct {v0}, Lcom/sqn/dcc/swmCdmaCodeDomain;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/SniffPacket;->cdmaCodeDomain:Lcom/sqn/dcc/swmCdmaCodeDomain;

    new-instance v0, Lcom/sqn/dcc/swmCqichFeedbackType;

    invoke-direct {v0}, Lcom/sqn/dcc/swmCqichFeedbackType;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/SniffPacket;->cqichType:Lcom/sqn/dcc/swmCqichFeedbackType;

    return-void
.end method

.method public static marshall([BLcom/sqn/dcc/SniffPacket;Lcom/sqn/dcc/OutValue;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/SniffPacket;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const v3, -0xfffb

    const/4 v1, 0x0

    array-length v4, p0

    iget-object v2, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x2c

    if-ge v4, v2, :cond_0

    move v2, v3

    :goto_0
    return v2

    :cond_0
    iget-wide v4, p1, Lcom/sqn/dcc/SniffPacket;->date:J

    invoke-static {p0, v4, v5, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget-wide v4, p1, Lcom/sqn/dcc/SniffPacket;->frameNbr:J

    invoke-static {p0, v4, v5, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget-boolean v2, p1, Lcom/sqn/dcc/SniffPacket;->isRx:Z

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BZLcom/sqn/dcc/OutValue;)V

    array-length v4, p0

    iget-object v2, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v5, p1, Lcom/sqn/dcc/SniffPacket;->pointName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v2, v5

    if-ge v4, v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p1, Lcom/sqn/dcc/SniffPacket;->pointName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p1, Lcom/sqn/dcc/SniffPacket;->pointName:Ljava/lang/String;

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

    goto :goto_1

    :cond_2
    iget-object v2, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    aput-byte v3, p0, v2

    iget-object v2, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    iget-object v2, p1, Lcom/sqn/dcc/SniffPacket;->type:Lcom/sqn/dcc/swmSniffLoggedType;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmSniffLoggedType;->marshall([BLcom/sqn/dcc/swmSniffLoggedType;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_3

    move v2, v1

    goto :goto_0

    :cond_3
    iget-boolean v2, p1, Lcom/sqn/dcc/SniffPacket;->isBwrPiggyback:Z

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BZLcom/sqn/dcc/OutValue;)V

    const/4 v0, 0x0

    :goto_2
    const/4 v2, 0x6

    if-ge v0, v2, :cond_4

    iget-object v2, p1, Lcom/sqn/dcc/SniffPacket;->wiMaxHeader:[S

    aget-short v2, v2, v0

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    iget-short v2, p1, Lcom/sqn/dcc/SniffPacket;->cdmaCode:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-object v2, p1, Lcom/sqn/dcc/SniffPacket;->cdmaCodeDomain:Lcom/sqn/dcc/swmCdmaCodeDomain;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmCdmaCodeDomain;->marshall([BLcom/sqn/dcc/swmCdmaCodeDomain;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_5

    move v2, v1

    goto/16 :goto_0

    :cond_5
    iget v2, p1, Lcom/sqn/dcc/SniffPacket;->cdmaBackoff:I

    int-to-long v2, v2

    invoke-static {p0, v2, v3, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget-short v2, p1, Lcom/sqn/dcc/SniffPacket;->cqichCode:S

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-object v2, p1, Lcom/sqn/dcc/SniffPacket;->cqichType:Lcom/sqn/dcc/swmCqichFeedbackType;

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/swmCqichFeedbackType;->marshall([BLcom/sqn/dcc/swmCqichFeedbackType;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_6

    move v2, v1

    goto/16 :goto_0

    :cond_6
    iget v2, p1, Lcom/sqn/dcc/SniffPacket;->cqichBasicCid:I

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy16ToBuffer([BILcom/sqn/dcc/OutValue;)V

    iget v2, p1, Lcom/sqn/dcc/SniffPacket;->cqichIndex:I

    int-to-long v2, v2

    invoke-static {p0, v2, v3, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget-object v2, p1, Lcom/sqn/dcc/SniffPacket;->payload:[S

    if-nez v2, :cond_8

    const-wide/16 v2, 0x0

    invoke-static {p0, v2, v3, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    :cond_7
    move v2, v1

    goto/16 :goto_0

    :cond_8
    iget-object v2, p1, Lcom/sqn/dcc/SniffPacket;->payload:[S

    array-length v2, v2

    int-to-long v2, v2

    invoke-static {p0, v2, v3, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    const/4 v0, 0x0

    :goto_3
    iget-object v2, p1, Lcom/sqn/dcc/SniffPacket;->payload:[S

    array-length v2, v2

    if-ge v0, v2, :cond_7

    iget-object v2, p1, Lcom/sqn/dcc/SniffPacket;->payload:[S

    aget-short v2, v2, v0

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public static unmarshall([BLcom/sqn/dcc/SniffPacket;Lcom/sqn/dcc/OutValue;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/SniffPacket;",
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

    add-int/lit8 v4, v4, 0x2c

    if-ge v7, v4, :cond_0

    const v4, -0xfffb

    :goto_0
    return v4

    :cond_0
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v7

    iput-wide v7, p1, Lcom/sqn/dcc/SniffPacket;->date:J

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v7

    iput-wide v7, p1, Lcom/sqn/dcc/SniffPacket;->frameNbr:J

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v7

    cmp-long v4, v7, v10

    if-nez v4, :cond_1

    move v4, v5

    :goto_1
    iput-boolean v4, p1, Lcom/sqn/dcc/SniffPacket;->isRx:Z

    iget-object v4, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_2
    aget-byte v4, p0, v1

    if-eqz v4, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    move v4, v6

    goto :goto_1

    :cond_2
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

    iput-object v7, p1, Lcom/sqn/dcc/SniffPacket;->pointName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    add-int/lit8 v4, v1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    iget-object v4, p1, Lcom/sqn/dcc/SniffPacket;->type:Lcom/sqn/dcc/swmSniffLoggedType;

    invoke-static {p0, v4, p2}, Lcom/sqn/dcc/swmSniffLoggedType;->unmarshall([BLcom/sqn/dcc/swmSniffLoggedType;Lcom/sqn/dcc/OutValue;)I

    move-result v3

    if-eqz v3, :cond_3

    move v4, v3

    goto :goto_0

    :cond_3
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v7

    cmp-long v4, v7, v10

    if-nez v4, :cond_4

    :goto_4
    iput-boolean v5, p1, Lcom/sqn/dcc/SniffPacket;->isBwrPiggyback:Z

    const/4 v2, 0x0

    :goto_5
    const/4 v4, 0x6

    if-ge v2, v4, :cond_5

    iget-object v4, p1, Lcom/sqn/dcc/SniffPacket;->wiMaxHeader:[S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v5

    aput-short v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_4
    move v5, v6

    goto :goto_4

    :cond_5
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v4

    iput-short v4, p1, Lcom/sqn/dcc/SniffPacket;->cdmaCode:S

    iget-object v4, p1, Lcom/sqn/dcc/SniffPacket;->cdmaCodeDomain:Lcom/sqn/dcc/swmCdmaCodeDomain;

    invoke-static {p0, v4, p2}, Lcom/sqn/dcc/swmCdmaCodeDomain;->unmarshall([BLcom/sqn/dcc/swmCdmaCodeDomain;Lcom/sqn/dcc/OutValue;)I

    move-result v3

    if-eqz v3, :cond_6

    move v4, v3

    goto :goto_0

    :cond_6
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, p1, Lcom/sqn/dcc/SniffPacket;->cdmaBackoff:I

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v4

    iput-short v4, p1, Lcom/sqn/dcc/SniffPacket;->cqichCode:S

    iget-object v4, p1, Lcom/sqn/dcc/SniffPacket;->cqichType:Lcom/sqn/dcc/swmCqichFeedbackType;

    invoke-static {p0, v4, p2}, Lcom/sqn/dcc/swmCqichFeedbackType;->unmarshall([BLcom/sqn/dcc/swmCqichFeedbackType;Lcom/sqn/dcc/OutValue;)I

    move-result v3

    if-eqz v3, :cond_7

    move v4, v3

    goto/16 :goto_0

    :cond_7
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy16FromBuffer([BLcom/sqn/dcc/OutValue;)I

    move-result v4

    iput v4, p1, Lcom/sqn/dcc/SniffPacket;->cqichBasicCid:I

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, p1, Lcom/sqn/dcc/SniffPacket;->cqichIndex:I

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v4

    long-to-int v0, v4

    new-array v4, v0, [S

    iput-object v4, p1, Lcom/sqn/dcc/SniffPacket;->payload:[S

    const/4 v2, 0x0

    :goto_6
    iget-object v4, p1, Lcom/sqn/dcc/SniffPacket;->payload:[S

    array-length v4, v4

    if-ge v2, v4, :cond_8

    iget-object v4, p1, Lcom/sqn/dcc/SniffPacket;->payload:[S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v5

    aput-short v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_8
    move v4, v3

    goto/16 :goto_0

    :catch_0
    move-exception v4

    goto :goto_3
.end method
