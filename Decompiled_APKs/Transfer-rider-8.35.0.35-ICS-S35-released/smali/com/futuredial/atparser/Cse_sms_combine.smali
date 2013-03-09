.class Lcom/futuredial/atparser/Cse_sms_combine;
.super Ljava/lang/Object;
.source "CIRecsProcType.java"

# interfaces
.implements Lcom/futuredial/atparser/CIRecsProcType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/futuredial/atparser/Cse_sms_combine$ItemComparator;
    }
.end annotation


# instance fields
.field private I999001:I

.field private I999002:I

.field private I999003:I

.field private TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    const v0, 0xf3e59

    iput v0, p0, Lcom/futuredial/atparser/Cse_sms_combine;->I999001:I

    .line 196
    const v0, 0xf3e5a

    iput v0, p0, Lcom/futuredial/atparser/Cse_sms_combine;->I999002:I

    .line 197
    const v0, 0xf3e5b

    iput v0, p0, Lcom/futuredial/atparser/Cse_sms_combine;->I999003:I

    .line 198
    const-string v0, "Cse_sms_combine"

    iput-object v0, p0, Lcom/futuredial/atparser/Cse_sms_combine;->TAG:Ljava/lang/String;

    .line 199
    return-void
.end method

.method static synthetic access$000(Lcom/futuredial/atparser/Cse_sms_combine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 193
    iget v0, p0, Lcom/futuredial/atparser/Cse_sms_combine;->I999002:I

    return v0
.end method

.method private addlongSmsToArray(Ljava/util/ArrayList;Ljava/lang/Integer;Ljava/lang/String;Lcom/futuredial/publicobj/ItemArray;)V
    .locals 5
    .parameter
    .parameter "index"
    .parameter "strContext"
    .parameter "itemArray"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/futuredial/publicobj/Item;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Lcom/futuredial/publicobj/ItemArray;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;"
    const/4 v4, 0x7

    .line 221
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 222
    .local v1, isize:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 223
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/futuredial/publicobj/Item;

    iget-object v2, v2, Lcom/futuredial/publicobj/Item;->m_objFieldArray:Ljava/util/Hashtable;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 224
    .local v0, is:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_0

    .line 225
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/futuredial/publicobj/Item;

    iget-object v2, v2, Lcom/futuredial/publicobj/Item;->m_objFieldArray:Ljava/util/Hashtable;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/futuredial/publicobj/Field;

    iput-object p3, v2, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    .line 226
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/futuredial/publicobj/Item;

    invoke-virtual {p4, v2}, Lcom/futuredial/publicobj/ItemArray;->AddItem(Lcom/futuredial/publicobj/Item;)Z

    .line 234
    .end local v0           #is:Ljava/lang/Integer;
    :goto_0
    return-void

    .line 229
    .restart local v0       #is:Ljava/lang/Integer;
    :cond_0
    iget-object v2, p0, Lcom/futuredial/atparser/Cse_sms_combine;->TAG:Ljava/lang/String;

    const-string v3, "Content size error!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 232
    .end local v0           #is:Ljava/lang/Integer;
    :cond_1
    iget-object v2, p0, Lcom/futuredial/atparser/Cse_sms_combine;->TAG:Ljava/lang/String;

    const-string v3, "ItemList size Error!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public proc_records(Lcom/futuredial/publicobj/ItemArray;)Z
    .locals 44
    .parameter "records"

    .prologue
    .line 238
    new-instance v25, Lcom/futuredial/publicobj/ItemArray;

    invoke-direct/range {v25 .. v25}, Lcom/futuredial/publicobj/ItemArray;-><init>()V

    .line 239
    .local v25, itemArray:Lcom/futuredial/publicobj/ItemArray;
    const/16 v28, 0x0

    .line 240
    .local v28, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/futuredial/publicobj/ItemArray;->GetItemCount()I

    move-result v41

    .line 241
    .local v41, totalSize:I
    new-instance v29, Ljava/util/HashMap;

    invoke-direct/range {v29 .. v29}, Ljava/util/HashMap;-><init>()V

    .line 242
    .local v29, mapBox:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;>;"
    const/16 v31, 0x0

    .line 243
    .local v31, nboxtype:I
    const/16 v42, -0x1

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 246
    .local v11, fieldGroup:Ljava/lang/Integer;
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    move/from16 v0, v41

    if-ge v13, v0, :cond_6

    .line 248
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/futuredial/publicobj/ItemArray;->GetItemAt(I)Lcom/futuredial/publicobj/Item;

    move-result-object v24

    .line 249
    .local v24, item:Lcom/futuredial/publicobj/Item;
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/futuredial/publicobj/Item;->m_objFieldArray:Ljava/util/Hashtable;

    move-object/from16 v42, v0

    const/16 v43, 0x2

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 250
    .local v16, idsbox:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v42

    if-lez v42, :cond_0

    .line 252
    const/16 v42, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/futuredial/publicobj/Field;

    invoke-virtual/range {v42 .. v42}, Lcom/futuredial/publicobj/Field;->GetInt()I

    move-result v31

    .line 255
    :cond_0
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/futuredial/publicobj/Item;->m_objFieldArray:Ljava/util/Hashtable;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/futuredial/atparser/Cse_sms_combine;->I999001:I

    move/from16 v43, v0

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    .line 256
    .local v15, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    if-nez v15, :cond_2

    .line 258
    const/16 v42, -0x1

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 267
    :cond_1
    :goto_1
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v42

    const/16 v43, -0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_3

    .line 271
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/futuredial/publicobj/ItemArray;->AddItem(Lcom/futuredial/publicobj/Item;)Z

    .line 246
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 260
    :cond_2
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v42

    if-lez v42, :cond_1

    .line 262
    const/16 v42, 0x0

    move/from16 v0, v42

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/futuredial/publicobj/Field;

    invoke-virtual/range {v42 .. v42}, Lcom/futuredial/publicobj/Field;->GetInt()I

    move-result v42

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_1

    .line 275
    :cond_3
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    move-object/from16 v0, v29

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_5

    .line 276
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    move-object/from16 v0, v29

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    .end local v28           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;"
    check-cast v28, Ljava/util/HashMap;

    .line 278
    .restart local v28       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;"
    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_4

    .line 281
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 282
    .local v26, itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;"
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 288
    .end local v26           #itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;"
    :cond_4
    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/ArrayList;

    .line 289
    .restart local v26       #itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;"
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 294
    .end local v26           #itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;"
    :cond_5
    new-instance v28, Ljava/util/HashMap;

    .end local v28           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;"
    invoke-direct/range {v28 .. v28}, Ljava/util/HashMap;-><init>()V

    .line 295
    .restart local v28       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;"
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 296
    .restart local v26       #itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;"
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    move-object/from16 v0, v29

    move-object/from16 v1, v42

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 304
    .end local v15           #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    .end local v16           #idsbox:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    .end local v24           #item:Lcom/futuredial/publicobj/Item;
    .end local v26           #itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;"
    :cond_6
    invoke-virtual/range {v29 .. v29}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v35

    .line 305
    .local v35, setbox:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;>;>;"
    invoke-interface/range {v35 .. v35}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .line 306
    .local v22, itbox:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;>;>;"
    :cond_7
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v42

    if-eqz v42, :cond_16

    .line 307
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 308
    .local v8, entryBox:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v28

    .end local v28           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;"
    check-cast v28, Ljava/util/HashMap;

    .line 311
    .restart local v28       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;"
    invoke-virtual/range {v28 .. v28}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v33

    .line 312
    .local v33, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;>;"
    invoke-interface/range {v33 .. v33}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .line 313
    .local v20, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;>;"
    :cond_8
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v42

    if-eqz v42, :cond_7

    .line 315
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 316
    .local v7, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/ArrayList;

    .line 319
    .restart local v26       #itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;"
    new-instance v39, Ljava/util/HashMap;

    invoke-direct/range {v39 .. v39}, Ljava/util/HashMap;-><init>()V

    .line 320
    .local v39, telList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 321
    .local v6, countList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;"
    const-string v32, ""

    .line 322
    .local v32, sTelNo:Ljava/lang/String;
    const/4 v13, 0x0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v30

    .local v30, nSize:I
    :goto_3
    move/from16 v0, v30

    if-ge v13, v0, :cond_b

    .line 324
    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/futuredial/publicobj/Item;

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/futuredial/publicobj/Item;->m_objFieldArray:Ljava/util/Hashtable;

    move-object/from16 v42, v0

    const/16 v43, 0x3

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    .line 325
    .local v18, ilist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    if-eqz v18, :cond_9

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v42

    if-lez v42, :cond_9

    .line 326
    const/16 v42, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/futuredial/publicobj/Field;

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    move-object/from16 v32, v0

    .line 333
    :goto_4
    move-object/from16 v0, v39

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_a

    .line 335
    new-instance v40, Ljava/util/ArrayList;

    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    .line 336
    .local v40, tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;"
    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v42

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    move-object/from16 v0, v39

    move-object/from16 v1, v32

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 330
    .end local v40           #tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;"
    :cond_9
    const-string v32, ""

    goto :goto_4

    .line 341
    :cond_a
    move-object/from16 v0, v39

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/util/ArrayList;

    .line 342
    .restart local v40       #tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;"
    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v42

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 345
    .end local v18           #ilist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    .end local v40           #tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;"
    :cond_b
    invoke-virtual/range {v39 .. v39}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v34

    .line 346
    .local v34, setTel:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;>;"
    invoke-interface/range {v34 .. v34}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .line 347
    .local v21, itTel:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;>;"
    :cond_c
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v42

    if-eqz v42, :cond_8

    .line 349
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 350
    .local v9, entryTel:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 351
    .local v4, ListTel:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;"
    const/16 v42, 0x0

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 352
    .local v14, icount:Ljava/lang/Integer;
    const/4 v13, 0x0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v30

    :goto_6
    move/from16 v0, v30

    if-ge v13, v0, :cond_f

    .line 354
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/futuredial/publicobj/Item;

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/futuredial/publicobj/Item;->m_objFieldArray:Ljava/util/Hashtable;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/futuredial/atparser/Cse_sms_combine;->I999003:I

    move/from16 v43, v0

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    .line 355
    .restart local v18       #ilist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    if-eqz v18, :cond_d

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v42

    if-lez v42, :cond_d

    .line 356
    const/16 v42, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/futuredial/publicobj/Field;

    invoke-virtual/range {v42 .. v42}, Lcom/futuredial/publicobj/Field;->GetInt()I

    move-result v42

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 363
    :goto_7
    invoke-virtual {v6, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_e

    .line 365
    new-instance v40, Ljava/util/ArrayList;

    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    .line 366
    .restart local v40       #tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;"
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v42

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    move-object/from16 v0, v40

    invoke-virtual {v6, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    :goto_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 360
    .end local v40           #tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;"
    :cond_d
    const/16 v42, 0x0

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    goto :goto_7

    .line 371
    :cond_e
    invoke-virtual {v6, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/util/ArrayList;

    .line 372
    .restart local v40       #tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;"
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v42

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 376
    .end local v18           #ilist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    .end local v40           #tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;"
    :cond_f
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v36

    .line 377
    .local v36, setcnt:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;>;"
    invoke-interface/range {v36 .. v36}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .line 378
    .local v23, itcnt:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;>;"
    :cond_10
    :goto_9
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v42

    if-eqz v42, :cond_c

    .line 380
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 381
    .local v10, entryTel1:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 382
    .local v5, ListTel1:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 384
    .local v12, grpCnt:Ljava/lang/Integer;
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v42

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v43

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_11

    .line 386
    new-instance v27, Lcom/futuredial/atparser/Cse_sms_combine$ItemComparator;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/futuredial/atparser/Cse_sms_combine$ItemComparator;-><init>(Lcom/futuredial/atparser/Cse_sms_combine;)V

    .line 387
    .local v27, itemcmp:Lcom/futuredial/atparser/Cse_sms_combine$ItemComparator;
    move-object/from16 v0, v27

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 390
    .end local v27           #itemcmp:Lcom/futuredial/atparser/Cse_sms_combine$ItemComparator;
    :cond_11
    const-string v37, ""

    .line 392
    .local v37, strContext:Ljava/lang/String;
    const/16 v17, 0x0

    .line 393
    .local v17, ifirst:I
    const/16 v19, 0x1

    .line 394
    .local v19, iorder:I
    const/4 v13, 0x0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v30

    :goto_a
    move/from16 v0, v30

    if-ge v13, v0, :cond_15

    .line 396
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/futuredial/publicobj/Item;

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/futuredial/publicobj/Item;->m_objFieldArray:Ljava/util/Hashtable;

    move-object/from16 v42, v0

    const/16 v43, 0x7

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    .line 397
    .restart local v18       #ilist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    if-eqz v18, :cond_12

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v42

    if-lez v42, :cond_12

    .line 398
    const/16 v42, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/futuredial/publicobj/Field;

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    move-object/from16 v38, v0

    .line 399
    .local v38, strTemp:Ljava/lang/String;
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v42

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    .line 401
    .end local v38           #strTemp:Ljava/lang/String;
    :cond_12
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v42

    if-nez v42, :cond_14

    .line 394
    :cond_13
    :goto_b
    add-int/lit8 v13, v13, 0x1

    goto :goto_a

    .line 403
    :cond_14
    add-int/lit8 v42, v13, 0x1

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v43

    rem-int v42, v42, v43

    if-nez v42, :cond_13

    .line 406
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-object/from16 v2, v37

    move-object/from16 v3, v25

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/futuredial/atparser/Cse_sms_combine;->addlongSmsToArray(Ljava/util/ArrayList;Ljava/lang/Integer;Ljava/lang/String;Lcom/futuredial/publicobj/ItemArray;)V

    .line 407
    add-int/lit8 v19, v19, 0x1

    .line 408
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v42

    add-int/lit8 v43, v19, -0x1

    mul-int v17, v42, v43

    .line 409
    const-string v37, ""

    goto :goto_b

    .line 413
    .end local v18           #ilist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    :cond_15
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v42

    add-int/lit8 v43, v19, -0x1

    mul-int v42, v42, v43

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v43

    move/from16 v0, v42

    move/from16 v1, v43

    if-le v0, v1, :cond_10

    .line 415
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-object/from16 v2, v37

    move-object/from16 v3, v25

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/futuredial/atparser/Cse_sms_combine;->addlongSmsToArray(Ljava/util/ArrayList;Ljava/lang/Integer;Ljava/lang/String;Lcom/futuredial/publicobj/ItemArray;)V

    goto/16 :goto_9

    .line 424
    .end local v4           #ListTel:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;"
    .end local v5           #ListTel1:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;"
    .end local v6           #countList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;"
    .end local v7           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;"
    .end local v8           #entryBox:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;>;"
    .end local v9           #entryTel:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;"
    .end local v10           #entryTel1:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;"
    .end local v12           #grpCnt:Ljava/lang/Integer;
    .end local v14           #icount:Ljava/lang/Integer;
    .end local v17           #ifirst:I
    .end local v19           #iorder:I
    .end local v20           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;>;"
    .end local v21           #itTel:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;>;"
    .end local v23           #itcnt:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;>;"
    .end local v26           #itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;"
    .end local v30           #nSize:I
    .end local v32           #sTelNo:Ljava/lang/String;
    .end local v33           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;>;"
    .end local v34           #setTel:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;>;"
    .end local v36           #setcnt:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;>;"
    .end local v37           #strContext:Ljava/lang/String;
    .end local v39           #telList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;"
    :cond_16
    invoke-virtual/range {p1 .. p1}, Lcom/futuredial/publicobj/ItemArray;->Reset()V

    .line 425
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/futuredial/publicobj/ItemArray;->m_objItemArray:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/futuredial/publicobj/ItemArray;->AddItem(Ljava/util/ArrayList;)Z

    .line 427
    const/16 v42, 0x1

    return v42
.end method
