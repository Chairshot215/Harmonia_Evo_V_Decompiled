.class Lcom/futuredial/atparser/Csam_d900_sms_content;
.super Lcom/futuredial/atparser/CCmobineProcType;
.source "CCmobineProcType.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1098
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
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1104
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

    .line 1128
    :goto_0
    return v3

    .line 1109
    :cond_0
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1110
    .local v1, encodeType:Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1111
    .local v0, content:Ljava/lang/String;
    const-string v2, "1"

    .line 1125
    .local v2, lsmsCount:Ljava/lang/String;
    iget-object v3, p0, Lcom/futuredial/atparser/Csam_d900_sms_content;->m_result:Ljava/util/ArrayList;

    new-instance v5, Lcom/futuredial/atparser/FieldValue;

    invoke-direct {v5, v0}, Lcom/futuredial/atparser/FieldValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1126
    iget-object v3, p0, Lcom/futuredial/atparser/Csam_d900_sms_content;->m_result:Ljava/util/ArrayList;

    new-instance v5, Lcom/futuredial/atparser/FieldValue;

    invoke-direct {v5, v2}, Lcom/futuredial/atparser/FieldValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1127
    iget-object v3, p0, Lcom/futuredial/atparser/Csam_d900_sms_content;->m_result:Ljava/util/ArrayList;

    new-instance v5, Lcom/futuredial/atparser/FieldValue;

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/futuredial/atparser/FieldValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v4

    .line 1128
    goto :goto_0
.end method
