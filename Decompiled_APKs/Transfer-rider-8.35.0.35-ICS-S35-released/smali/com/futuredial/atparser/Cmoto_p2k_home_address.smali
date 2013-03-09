.class Lcom/futuredial/atparser/Cmoto_p2k_home_address;
.super Lcom/futuredial/atparser/CProcType;
.source "CProcType.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/futuredial/atparser/CProcType;-><init>()V

    return-void
.end method


# virtual methods
.method public proc_value(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "val"

    .prologue
    .line 83
    move-object v0, p1

    .line 84
    .local v0, addr:Ljava/lang/String;
    const-string v5, ";\\|;"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, addrElems:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/4 v5, 0x6

    if-ge v2, v5, :cond_2

    .line 114
    const-string v3, ""

    .line 115
    .local v3, strTempFiled:Ljava/lang/String;
    array-length v5, v1

    if-ge v2, v5, :cond_0

    .line 117
    aget-object v3, v1, v2

    .line 119
    :cond_0
    const/4 v4, 0x0

    .line 120
    .local v4, tempField:Lcom/futuredial/publicobj/Field;
    packed-switch v2, :pswitch_data_0

    .line 142
    :goto_1
    if-eqz v4, :cond_1

    .line 144
    iget-object v5, p0, Lcom/futuredial/atparser/Cmoto_p2k_home_address;->m_properties:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    :pswitch_0
    new-instance v4, Lcom/futuredial/publicobj/Field;

    .end local v4           #tempField:Lcom/futuredial/publicobj/Field;
    const/16 v5, 0x7d2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/futuredial/publicobj/Field;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 124
    .restart local v4       #tempField:Lcom/futuredial/publicobj/Field;
    goto :goto_1

    .line 126
    :pswitch_1
    new-instance v4, Lcom/futuredial/publicobj/Field;

    .end local v4           #tempField:Lcom/futuredial/publicobj/Field;
    const/16 v5, 0x7e4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/futuredial/publicobj/Field;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 127
    .restart local v4       #tempField:Lcom/futuredial/publicobj/Field;
    goto :goto_1

    .line 129
    :pswitch_2
    new-instance v4, Lcom/futuredial/publicobj/Field;

    .end local v4           #tempField:Lcom/futuredial/publicobj/Field;
    const/16 v5, 0x7d4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/futuredial/publicobj/Field;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 130
    .restart local v4       #tempField:Lcom/futuredial/publicobj/Field;
    goto :goto_1

    .line 132
    :pswitch_3
    new-instance v4, Lcom/futuredial/publicobj/Field;

    .end local v4           #tempField:Lcom/futuredial/publicobj/Field;
    const/16 v5, 0x7d5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/futuredial/publicobj/Field;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 133
    .restart local v4       #tempField:Lcom/futuredial/publicobj/Field;
    goto :goto_1

    .line 135
    :pswitch_4
    new-instance v4, Lcom/futuredial/publicobj/Field;

    .end local v4           #tempField:Lcom/futuredial/publicobj/Field;
    const/16 v5, 0x7d6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/futuredial/publicobj/Field;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 136
    .restart local v4       #tempField:Lcom/futuredial/publicobj/Field;
    goto :goto_1

    .line 138
    :pswitch_5
    new-instance v4, Lcom/futuredial/publicobj/Field;

    .end local v4           #tempField:Lcom/futuredial/publicobj/Field;
    const/16 v5, 0x7d8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/futuredial/publicobj/Field;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .restart local v4       #tempField:Lcom/futuredial/publicobj/Field;
    goto :goto_1

    .line 148
    .end local v3           #strTempFiled:Ljava/lang/String;
    .end local v4           #tempField:Lcom/futuredial/publicobj/Field;
    :cond_2
    const-string v5, "address"

    return-object v5

    .line 120
    nop

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
