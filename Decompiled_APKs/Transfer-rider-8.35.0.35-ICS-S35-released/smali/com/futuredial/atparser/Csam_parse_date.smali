.class Lcom/futuredial/atparser/Csam_parse_date;
.super Lcom/futuredial/atparser/CCmobineProcType;
.source "CCmobineProcType.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 880
    invoke-direct {p0}, Lcom/futuredial/atparser/CCmobineProcType;-><init>()V

    return-void
.end method


# virtual methods
.method public procValue(Ljava/util/ArrayList;)Z
    .locals 10
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
    const/16 v9, 0x8

    const/4 v8, 0x6

    const/4 v7, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 884
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v6, v5, :cond_1

    .line 904
    :cond_0
    :goto_0
    return v4

    .line 890
    :cond_1
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 891
    .local v0, date:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v9, :cond_0

    .line 895
    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 897
    .local v3, year:Ljava/lang/String;
    iget-object v4, p0, Lcom/futuredial/atparser/Csam_parse_date;->m_result:Ljava/util/ArrayList;

    new-instance v6, Lcom/futuredial/atparser/FieldValue;

    invoke-direct {v6, v3}, Lcom/futuredial/atparser/FieldValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 898
    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 900
    .local v2, month:Ljava/lang/String;
    iget-object v4, p0, Lcom/futuredial/atparser/Csam_parse_date;->m_result:Ljava/util/ArrayList;

    new-instance v6, Lcom/futuredial/atparser/FieldValue;

    invoke-direct {v6, v2}, Lcom/futuredial/atparser/FieldValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 901
    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 903
    .local v1, day:Ljava/lang/String;
    iget-object v4, p0, Lcom/futuredial/atparser/Csam_parse_date;->m_result:Ljava/util/ArrayList;

    new-instance v6, Lcom/futuredial/atparser/FieldValue;

    invoke-direct {v6, v1}, Lcom/futuredial/atparser/FieldValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v5

    .line 904
    goto :goto_0
.end method
