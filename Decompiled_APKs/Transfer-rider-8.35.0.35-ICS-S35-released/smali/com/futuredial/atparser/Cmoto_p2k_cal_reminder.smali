.class Lcom/futuredial/atparser/Cmoto_p2k_cal_reminder;
.super Lcom/futuredial/atparser/CCmobineProcType;
.source "CCmobineProcType.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 726
    invoke-direct {p0}, Lcom/futuredial/atparser/CCmobineProcType;-><init>()V

    return-void
.end method


# virtual methods
.method public procValue(Ljava/util/ArrayList;)Z
    .locals 13
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
    .line 731
    .local p1, args:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x2

    if-ge v10, v11, :cond_0

    .line 732
    const/4 v10, 0x0

    .line 753
    :goto_0
    return v10

    .line 734
    :cond_0
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 735
    .local v8, time:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x5

    if-ge v10, v11, :cond_1

    const/4 v10, 0x0

    goto :goto_0

    .line 736
    :cond_1
    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 737
    .local v3, hour:Ljava/lang/String;
    const/4 v10, 0x3

    const/4 v11, 0x5

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 740
    .local v4, minu:Ljava/lang/String;
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 741
    .local v0, date:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0xa

    if-ge v10, v11, :cond_2

    const/4 v10, 0x0

    goto :goto_0

    .line 742
    :cond_2
    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 743
    .local v5, month:Ljava/lang/String;
    const/4 v10, 0x3

    const/4 v11, 0x5

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 744
    .local v2, day:Ljava/lang/String;
    const/4 v10, 0x6

    const/16 v11, 0xa

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 746
    .local v9, year:Ljava/lang/String;
    const-string v10, "%s%s%sT%s%s00"

    const/4 v11, 0x5

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v9, v11, v12

    const/4 v12, 0x1

    aput-object v5, v11, v12

    const/4 v12, 0x2

    aput-object v2, v11, v12

    const/4 v12, 0x3

    aput-object v3, v11, v12

    const/4 v12, 0x4

    aput-object v4, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 747
    .local v1, datetime:Ljava/lang/String;
    new-instance v6, Lcom/futuredial/atparser/FieldValue;

    invoke-direct {v6}, Lcom/futuredial/atparser/FieldValue;-><init>()V

    .line 748
    .local v6, rmd:Lcom/futuredial/atparser/FieldValue;
    new-instance v7, Lcom/futuredial/publicobj/Field;

    const/16 v10, 0x69

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v7, v10, v1}, Lcom/futuredial/publicobj/Field;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 749
    .local v7, rmdminu:Lcom/futuredial/publicobj/Field;
    const-string v10, "1"

    iput-object v10, v6, Lcom/futuredial/atparser/FieldValue;->val:Ljava/lang/String;

    .line 750
    iget-object v10, v6, Lcom/futuredial/atparser/FieldValue;->properties:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 751
    iget-object v10, p0, Lcom/futuredial/atparser/Cmoto_p2k_cal_reminder;->m_result:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 753
    const/4 v10, 0x1

    goto :goto_0
.end method
