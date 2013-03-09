.class public Lcom/sqn/dcc/CommandDesc;
.super Ljava/lang/Object;
.source "CommandDesc.java"


# instance fields
.field public arg:[Lcom/sqn/dcc/CommandArgDescr;

.field public command:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public index:I

.field public isPrivate:Z

.field public keywords:Ljava/lang/String;

.field public module:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/sqn/dcc/CommandDesc;->module:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sqn/dcc/CommandDesc;->command:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sqn/dcc/CommandDesc;->description:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sqn/dcc/CommandDesc;->keywords:Ljava/lang/String;

    return-void
.end method

.method public static marshall([BLcom/sqn/dcc/CommandDesc;Lcom/sqn/dcc/OutValue;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/CommandDesc;",
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

    add-int/lit8 v2, v2, 0xc

    if-ge v4, v2, :cond_0

    move v2, v3

    :goto_0
    return v2

    :cond_0
    iget v2, p1, Lcom/sqn/dcc/CommandDesc;->index:I

    int-to-long v4, v2

    invoke-static {p0, v4, v5, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    array-length v4, p0

    iget-object v2, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v5, p1, Lcom/sqn/dcc/CommandDesc;->module:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v2, v5

    if-ge v4, v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p1, Lcom/sqn/dcc/CommandDesc;->module:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v4, p1, Lcom/sqn/dcc/CommandDesc;->module:Ljava/lang/String;

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

    array-length v4, p0

    iget-object v2, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v5, p1, Lcom/sqn/dcc/CommandDesc;->command:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v2, v5

    if-ge v4, v2, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_2
    iget-object v2, p1, Lcom/sqn/dcc/CommandDesc;->command:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_4

    iget-object v2, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v4, p1, Lcom/sqn/dcc/CommandDesc;->command:Ljava/lang/String;

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

    goto :goto_2

    :cond_4
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

    array-length v4, p0

    iget-object v2, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v5, p1, Lcom/sqn/dcc/CommandDesc;->description:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v2, v5

    if-ge v4, v2, :cond_5

    move v2, v3

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_3
    iget-object v2, p1, Lcom/sqn/dcc/CommandDesc;->description:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_6

    iget-object v2, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v4, p1, Lcom/sqn/dcc/CommandDesc;->description:Ljava/lang/String;

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

    goto :goto_3

    :cond_6
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

    array-length v4, p0

    iget-object v2, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v5, p1, Lcom/sqn/dcc/CommandDesc;->keywords:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v2, v5

    if-ge v4, v2, :cond_7

    move v2, v3

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x0

    :goto_4
    iget-object v2, p1, Lcom/sqn/dcc/CommandDesc;->keywords:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_8

    iget-object v2, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p1, Lcom/sqn/dcc/CommandDesc;->keywords:Ljava/lang/String;

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

    goto :goto_4

    :cond_8
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

    iget-boolean v2, p1, Lcom/sqn/dcc/CommandDesc;->isPrivate:Z

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BZLcom/sqn/dcc/OutValue;)V

    iget-object v2, p1, Lcom/sqn/dcc/CommandDesc;->arg:[Lcom/sqn/dcc/CommandArgDescr;

    if-nez v2, :cond_a

    const-wide/16 v2, 0x0

    invoke-static {p0, v2, v3, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    :cond_9
    move v2, v1

    goto/16 :goto_0

    :cond_a
    iget-object v2, p1, Lcom/sqn/dcc/CommandDesc;->arg:[Lcom/sqn/dcc/CommandArgDescr;

    array-length v2, v2

    int-to-long v2, v2

    invoke-static {p0, v2, v3, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    const/4 v0, 0x0

    :goto_5
    iget-object v2, p1, Lcom/sqn/dcc/CommandDesc;->arg:[Lcom/sqn/dcc/CommandArgDescr;

    array-length v2, v2

    if-ge v0, v2, :cond_9

    iget-object v2, p1, Lcom/sqn/dcc/CommandDesc;->arg:[Lcom/sqn/dcc/CommandArgDescr;

    aget-object v2, v2, v0

    invoke-static {p0, v2, p2}, Lcom/sqn/dcc/CommandArgDescr;->marshall([BLcom/sqn/dcc/CommandArgDescr;Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_b

    move v2, v1

    goto/16 :goto_0

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method public static unmarshall([BLcom/sqn/dcc/CommandDesc;Lcom/sqn/dcc/OutValue;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/CommandDesc;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/4 v3, 0x0

    array-length v5, p0

    iget-object v4, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0xc

    if-ge v5, v4, :cond_0

    const v4, -0xfffb

    :goto_0
    return v4

    :cond_0
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, p1, Lcom/sqn/dcc/CommandDesc;->index:I

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
    new-instance v5, Ljava/lang/String;

    iget-object v4, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v4, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v4, v1, v4

    const-string v7, "UTF8"

    invoke-direct {v5, p0, v6, v4, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v5, p1, Lcom/sqn/dcc/CommandDesc;->module:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_2
    add-int/lit8 v4, v1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    iget-object v4, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_3
    aget-byte v4, p0, v1

    if-eqz v4, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    :try_start_1
    new-instance v5, Ljava/lang/String;

    iget-object v4, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v4, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v4, v1, v4

    const-string v7, "UTF8"

    invoke-direct {v5, p0, v6, v4, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v5, p1, Lcom/sqn/dcc/CommandDesc;->command:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_4
    add-int/lit8 v4, v1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    iget-object v4, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_5
    aget-byte v4, p0, v1

    if-eqz v4, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_3
    :try_start_2
    new-instance v5, Ljava/lang/String;

    iget-object v4, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v4, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v4, v1, v4

    const-string v7, "UTF8"

    invoke-direct {v5, p0, v6, v4, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v5, p1, Lcom/sqn/dcc/CommandDesc;->description:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_6
    add-int/lit8 v4, v1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    iget-object v4, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_7
    aget-byte v4, p0, v1

    if-eqz v4, :cond_4

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_4
    :try_start_3
    new-instance v5, Ljava/lang/String;

    iget-object v4, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v4, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v4, v1, v4

    const-string v7, "UTF8"

    invoke-direct {v5, p0, v6, v4, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v5, p1, Lcom/sqn/dcc/CommandDesc;->keywords:Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_8
    add-int/lit8 v4, v1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_5

    const/4 v4, 0x0

    :goto_9
    iput-boolean v4, p1, Lcom/sqn/dcc/CommandDesc;->isPrivate:Z

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v4

    long-to-int v0, v4

    new-array v4, v0, [Lcom/sqn/dcc/CommandArgDescr;

    iput-object v4, p1, Lcom/sqn/dcc/CommandDesc;->arg:[Lcom/sqn/dcc/CommandArgDescr;

    const/4 v2, 0x0

    :goto_a
    iget-object v4, p1, Lcom/sqn/dcc/CommandDesc;->arg:[Lcom/sqn/dcc/CommandArgDescr;

    array-length v4, v4

    if-ge v2, v4, :cond_6

    iget-object v4, p1, Lcom/sqn/dcc/CommandDesc;->arg:[Lcom/sqn/dcc/CommandArgDescr;

    new-instance v5, Lcom/sqn/dcc/CommandArgDescr;

    invoke-direct {v5}, Lcom/sqn/dcc/CommandArgDescr;-><init>()V

    aput-object v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_5
    const/4 v4, 0x1

    goto :goto_9

    :cond_6
    const/4 v2, 0x0

    :goto_b
    iget-object v4, p1, Lcom/sqn/dcc/CommandDesc;->arg:[Lcom/sqn/dcc/CommandArgDescr;

    array-length v4, v4

    if-ge v2, v4, :cond_8

    iget-object v4, p1, Lcom/sqn/dcc/CommandDesc;->arg:[Lcom/sqn/dcc/CommandArgDescr;

    aget-object v4, v4, v2

    invoke-static {p0, v4, p2}, Lcom/sqn/dcc/CommandArgDescr;->unmarshall([BLcom/sqn/dcc/CommandArgDescr;Lcom/sqn/dcc/OutValue;)I

    move-result v3

    if-eqz v3, :cond_7

    move v4, v3

    goto/16 :goto_0

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_8
    move v4, v3

    goto/16 :goto_0

    :catch_0
    move-exception v4

    goto :goto_8

    :catch_1
    move-exception v4

    goto :goto_6

    :catch_2
    move-exception v4

    goto/16 :goto_4

    :catch_3
    move-exception v4

    goto/16 :goto_2
.end method
