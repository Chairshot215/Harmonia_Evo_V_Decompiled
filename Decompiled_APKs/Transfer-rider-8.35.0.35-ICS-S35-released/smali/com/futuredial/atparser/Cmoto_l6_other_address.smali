.class Lcom/futuredial/atparser/Cmoto_l6_other_address;
.super Lcom/futuredial/atparser/CCmobineProcType;
.source "CCmobineProcType.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1371
    invoke-direct {p0}, Lcom/futuredial/atparser/CCmobineProcType;-><init>()V

    return-void
.end method


# virtual methods
.method public procValue(Ljava/util/ArrayList;)Z
    .locals 7
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
    const/4 v5, 0x6

    .line 1375
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v4, v5, :cond_0

    .line 1377
    const/4 v4, 0x0

    .line 1421
    :goto_0
    return v4

    .line 1379
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1380
    .local v1, properties:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v5, :cond_3

    .line 1382
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1383
    .local v2, strTempFiled:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_2

    .line 1380
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1388
    :cond_2
    const/4 v3, 0x0

    .line 1389
    .local v3, tempField:Lcom/futuredial/publicobj/Field;
    packed-switch v0, :pswitch_data_0

    .line 1411
    :goto_3
    if-eqz v3, :cond_1

    .line 1413
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1392
    :pswitch_0
    new-instance v3, Lcom/futuredial/publicobj/Field;

    .end local v3           #tempField:Lcom/futuredial/publicobj/Field;
    const/16 v4, 0x7f0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/futuredial/publicobj/Field;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 1393
    .restart local v3       #tempField:Lcom/futuredial/publicobj/Field;
    goto :goto_3

    .line 1395
    :pswitch_1
    new-instance v3, Lcom/futuredial/publicobj/Field;

    .end local v3           #tempField:Lcom/futuredial/publicobj/Field;
    const/16 v4, 0x7ef

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/futuredial/publicobj/Field;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 1396
    .restart local v3       #tempField:Lcom/futuredial/publicobj/Field;
    goto :goto_3

    .line 1398
    :pswitch_2
    new-instance v3, Lcom/futuredial/publicobj/Field;

    .end local v3           #tempField:Lcom/futuredial/publicobj/Field;
    const/16 v4, 0x7f2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/futuredial/publicobj/Field;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 1399
    .restart local v3       #tempField:Lcom/futuredial/publicobj/Field;
    goto :goto_3

    .line 1401
    :pswitch_3
    new-instance v3, Lcom/futuredial/publicobj/Field;

    .end local v3           #tempField:Lcom/futuredial/publicobj/Field;
    const/16 v4, 0x7f3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/futuredial/publicobj/Field;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 1402
    .restart local v3       #tempField:Lcom/futuredial/publicobj/Field;
    goto :goto_3

    .line 1404
    :pswitch_4
    new-instance v3, Lcom/futuredial/publicobj/Field;

    .end local v3           #tempField:Lcom/futuredial/publicobj/Field;
    const/16 v4, 0x7f4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/futuredial/publicobj/Field;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 1405
    .restart local v3       #tempField:Lcom/futuredial/publicobj/Field;
    goto :goto_3

    .line 1407
    :pswitch_5
    new-instance v3, Lcom/futuredial/publicobj/Field;

    .end local v3           #tempField:Lcom/futuredial/publicobj/Field;
    const/16 v4, 0x7f6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/futuredial/publicobj/Field;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .restart local v3       #tempField:Lcom/futuredial/publicobj/Field;
    goto :goto_3

    .line 1417
    .end local v2           #strTempFiled:Ljava/lang/String;
    .end local v3           #tempField:Lcom/futuredial/publicobj/Field;
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 1419
    iget-object v4, p0, Lcom/futuredial/atparser/Cmoto_l6_other_address;->m_result:Ljava/util/ArrayList;

    new-instance v5, Lcom/futuredial/atparser/FieldValue;

    const-string v6, "other address"

    invoke-direct {v5, v6, v1}, Lcom/futuredial/atparser/FieldValue;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1421
    :cond_4
    const/4 v4, 0x1

    goto :goto_0

    .line 1389
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
