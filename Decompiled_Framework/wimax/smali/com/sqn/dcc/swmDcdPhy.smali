.class public Lcom/sqn/dcc/swmDcdPhy;
.super Ljava/lang/Object;
.source "swmDcdPhy.java"


# instance fields
.field public d:Lcom/sqn/dcc/swmPhyType;

.field public v:Lcom/sqn/dcc/swmOfdmaDcd;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sqn/dcc/swmPhyType;

    invoke-direct {v0}, Lcom/sqn/dcc/swmPhyType;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/swmDcdPhy;->d:Lcom/sqn/dcc/swmPhyType;

    new-instance v0, Lcom/sqn/dcc/swmOfdmaDcd;

    invoke-direct {v0}, Lcom/sqn/dcc/swmOfdmaDcd;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/swmDcdPhy;->v:Lcom/sqn/dcc/swmOfdmaDcd;

    return-void
.end method

.method public static marshall([BLcom/sqn/dcc/swmDcdPhy;Lcom/sqn/dcc/OutValue;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/swmDcdPhy;",
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

    add-int/lit8 v1, v1, 0x4

    if-ge v2, v1, :cond_0

    const v1, -0xfffb

    :goto_0
    return v1

    :cond_0
    iget-object v1, p1, Lcom/sqn/dcc/swmDcdPhy;->d:Lcom/sqn/dcc/swmPhyType;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmPhyType;->marshall([BLcom/sqn/dcc/swmPhyType;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/sqn/dcc/swmDcdPhy;->v:Lcom/sqn/dcc/swmOfdmaDcd;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmOfdmaDcd;->marshall([BLcom/sqn/dcc/swmOfdmaDcd;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method public static unmarshall([BLcom/sqn/dcc/swmDcdPhy;Lcom/sqn/dcc/OutValue;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/swmDcdPhy;",
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

    add-int/lit8 v1, v1, 0x4

    if-ge v2, v1, :cond_0

    const v1, -0xfffb

    :goto_0
    return v1

    :cond_0
    iget-object v1, p1, Lcom/sqn/dcc/swmDcdPhy;->d:Lcom/sqn/dcc/swmPhyType;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmPhyType;->unmarshall([BLcom/sqn/dcc/swmPhyType;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/sqn/dcc/swmDcdPhy;->v:Lcom/sqn/dcc/swmOfdmaDcd;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmOfdmaDcd;->unmarshall([BLcom/sqn/dcc/swmOfdmaDcd;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_0
.end method
