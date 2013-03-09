.class Lcom/futuredial/atparser/Csam_build_rmdminu;
.super Lcom/futuredial/atparser/CCmobineProcType;
.source "CCmobineProcType.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 951
    invoke-direct {p0}, Lcom/futuredial/atparser/CCmobineProcType;-><init>()V

    .line 952
    return-void
.end method


# virtual methods
.method public procValue(Ljava/util/ArrayList;)Z
    .locals 14
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
    .line 957
    .local p1, args:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x2

    if-ge v9, v10, :cond_0

    .line 958
    const/4 v9, 0x0

    .line 1005
    :goto_0
    return v9

    .line 960
    :cond_0
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 961
    .local v7, sUnitType:Ljava/lang/String;
    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 962
    .local v8, sValue:Ljava/lang/String;
    const-string v0, ""

    .line 963
    .local v0, hour:Ljava/lang/String;
    const-string v4, ""

    .line 964
    .local v4, min:Ljava/lang/String;
    const/4 v9, 0x4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ne v9, v10, :cond_1

    .line 966
    const/4 v9, 0x2

    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #hour:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 967
    .restart local v0       #hour:Ljava/lang/String;
    const/4 v9, 0x3

    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #min:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 969
    .restart local v4       #min:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    .line 971
    .local v1, iMinus:I
    const-string v9, "\\d+"

    invoke-static {v9, v7}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "\\d+"

    invoke-static {v9, v8}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 973
    :cond_2
    const/4 v1, -0x1

    .line 975
    const/4 v9, 0x1

    goto :goto_0

    .line 977
    :cond_3
    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v7}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 978
    .local v2, iUnitType:I
    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v8}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 979
    .local v3, iValue:I
    packed-switch v2, :pswitch_data_0

    .line 993
    const/4 v1, -0x1

    .line 995
    :goto_1
    const/4 v9, -0x1

    if-eq v9, v1, :cond_4

    .line 997
    new-instance v5, Lcom/futuredial/atparser/FieldValue;

    invoke-direct {v5}, Lcom/futuredial/atparser/FieldValue;-><init>()V

    .line 998
    .local v5, rmd:Lcom/futuredial/atparser/FieldValue;
    new-instance v6, Lcom/futuredial/publicobj/Field;

    const/16 v9, 0xe6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "%d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v9, v10}, Lcom/futuredial/publicobj/Field;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 1001
    .local v6, rmdminu:Lcom/futuredial/publicobj/Field;
    const-string v9, "1"

    iput-object v9, v5, Lcom/futuredial/atparser/FieldValue;->val:Ljava/lang/String;

    .line 1002
    iget-object v9, v5, Lcom/futuredial/atparser/FieldValue;->properties:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1003
    iget-object v9, p0, Lcom/futuredial/atparser/Csam_build_rmdminu;->m_result:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1005
    .end local v5           #rmd:Lcom/futuredial/atparser/FieldValue;
    .end local v6           #rmdminu:Lcom/futuredial/publicobj/Field;
    :cond_4
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 981
    :pswitch_0
    move v1, v3

    .line 982
    goto :goto_1

    .line 984
    :pswitch_1
    mul-int/lit8 v1, v3, 0x3c

    .line 985
    goto :goto_1

    .line 987
    :pswitch_2
    mul-int/lit8 v9, v3, 0x3c

    mul-int/lit8 v1, v9, 0x18

    .line 988
    goto :goto_1

    .line 990
    :pswitch_3
    mul-int/lit8 v9, v3, 0x3c

    mul-int/lit8 v9, v9, 0x18

    mul-int/lit8 v1, v9, 0x7

    .line 991
    goto :goto_1

    .line 979
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
