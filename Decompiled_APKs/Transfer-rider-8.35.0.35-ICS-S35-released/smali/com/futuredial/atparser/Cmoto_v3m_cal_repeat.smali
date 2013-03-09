.class Lcom/futuredial/atparser/Cmoto_v3m_cal_repeat;
.super Lcom/futuredial/atparser/CCmobineProcType;
.source "CCmobineProcType.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 426
    invoke-direct {p0}, Lcom/futuredial/atparser/CCmobineProcType;-><init>()V

    return-void
.end method


# virtual methods
.method public procValue(Ljava/util/ArrayList;)Z
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, args:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v10, 0xd8

    .line 430
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v9, v8, :cond_0

    .line 463
    :goto_0
    return v7

    .line 431
    :cond_0
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 432
    .local v2, recuType:I
    const-string v4, "0"

    .line 434
    .local v4, val:Ljava/lang/String;
    new-instance v3, Lcom/futuredial/atparser/FieldValue;

    invoke-direct {v3}, Lcom/futuredial/atparser/FieldValue;-><init>()V

    .line 436
    .local v3, rpt:Lcom/futuredial/atparser/FieldValue;
    packed-switch v2, :pswitch_data_0

    .line 461
    :goto_1
    iput-object v4, v3, Lcom/futuredial/atparser/FieldValue;->val:Ljava/lang/String;

    .line 462
    iget-object v7, p0, Lcom/futuredial/atparser/Cmoto_v3m_cal_repeat;->m_result:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v7, v8

    .line 463
    goto :goto_0

    .line 439
    :pswitch_0
    const-string v4, "0"

    goto :goto_1

    .line 441
    :pswitch_1
    const-string v4, "1"

    goto :goto_1

    .line 443
    :pswitch_2
    const-string v4, "2"

    goto :goto_1

    .line 445
    :pswitch_3
    new-instance v0, Lcom/futuredial/publicobj/Field;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v9, "0"

    invoke-direct {v0, v7, v9}, Lcom/futuredial/publicobj/Field;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 446
    .local v0, modate:Lcom/futuredial/publicobj/Field;
    iget-object v7, v3, Lcom/futuredial/atparser/FieldValue;->properties:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    const-string v4, "3"

    goto :goto_1

    .line 449
    .end local v0           #modate:Lcom/futuredial/publicobj/Field;
    :pswitch_4
    new-instance v1, Lcom/futuredial/publicobj/Field;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v9, "1"

    invoke-direct {v1, v7, v9}, Lcom/futuredial/publicobj/Field;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 450
    .local v1, moday:Lcom/futuredial/publicobj/Field;
    iget-object v7, v3, Lcom/futuredial/atparser/FieldValue;->properties:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    const-string v4, "3"

    goto :goto_1

    .line 453
    .end local v1           #moday:Lcom/futuredial/publicobj/Field;
    :pswitch_5
    new-instance v5, Lcom/futuredial/publicobj/Field;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v9, "0"

    invoke-direct {v5, v7, v9}, Lcom/futuredial/publicobj/Field;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 454
    .local v5, yodate:Lcom/futuredial/publicobj/Field;
    iget-object v7, v3, Lcom/futuredial/atparser/FieldValue;->properties:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    const-string v4, "4"

    goto :goto_1

    .line 457
    .end local v5           #yodate:Lcom/futuredial/publicobj/Field;
    :pswitch_6
    new-instance v6, Lcom/futuredial/publicobj/Field;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v9, "1"

    invoke-direct {v6, v7, v9}, Lcom/futuredial/publicobj/Field;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 458
    .local v6, yoday:Lcom/futuredial/publicobj/Field;
    iget-object v7, v3, Lcom/futuredial/atparser/FieldValue;->properties:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    const-string v4, "4"

    goto :goto_1

    .line 436
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
