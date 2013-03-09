.class Lcom/futuredial/atparser/Cmoto_p2k_sms_time_content;
.super Lcom/futuredial/atparser/CCmobineProcType;
.source "CCmobineProcType.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 759
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
    .local p1, args:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v12, 0x3

    const/4 v11, 0x5

    const/4 v10, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 764
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v7, v6, :cond_1

    .line 793
    :cond_0
    :goto_0
    return v5

    .line 766
    :cond_1
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 768
    .local v3, number_content:Ljava/lang/String;
    const-string v7, "\r\n"

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 769
    .local v4, t:[Ljava/lang/String;
    array-length v7, v4

    if-lt v7, v10, :cond_0

    .line 771
    aget-object v7, v4, v5

    aget-object v8, v4, v5

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 773
    .local v2, number:Ljava/lang/String;
    const-string v7, ","

    const-string v8, "/"

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 774
    const-string v7, ":"

    const-string v8, "/"

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 775
    const-string v7, "/"

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 776
    .local v1, data:[Ljava/lang/String;
    array-length v7, v1

    if-le v7, v11, :cond_2

    .line 778
    const-string v7, "%04d%02d%02dT%02d%02d%02d"

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    aget-object v9, v1, v5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    aget-object v5, v1, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v6

    aget-object v5, v1, v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v10

    aget-object v5, v1, v12

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v12

    const/4 v5, 0x4

    const/4 v9, 0x4

    aget-object v9, v1, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    aget-object v5, v1, v11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 786
    :cond_2
    iget-object v5, p0, Lcom/futuredial/atparser/Cmoto_p2k_sms_time_content;->m_result:Ljava/util/ArrayList;

    new-instance v7, Lcom/futuredial/atparser/FieldValue;

    invoke-direct {v7, v2}, Lcom/futuredial/atparser/FieldValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 788
    aget-object v0, v4, v6

    .line 789
    .local v0, content:Ljava/lang/String;
    new-instance v5, Lcom/futuredial/atparser/DecodeUtils;

    invoke-direct {v5}, Lcom/futuredial/atparser/DecodeUtils;-><init>()V

    const-string v7, "ucshex"

    invoke-virtual {v5, v7, v0}, Lcom/futuredial/atparser/DecodeUtils;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 791
    iget-object v5, p0, Lcom/futuredial/atparser/Cmoto_p2k_sms_time_content;->m_result:Ljava/util/ArrayList;

    new-instance v7, Lcom/futuredial/atparser/FieldValue;

    invoke-direct {v7, v0}, Lcom/futuredial/atparser/FieldValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 792
    iget-object v5, p0, Lcom/futuredial/atparser/Cmoto_p2k_sms_time_content;->m_result:Ljava/util/ArrayList;

    new-instance v7, Lcom/futuredial/atparser/FieldValue;

    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/futuredial/atparser/FieldValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v6

    .line 793
    goto/16 :goto_0
.end method
