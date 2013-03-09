.class public Lcom/sqn/dcc/swmOfdmaDlBp;
.super Ljava/lang/Object;
.source "swmOfdmaDlBp.java"


# instance fields
.field public fecCode:Lcom/sqn/dcc/swmOfdmaFecCode;

.field public mimoKind:Lcom/sqn/dcc/swmOfdmaMimoKind;

.field public repetition:Lcom/sqn/dcc/swmOfdmaRepetitionCoding;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sqn/dcc/swmOfdmaFecCode;

    invoke-direct {v0}, Lcom/sqn/dcc/swmOfdmaFecCode;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/swmOfdmaDlBp;->fecCode:Lcom/sqn/dcc/swmOfdmaFecCode;

    new-instance v0, Lcom/sqn/dcc/swmOfdmaRepetitionCoding;

    invoke-direct {v0}, Lcom/sqn/dcc/swmOfdmaRepetitionCoding;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/swmOfdmaDlBp;->repetition:Lcom/sqn/dcc/swmOfdmaRepetitionCoding;

    new-instance v0, Lcom/sqn/dcc/swmOfdmaMimoKind;

    invoke-direct {v0}, Lcom/sqn/dcc/swmOfdmaMimoKind;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/swmOfdmaDlBp;->mimoKind:Lcom/sqn/dcc/swmOfdmaMimoKind;

    return-void
.end method

.method public static marshall([BLcom/sqn/dcc/swmOfdmaDlBp;Lcom/sqn/dcc/OutValue;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/swmOfdmaDlBp;",
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

    add-int/lit8 v1, v1, 0xc

    if-ge v2, v1, :cond_0

    const v1, -0xfffb

    :goto_0
    return v1

    :cond_0
    iget-object v1, p1, Lcom/sqn/dcc/swmOfdmaDlBp;->fecCode:Lcom/sqn/dcc/swmOfdmaFecCode;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmOfdmaFecCode;->marshall([BLcom/sqn/dcc/swmOfdmaFecCode;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/sqn/dcc/swmOfdmaDlBp;->repetition:Lcom/sqn/dcc/swmOfdmaRepetitionCoding;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmOfdmaRepetitionCoding;->marshall([BLcom/sqn/dcc/swmOfdmaRepetitionCoding;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lcom/sqn/dcc/swmOfdmaDlBp;->mimoKind:Lcom/sqn/dcc/swmOfdmaMimoKind;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmOfdmaMimoKind;->marshall([BLcom/sqn/dcc/swmOfdmaMimoKind;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_3

    move v1, v0

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_0
.end method

.method public static unmarshall([BLcom/sqn/dcc/swmOfdmaDlBp;Lcom/sqn/dcc/OutValue;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/swmOfdmaDlBp;",
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

    add-int/lit8 v1, v1, 0xc

    if-ge v2, v1, :cond_0

    const v1, -0xfffb

    :goto_0
    return v1

    :cond_0
    iget-object v1, p1, Lcom/sqn/dcc/swmOfdmaDlBp;->fecCode:Lcom/sqn/dcc/swmOfdmaFecCode;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmOfdmaFecCode;->unmarshall([BLcom/sqn/dcc/swmOfdmaFecCode;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/sqn/dcc/swmOfdmaDlBp;->repetition:Lcom/sqn/dcc/swmOfdmaRepetitionCoding;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmOfdmaRepetitionCoding;->unmarshall([BLcom/sqn/dcc/swmOfdmaRepetitionCoding;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lcom/sqn/dcc/swmOfdmaDlBp;->mimoKind:Lcom/sqn/dcc/swmOfdmaMimoKind;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmOfdmaMimoKind;->unmarshall([BLcom/sqn/dcc/swmOfdmaMimoKind;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_3

    move v1, v0

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_0
.end method
