.class public Lcom/sqn/dcc/swmOfdmaTrigger;
.super Ljava/lang/Object;
.source "swmOfdmaTrigger.java"


# instance fields
.field public action:Lcom/sqn/dcc/swmOfdmaTriggerAction;

.field public averagingDuration:S

.field public function:Lcom/sqn/dcc/swmOfdmaTriggerFunction;

.field public type:Lcom/sqn/dcc/swmOfdmaTriggerType;

.field public value:S


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sqn/dcc/swmOfdmaTriggerType;

    invoke-direct {v0}, Lcom/sqn/dcc/swmOfdmaTriggerType;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/swmOfdmaTrigger;->type:Lcom/sqn/dcc/swmOfdmaTriggerType;

    new-instance v0, Lcom/sqn/dcc/swmOfdmaTriggerFunction;

    invoke-direct {v0}, Lcom/sqn/dcc/swmOfdmaTriggerFunction;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/swmOfdmaTrigger;->function:Lcom/sqn/dcc/swmOfdmaTriggerFunction;

    new-instance v0, Lcom/sqn/dcc/swmOfdmaTriggerAction;

    invoke-direct {v0}, Lcom/sqn/dcc/swmOfdmaTriggerAction;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/swmOfdmaTrigger;->action:Lcom/sqn/dcc/swmOfdmaTriggerAction;

    return-void
.end method

.method public static marshall([BLcom/sqn/dcc/swmOfdmaTrigger;Lcom/sqn/dcc/OutValue;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/swmOfdmaTrigger;",
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

    add-int/lit8 v1, v1, 0xe

    if-ge v2, v1, :cond_0

    const v1, -0xfffb

    :goto_0
    return v1

    :cond_0
    iget-object v1, p1, Lcom/sqn/dcc/swmOfdmaTrigger;->type:Lcom/sqn/dcc/swmOfdmaTriggerType;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmOfdmaTriggerType;->marshall([BLcom/sqn/dcc/swmOfdmaTriggerType;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/sqn/dcc/swmOfdmaTrigger;->function:Lcom/sqn/dcc/swmOfdmaTriggerFunction;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmOfdmaTriggerFunction;->marshall([BLcom/sqn/dcc/swmOfdmaTriggerFunction;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lcom/sqn/dcc/swmOfdmaTrigger;->action:Lcom/sqn/dcc/swmOfdmaTriggerAction;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmOfdmaTriggerAction;->marshall([BLcom/sqn/dcc/swmOfdmaTriggerAction;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_3

    move v1, v0

    goto :goto_0

    :cond_3
    iget-short v1, p1, Lcom/sqn/dcc/swmOfdmaTrigger;->value:S

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v1, p1, Lcom/sqn/dcc/swmOfdmaTrigger;->averagingDuration:S

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    move v1, v0

    goto :goto_0
.end method

.method public static unmarshall([BLcom/sqn/dcc/swmOfdmaTrigger;Lcom/sqn/dcc/OutValue;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/swmOfdmaTrigger;",
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

    add-int/lit8 v1, v1, 0xe

    if-ge v2, v1, :cond_0

    const v1, -0xfffb

    :goto_0
    return v1

    :cond_0
    iget-object v1, p1, Lcom/sqn/dcc/swmOfdmaTrigger;->type:Lcom/sqn/dcc/swmOfdmaTriggerType;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmOfdmaTriggerType;->unmarshall([BLcom/sqn/dcc/swmOfdmaTriggerType;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/sqn/dcc/swmOfdmaTrigger;->function:Lcom/sqn/dcc/swmOfdmaTriggerFunction;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmOfdmaTriggerFunction;->unmarshall([BLcom/sqn/dcc/swmOfdmaTriggerFunction;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lcom/sqn/dcc/swmOfdmaTrigger;->action:Lcom/sqn/dcc/swmOfdmaTriggerAction;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/swmOfdmaTriggerAction;->unmarshall([BLcom/sqn/dcc/swmOfdmaTriggerAction;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_3

    move v1, v0

    goto :goto_0

    :cond_3
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v1

    iput-short v1, p1, Lcom/sqn/dcc/swmOfdmaTrigger;->value:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v1

    iput-short v1, p1, Lcom/sqn/dcc/swmOfdmaTrigger;->averagingDuration:S

    move v1, v0

    goto :goto_0
.end method
