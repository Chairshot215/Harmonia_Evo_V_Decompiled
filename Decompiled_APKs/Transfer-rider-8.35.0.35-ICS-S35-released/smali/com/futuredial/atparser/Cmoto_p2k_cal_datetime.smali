.class Lcom/futuredial/atparser/Cmoto_p2k_cal_datetime;
.super Lcom/futuredial/atparser/CCmobineProcType;
.source "CCmobineProcType.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 469
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
    .line 474
    .local p1, args:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x2

    if-ge v8, v9, :cond_0

    .line 475
    const/4 v8, 0x0

    .line 492
    :goto_0
    return v8

    .line 477
    :cond_0
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 478
    .local v6, time:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x5

    if-ge v8, v9, :cond_1

    const/4 v8, 0x0

    goto :goto_0

    .line 479
    :cond_1
    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 480
    .local v3, hour:Ljava/lang/String;
    const/4 v8, 0x3

    const/4 v9, 0x5

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 483
    .local v4, minu:Ljava/lang/String;
    const/4 v8, 0x1

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 484
    .local v0, date:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0xa

    if-ge v8, v9, :cond_2

    const/4 v8, 0x0

    goto :goto_0

    .line 485
    :cond_2
    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 486
    .local v5, month:Ljava/lang/String;
    const/4 v8, 0x3

    const/4 v9, 0x5

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 487
    .local v2, day:Ljava/lang/String;
    const/4 v8, 0x6

    const/16 v9, 0xa

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 489
    .local v7, year:Ljava/lang/String;
    const-string v8, "%s%s%sT%s%s00"

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    const/4 v10, 0x1

    aput-object v5, v9, v10

    const/4 v10, 0x2

    aput-object v2, v9, v10

    const/4 v10, 0x3

    aput-object v3, v9, v10

    const/4 v10, 0x4

    aput-object v4, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 490
    .local v1, datetime:Ljava/lang/String;
    iget-object v8, p0, Lcom/futuredial/atparser/Cmoto_p2k_cal_datetime;->m_result:Ljava/util/ArrayList;

    new-instance v9, Lcom/futuredial/atparser/FieldValue;

    invoke-direct {v9, v1}, Lcom/futuredial/atparser/FieldValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    const/4 v8, 0x1

    goto :goto_0
.end method
