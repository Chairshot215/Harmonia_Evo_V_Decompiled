.class Lcom/futuredial/atparser/Cmoto_p2k_combine;
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
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const v0, 0xf3e59

    iput v0, p0, Lcom/futuredial/atparser/Cmoto_p2k_combine;->I999001:I

    .line 32
    return-void
.end method


# virtual methods
.method public proc_records(Lcom/futuredial/publicobj/ItemArray;)Z
    .locals 24
    .parameter "records"

    .prologue
    .line 55
    new-instance v6, Lcom/futuredial/publicobj/ItemArray;

    invoke-direct {v6}, Lcom/futuredial/publicobj/ItemArray;-><init>()V

    .line 56
    .local v6, inner:Lcom/futuredial/publicobj/ItemArray;
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 57
    .local v18, temp:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Lcom/futuredial/publicobj/Item;>;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/futuredial/publicobj/ItemArray;->GetItemCount()I

    move-result v20

    .line 59
    .local v20, totalSize:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    move/from16 v0, v20

    if-ge v4, v0, :cond_2

    .line 61
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/futuredial/publicobj/ItemArray;->GetItemAt(I)Lcom/futuredial/publicobj/Item;

    move-result-object v10

    .line 62
    .local v10, item:Lcom/futuredial/publicobj/Item;
    iget-object v0, v10, Lcom/futuredial/publicobj/Item;->m_objFieldArray:Ljava/util/Hashtable;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/futuredial/atparser/Cmoto_p2k_combine;->I999001:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 63
    .local v5, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v22

    if-lez v22, :cond_0

    .line 65
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/futuredial/publicobj/Field;

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 66
    .local v21, value:Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 68
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 69
    .local v11, itemList:Ljava/util/List;,"Ljava/util/List<Lcom/futuredial/publicobj/Item;>;"
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    .end local v11           #itemList:Ljava/util/List;,"Ljava/util/List<Lcom/futuredial/publicobj/Item;>;"
    .end local v21           #value:Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 73
    .restart local v21       #value:Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v2, al:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;"
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 80
    .end local v2           #al:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;"
    .end local v5           #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    .end local v10           #item:Lcom/futuredial/publicobj/Item;
    .end local v21           #value:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->size()I

    move-result v14

    .local v14, nCount:I
    :goto_2
    if-ge v4, v14, :cond_8

    .line 82
    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v16

    .line 83
    .local v16, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/futuredial/publicobj/Item;>;>;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/futuredial/publicobj/Item;>;>;>;"
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_7

    .line 85
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 86
    .local v3, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/futuredial/publicobj/Item;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 87
    .local v13, list:Ljava/util/List;,"Ljava/util/List<Lcom/futuredial/publicobj/Item;>;"
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    .line 90
    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/futuredial/publicobj/Item;

    .line 91
    .restart local v10       #item:Lcom/futuredial/publicobj/Item;
    iget-object v0, v10, Lcom/futuredial/publicobj/Item;->m_objFieldArray:Ljava/util/Hashtable;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/futuredial/atparser/Cmoto_p2k_combine;->I999001:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-virtual {v6, v10}, Lcom/futuredial/publicobj/ItemArray;->AddItem(Lcom/futuredial/publicobj/Item;)Z

    goto :goto_3

    .line 97
    .end local v10           #item:Lcom/futuredial/publicobj/Item;
    :cond_3
    new-instance v10, Lcom/futuredial/publicobj/Item;

    invoke-direct {v10}, Lcom/futuredial/publicobj/Item;-><init>()V

    .line 98
    .restart local v10       #item:Lcom/futuredial/publicobj/Item;
    const/4 v12, 0x0

    .local v12, j:I
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v15

    .local v15, nLen:I
    :goto_4
    if-ge v12, v15, :cond_6

    .line 100
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/futuredial/publicobj/Item;

    .line 103
    .local v19, tmp:Lcom/futuredial/publicobj/Item;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/futuredial/publicobj/Item;->m_objFieldArray:Ljava/util/Hashtable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v17

    .line 104
    .local v17, setKey:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, itKey:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_5

    .line 106
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 107
    .local v7, intKey:Ljava/lang/Integer;
    iget-object v0, v10, Lcom/futuredial/publicobj/Item;->m_objFieldArray:Ljava/util/Hashtable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 109
    iget-object v0, v10, Lcom/futuredial/publicobj/Item;->m_objFieldArray:Ljava/util/Hashtable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/ArrayList;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/futuredial/publicobj/Item;->m_objFieldArray:Ljava/util/Hashtable;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Collection;

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_5

    .line 113
    :cond_4
    iget-object v0, v10, Lcom/futuredial/publicobj/Item;->m_objFieldArray:Ljava/util/Hashtable;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/futuredial/publicobj/Item;->m_objFieldArray:Ljava/util/Hashtable;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v7, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 98
    .end local v7           #intKey:Ljava/lang/Integer;
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 118
    .end local v9           #itKey:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v17           #setKey:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v19           #tmp:Lcom/futuredial/publicobj/Item;
    :cond_6
    iget-object v0, v10, Lcom/futuredial/publicobj/Item;->m_objFieldArray:Ljava/util/Hashtable;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/futuredial/atparser/Cmoto_p2k_combine;->I999001:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    invoke-virtual {v6, v10}, Lcom/futuredial/publicobj/ItemArray;->AddItem(Lcom/futuredial/publicobj/Item;)Z

    goto/16 :goto_3

    .line 80
    .end local v3           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/futuredial/publicobj/Item;>;>;"
    .end local v10           #item:Lcom/futuredial/publicobj/Item;
    .end local v12           #j:I
    .end local v13           #list:Ljava/util/List;,"Ljava/util/List<Lcom/futuredial/publicobj/Item;>;"
    .end local v15           #nLen:I
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 124
    .end local v8           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/futuredial/publicobj/Item;>;>;>;"
    .end local v16           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/futuredial/publicobj/Item;>;>;>;"
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/futuredial/publicobj/ItemArray;->Reset()V

    .line 125
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/futuredial/publicobj/ItemArray;->m_objItemArray:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    iget-object v0, v6, Lcom/futuredial/publicobj/ItemArray;->m_objItemArray:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 126
    const/16 v22, 0x1

    return v22
.end method
