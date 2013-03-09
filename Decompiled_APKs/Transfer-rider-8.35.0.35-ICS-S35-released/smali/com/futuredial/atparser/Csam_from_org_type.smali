.class Lcom/futuredial/atparser/Csam_from_org_type;
.super Lcom/futuredial/atparser/CCmobineProcType;
.source "CCmobineProcType.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1057
    invoke-direct {p0}, Lcom/futuredial/atparser/CCmobineProcType;-><init>()V

    return-void
.end method


# virtual methods
.method public procValue(Ljava/util/ArrayList;)Z
    .locals 6
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

    .line 1063
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v5, v4, :cond_0

    .line 1092
    :goto_0
    return v3

    .line 1068
    :cond_0
    new-instance v5, Ljava/lang/Integer;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1070
    .local v0, iType:I
    packed-switch v0, :pswitch_data_0

    .line 1085
    const-string v2, "0"

    .line 1086
    .local v2, wcsTID_TYPE:Ljava/lang/String;
    const-string v1, "0"

    .line 1090
    .local v1, wcsTID_CATEGORY:Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/futuredial/atparser/Csam_from_org_type;->m_result:Ljava/util/ArrayList;

    new-instance v5, Lcom/futuredial/atparser/FieldValue;

    invoke-direct {v5, v2}, Lcom/futuredial/atparser/FieldValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1091
    iget-object v3, p0, Lcom/futuredial/atparser/Csam_from_org_type;->m_result:Ljava/util/ArrayList;

    new-instance v5, Lcom/futuredial/atparser/FieldValue;

    invoke-direct {v5, v1}, Lcom/futuredial/atparser/FieldValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v4

    .line 1092
    goto :goto_0

    .line 1073
    .end local v1           #wcsTID_CATEGORY:Ljava/lang/String;
    .end local v2           #wcsTID_TYPE:Ljava/lang/String;
    :pswitch_0
    const-string v2, "0"

    .line 1074
    .restart local v2       #wcsTID_TYPE:Ljava/lang/String;
    const-string v1, "1"

    .line 1075
    .restart local v1       #wcsTID_CATEGORY:Ljava/lang/String;
    goto :goto_1

    .line 1077
    .end local v1           #wcsTID_CATEGORY:Ljava/lang/String;
    .end local v2           #wcsTID_TYPE:Ljava/lang/String;
    :pswitch_1
    const-string v2, "0"

    .line 1078
    .restart local v2       #wcsTID_TYPE:Ljava/lang/String;
    const-string v1, "12"

    .line 1079
    .restart local v1       #wcsTID_CATEGORY:Ljava/lang/String;
    goto :goto_1

    .line 1081
    .end local v1           #wcsTID_CATEGORY:Ljava/lang/String;
    .end local v2           #wcsTID_TYPE:Ljava/lang/String;
    :pswitch_2
    const-string v2, "1"

    .line 1082
    .restart local v2       #wcsTID_TYPE:Ljava/lang/String;
    const-string v1, "0"

    .line 1083
    .restart local v1       #wcsTID_CATEGORY:Ljava/lang/String;
    goto :goto_1

    .line 1070
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
