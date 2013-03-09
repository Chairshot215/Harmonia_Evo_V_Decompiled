.class Lcom/futuredial/atparser/Cmoto_p2k_combine_byname;
.super Ljava/lang/Object;
.source "CIRecsProcType.java"

# interfaces
.implements Lcom/futuredial/atparser/CIRecsProcType;


# instance fields
.field private I999001:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const v0, 0xf3e59

    iput v0, p0, Lcom/futuredial/atparser/Cmoto_p2k_combine_byname;->I999001:I

    .line 134
    return-void
.end method


# virtual methods
.method public proc_records(Lcom/futuredial/publicobj/ItemArray;)Z
    .locals 17
    .parameter "records"

    .prologue
    .line 138
    new-instance v3, Lcom/futuredial/publicobj/ItemArray;

    invoke-direct {v3}, Lcom/futuredial/publicobj/ItemArray;-><init>()V

    .line 139
    .local v3, inner:Lcom/futuredial/publicobj/ItemArray;
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 140
    .local v13, tempMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/futuredial/publicobj/ItemArray;->GetItemCount()I

    move-result v14

    .line 142
    .local v14, totalSize:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v14, :cond_2

    .line 144
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/futuredial/publicobj/ItemArray;->GetItemAt(I)Lcom/futuredial/publicobj/Item;

    move-result-object v5

    .line 145
    .local v5, item:Lcom/futuredial/publicobj/Item;
    move-object/from16 v0, p0

    iget v15, v0, Lcom/futuredial/atparser/Cmoto_p2k_combine_byname;->I999001:I

    invoke-virtual {v5, v15}, Lcom/futuredial/publicobj/Item;->getFields(I)Ljava/util/ArrayList;

    move-result-object v7

    .line 146
    .local v7, keyFieldList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_0

    .line 148
    const/4 v15, 0x0

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/futuredial/publicobj/Field;

    invoke-virtual {v15}, Lcom/futuredial/publicobj/Field;->GetStringData()Ljava/lang/String;

    move-result-object v8

    .line 149
    .local v8, keyValue:Ljava/lang/String;
    invoke-virtual {v13, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 151
    invoke-virtual {v13, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 152
    .local v6, itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;"
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    .end local v6           #itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;"
    .end local v8           #keyValue:Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 156
    .restart local v8       #keyValue:Ljava/lang/String;
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .restart local v6       #itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;"
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    invoke-virtual {v13, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 163
    .end local v5           #item:Lcom/futuredial/publicobj/Item;
    .end local v6           #itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;"
    .end local v7           #keyFieldList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    .end local v8           #keyValue:Ljava/lang/String;
    :cond_2
    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    .line 164
    .local v12, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;>;"
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 165
    .local v4, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;>;"
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 167
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 168
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 169
    .restart local v6       #itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;"
    new-instance v10, Lcom/futuredial/publicobj/Item;

    invoke-direct {v10}, Lcom/futuredial/publicobj/Item;-><init>()V

    .line 170
    .local v10, oneContact:Lcom/futuredial/publicobj/Item;
    invoke-virtual {v10}, Lcom/futuredial/publicobj/Item;->Reset()V

    .line 171
    const/4 v2, 0x0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    .local v9, nCount:I
    :goto_3
    if-ge v2, v9, :cond_4

    .line 173
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/futuredial/publicobj/Item;

    .line 174
    .local v11, oneField:Lcom/futuredial/publicobj/Item;
    if-lez v2, :cond_3

    .line 176
    const/4 v15, 0x1

    invoke-virtual {v11, v15}, Lcom/futuredial/publicobj/Item;->DeleteField(I)V

    .line 177
    const/4 v15, 0x2

    invoke-virtual {v11, v15}, Lcom/futuredial/publicobj/Item;->DeleteField(I)V

    .line 179
    :cond_3
    move-object/from16 v0, p0

    iget v15, v0, Lcom/futuredial/atparser/Cmoto_p2k_combine_byname;->I999001:I

    invoke-virtual {v11, v15}, Lcom/futuredial/publicobj/Item;->DeleteField(I)V

    .line 180
    invoke-virtual {v10, v11}, Lcom/futuredial/publicobj/Item;->AppendItem(Lcom/futuredial/publicobj/Item;)V

    .line 171
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 182
    .end local v11           #oneField:Lcom/futuredial/publicobj/Item;
    :cond_4
    invoke-virtual {v3, v10}, Lcom/futuredial/publicobj/ItemArray;->AddItem(Lcom/futuredial/publicobj/Item;)Z

    goto :goto_2

    .line 186
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;"
    .end local v6           #itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;"
    .end local v9           #nCount:I
    .end local v10           #oneContact:Lcom/futuredial/publicobj/Item;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/futuredial/publicobj/ItemArray;->Reset()V

    .line 187
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/futuredial/publicobj/ItemArray;->m_objItemArray:Ljava/util/ArrayList;

    iget-object v0, v3, Lcom/futuredial/publicobj/ItemArray;->m_objItemArray:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 188
    const/4 v15, 0x1

    return v15
.end method
