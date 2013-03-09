.class Lcom/futuredial/atparser/Cmoto_p2k_name;
.super Lcom/futuredial/atparser/CCmobineProcType;
.source "CCmobineProcType.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 800
    invoke-direct {p0}, Lcom/futuredial/atparser/CCmobineProcType;-><init>()V

    return-void
.end method


# virtual methods
.method public procValue(Ljava/util/ArrayList;)Z
    .locals 9
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
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 804
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v8, 0x3

    if-ge v5, v8, :cond_0

    move v5, v6

    .line 824
    :goto_0
    return v5

    .line 806
    :cond_0
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 807
    .local v2, fullname:Ljava/lang/String;
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 808
    .local v1, format:Ljava/lang/Integer;
    const/4 v5, 0x2

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 810
    .local v4, splitPos:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_1

    .line 812
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 813
    .local v0, fn:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 822
    .local v3, ln:Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Lcom/futuredial/atparser/Cmoto_p2k_name;->m_result:Ljava/util/ArrayList;

    new-instance v6, Lcom/futuredial/atparser/FieldValue;

    invoke-direct {v6, v0}, Lcom/futuredial/atparser/FieldValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 823
    iget-object v5, p0, Lcom/futuredial/atparser/Cmoto_p2k_name;->m_result:Ljava/util/ArrayList;

    new-instance v6, Lcom/futuredial/atparser/FieldValue;

    invoke-direct {v6, v3}, Lcom/futuredial/atparser/FieldValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v7

    .line 824
    goto :goto_0

    .line 817
    .end local v0           #fn:Ljava/lang/String;
    .end local v3           #ln:Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 818
    .restart local v3       #ln:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #fn:Ljava/lang/String;
    goto :goto_1
.end method
