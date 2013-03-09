.class Lcom/futuredial/atparser/Csam_sms_combine;
.super Ljava/lang/Object;
.source "CIRecsProcType.java"

# interfaces
.implements Lcom/futuredial/atparser/CIRecsProcType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/futuredial/atparser/Csam_sms_combine$ItemComparator;
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
    .line 438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 434
    const v0, 0xf3e59

    iput v0, p0, Lcom/futuredial/atparser/Csam_sms_combine;->I999001:I

    .line 435
    const v0, 0xf3e5a

    iput v0, p0, Lcom/futuredial/atparser/Csam_sms_combine;->I999002:I

    .line 436
    const v0, 0xf3e5b

    iput v0, p0, Lcom/futuredial/atparser/Csam_sms_combine;->I999003:I

    .line 437
    const-string v0, "Csam_sms_combine"

    iput-object v0, p0, Lcom/futuredial/atparser/Csam_sms_combine;->TAG:Ljava/lang/String;

    .line 438
    return-void
.end method

.method static synthetic access$000(Lcom/futuredial/atparser/Csam_sms_combine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 432
    iget v0, p0, Lcom/futuredial/atparser/Csam_sms_combine;->I999002:I

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

    .line 460
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 461
    .local v1, isize:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 462
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

    .line 463
    .local v0, is:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_0

    .line 464
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

    .line 465
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/futuredial/publicobj/Item;

    invoke-virtual {p4, v2}, Lcom/futuredial/publicobj/ItemArray;->AddItem(Lcom/futuredial/publicobj/Item;)Z

    .line 473
    .end local v0           #is:Ljava/lang/Integer;
    :goto_0
    return-void

    .line 468
    .restart local v0       #is:Ljava/lang/Integer;
    :cond_0
    iget-object v2, p0, Lcom/futuredial/atparser/Csam_sms_combine;->TAG:Ljava/lang/String;

    const-string v3, "Content size error!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 471
    .end local v0           #is:Ljava/lang/Integer;
    :cond_1
    iget-object v2, p0, Lcom/futuredial/atparser/Csam_sms_combine;->TAG:Ljava/lang/String;

    const-string v3, "ItemList size Error!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public proc_records(Lcom/futuredial/publicobj/ItemArray;)Z
    .locals 42
    .parameter "records"

    .prologue
    .line 477
    new-instance v23, Lcom/futuredial/publicobj/ItemArray;

    invoke-direct/range {v23 .. v23}, Lcom/futuredial/publicobj/ItemArray;-><init>()V

    .line 478
    .local v23, itemArray:Lcom/futuredial/publicobj/ItemArray;
    const/16 v26, 0x0

    .line 479
    .local v26, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;"
    sget-object v40, Lcom/futuredial/atparser/Csam_sms_combine;->itemleft:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/futuredial/publicobj/ItemArray;->AddItem(Ljava/util/ArrayList;)Z

    .line 480
    sget-object v40, Lcom/futuredial/atparser/Csam_sms_combine;->itemleft:Ljava/util/ArrayList;

    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->clear()V

    .line 481
    invoke-virtual/range {p1 .. p1}, Lcom/futuredial/publicobj/ItemArray;->GetItemCount()I

    move-result v39

    .line 482
    .local v39, totalSize:I
    new-instance v27, Ljava/util/HashMap;

    invoke-direct/range {v27 .. v27}, Ljava/util/HashMap;-><init>()V

    .line 483
    .local v27, mapBox:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;>;"
    const/16 v29, 0x0

    .line 484
    .local v29, nboxtype:I
    const/16 v40, -0x1

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 487
    .local v11, fieldGroup:Ljava/lang/Integer;
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    move/from16 v0, v39

    if-ge v13, v0, :cond_6

    .line 489
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/futuredial/publicobj/ItemArray;->GetItemAt(I)Lcom/futuredial/publicobj/Item;

    move-result-object v22

    .line 490
    .local v22, item:Lcom/futuredial/publicobj/Item;
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/futuredial/publicobj/Item;->m_objFieldArray:Ljava/util/Hashtable;

    move-object/from16 v40, v0

    const/16 v41, 0x2

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 491
    .local v16, idsbox:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v40

    if-lez v40, :cond_0

    .line 493
    const/16 v40, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/futuredial/publicobj/Field;

    invoke-virtual/range {v40 .. v40}, Lcom/futuredial/publicobj/Field;->GetInt()I

    move-result v29

    .line 496
    :cond_0
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/futuredial/publicobj/Item;->m_objFieldArray:Ljava/util/Hashtable;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/futuredial/atparser/Csam_sms_combine;->I999001:I

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    .line 497
    .local v15, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    if-nez v15, :cond_2

    .line 499
    const/16 v40, -0x1

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 508
    :cond_1
    :goto_1
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v40

    const/16 v41, -0x1

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_3

    .line 512
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/futuredial/publicobj/ItemArray;->AddItem(Lcom/futuredial/publicobj/Item;)Z

    .line 487
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 501
    :cond_2
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v40

    if-lez v40, :cond_1

    .line 503
    const/16 v40, 0x0

    move/from16 v0, v40

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/futuredial/publicobj/Field;

    invoke-virtual/range {v40 .. v40}, Lcom/futuredial/publicobj/Field;->GetInt()I

    move-result v40

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_1

    .line 516
    :cond_3
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    move-object/from16 v0, v27

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_5

    .line 517
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    move-object/from16 v0, v27

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    .end local v26           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;"
    check-cast v26, Ljava/util/HashMap;

    .line 519
    .restart local v26       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;"
    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_4

    .line 522
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 523
    .local v24, itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;"
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 529
    .end local v24           #itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;"
    :cond_4
    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/ArrayList;

    .line 530
    .restart local v24       #itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;"
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 535
    .end local v24           #itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;"
    :cond_5
    new-instance v26, Ljava/util/HashMap;

    .end local v26           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;"
    invoke-direct/range {v26 .. v26}, Ljava/util/HashMap;-><init>()V

    .line 536
    .restart local v26       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;"
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 537
    .restart local v24       #itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;"
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    move-object/from16 v0, v27

    move-object/from16 v1, v40

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 545
    .end local v15           #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    .end local v16           #idsbox:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    .end local v22           #item:Lcom/futuredial/publicobj/Item;
    .end local v24           #itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;"
    :cond_6
    invoke-virtual/range {v27 .. v27}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v33

    .line 546
    .local v33, setbox:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;>;>;"
    invoke-interface/range {v33 .. v33}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .line 547
    .local v20, itbox:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;>;>;"
    :cond_7
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-eqz v40, :cond_14

    .line 548
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 549
    .local v8, entryBox:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v26

    .end local v26           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;"
    check-cast v26, Ljava/util/HashMap;

    .line 552
    .restart local v26       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;"
    invoke-virtual/range {v26 .. v26}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v31

    .line 553
    .local v31, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;>;"
    invoke-interface/range {v31 .. v31}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .line 554
    .local v18, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;>;"
    :cond_8
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-eqz v40, :cond_7

    .line 556
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 557
    .local v7, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/ArrayList;

    .line 560
    .restart local v24       #itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;"
    new-instance v37, Ljava/util/HashMap;

    invoke-direct/range {v37 .. v37}, Ljava/util/HashMap;-><init>()V

    .line 561
    .local v37, telList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 562
    .local v6, countList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;"
    const-string v30, ""

    .line 563
    .local v30, sTelNo:Ljava/lang/String;
    const/4 v13, 0x0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v28

    .local v28, nSize:I
    :goto_3
    move/from16 v0, v28

    if-ge v13, v0, :cond_b

    .line 565
    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/futuredial/publicobj/Item;

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/futuredial/publicobj/Item;->m_objFieldArray:Ljava/util/Hashtable;

    move-object/from16 v40, v0

    const/16 v41, 0x3

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    .line 566
    .local v17, ilist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    if-eqz v17, :cond_9

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v40

    if-lez v40, :cond_9

    .line 567
    const/16 v40, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/futuredial/publicobj/Field;

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    move-object/from16 v30, v0

    .line 574
    :goto_4
    move-object/from16 v0, v37

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_a

    .line 576
    new-instance v38, Ljava/util/ArrayList;

    invoke-direct/range {v38 .. v38}, Ljava/util/ArrayList;-><init>()V

    .line 577
    .local v38, tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;"
    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    move-object/from16 v0, v37

    move-object/from16 v1, v30

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 571
    .end local v38           #tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;"
    :cond_9
    const-string v30, ""

    goto :goto_4

    .line 582
    :cond_a
    move-object/from16 v0, v37

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/util/ArrayList;

    .line 583
    .restart local v38       #tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;"
    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 586
    .end local v17           #ilist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    .end local v38           #tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;"
    :cond_b
    invoke-virtual/range {v37 .. v37}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v32

    .line 587
    .local v32, setTel:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;>;"
    invoke-interface/range {v32 .. v32}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .line 588
    .local v19, itTel:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;>;"
    :cond_c
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-eqz v40, :cond_8

    .line 590
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 591
    .local v9, entryTel:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 592
    .local v4, LTel:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;"
    const/16 v40, 0x0

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 593
    .local v14, icount:Ljava/lang/Integer;
    const/4 v13, 0x0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v28

    :goto_6
    move/from16 v0, v28

    if-ge v13, v0, :cond_f

    .line 595
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/futuredial/publicobj/Item;

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/futuredial/publicobj/Item;->m_objFieldArray:Ljava/util/Hashtable;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/futuredial/atparser/Csam_sms_combine;->I999003:I

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    .line 596
    .restart local v17       #ilist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    if-eqz v17, :cond_d

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v40

    if-lez v40, :cond_d

    .line 597
    const/16 v40, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/futuredial/publicobj/Field;

    invoke-virtual/range {v40 .. v40}, Lcom/futuredial/publicobj/Field;->GetInt()I

    move-result v40

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 604
    :goto_7
    invoke-virtual {v6, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_e

    .line 606
    new-instance v38, Ljava/util/ArrayList;

    invoke-direct/range {v38 .. v38}, Ljava/util/ArrayList;-><init>()V

    .line 607
    .restart local v38       #tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;"
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 608
    move-object/from16 v0, v38

    invoke-virtual {v6, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    :goto_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 601
    .end local v38           #tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;"
    :cond_d
    const/16 v40, 0x0

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    goto :goto_7

    .line 612
    :cond_e
    invoke-virtual {v6, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/util/ArrayList;

    .line 613
    .restart local v38       #tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;"
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 617
    .end local v17           #ilist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    .end local v38           #tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;"
    :cond_f
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v34

    .line 618
    .local v34, setcnt:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;>;"
    invoke-interface/range {v34 .. v34}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .line 619
    .local v21, itcnt:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;>;"
    :cond_10
    :goto_9
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-eqz v40, :cond_c

    .line 621
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 622
    .local v10, entryTel1:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 623
    .local v5, ListTel1:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 625
    .local v12, grpCnt:Ljava/lang/Integer;
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v40

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v41

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_13

    .line 627
    new-instance v25, Lcom/futuredial/atparser/Csam_sms_combine$ItemComparator;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/futuredial/atparser/Csam_sms_combine$ItemComparator;-><init>(Lcom/futuredial/atparser/Csam_sms_combine;)V

    .line 628
    .local v25, itemcmp:Lcom/futuredial/atparser/Csam_sms_combine$ItemComparator;
    move-object/from16 v0, v25

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 629
    const-string v35, ""

    .line 631
    .local v35, strContext:Ljava/lang/String;
    const/4 v13, 0x0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v28

    :goto_a
    move/from16 v0, v28

    if-ge v13, v0, :cond_12

    .line 633
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/futuredial/publicobj/Item;

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/futuredial/publicobj/Item;->m_objFieldArray:Ljava/util/Hashtable;

    move-object/from16 v40, v0

    const/16 v41, 0x7

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    .line 634
    .restart local v17       #ilist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    if-eqz v17, :cond_11

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v40

    if-lez v40, :cond_11

    .line 635
    const/16 v40, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/futuredial/publicobj/Field;

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    move-object/from16 v36, v0

    .line 636
    .local v36, strTemp:Ljava/lang/String;
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    .line 631
    .end local v36           #strTemp:Ljava/lang/String;
    :cond_11
    add-int/lit8 v13, v13, 0x1

    goto :goto_a

    .line 639
    .end local v17           #ilist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    :cond_12
    const/16 v40, 0x0

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v35

    move-object/from16 v3, v23

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/futuredial/atparser/Csam_sms_combine;->addlongSmsToArray(Ljava/util/ArrayList;Ljava/lang/Integer;Ljava/lang/String;Lcom/futuredial/publicobj/ItemArray;)V

    goto/16 :goto_9

    .line 644
    .end local v25           #itemcmp:Lcom/futuredial/atparser/Csam_sms_combine$ItemComparator;
    .end local v35           #strContext:Ljava/lang/String;
    :cond_13
    const/4 v13, 0x0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v28

    :goto_b
    move/from16 v0, v28

    if-ge v13, v0, :cond_10

    .line 646
    sget-object v40, Lcom/futuredial/atparser/Csam_sms_combine;->itemleft:Ljava/util/ArrayList;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 644
    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    .line 657
    .end local v4           #LTel:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;"
    .end local v5           #ListTel1:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;"
    .end local v6           #countList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;"
    .end local v7           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;"
    .end local v8           #entryBox:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;>;"
    .end local v9           #entryTel:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;"
    .end local v10           #entryTel1:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;"
    .end local v12           #grpCnt:Ljava/lang/Integer;
    .end local v14           #icount:Ljava/lang/Integer;
    .end local v18           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;>;"
    .end local v19           #itTel:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;>;"
    .end local v21           #itcnt:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;>;"
    .end local v24           #itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;"
    .end local v28           #nSize:I
    .end local v30           #sTelNo:Ljava/lang/String;
    .end local v31           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;>;"
    .end local v32           #setTel:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;>;"
    .end local v34           #setcnt:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;>;"
    .end local v37           #telList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;"
    :cond_14
    invoke-virtual/range {p1 .. p1}, Lcom/futuredial/publicobj/ItemArray;->Reset()V

    .line 658
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/futuredial/publicobj/ItemArray;->m_objItemArray:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/futuredial/publicobj/ItemArray;->AddItem(Ljava/util/ArrayList;)Z

    .line 660
    const/16 v40, 0x1

    return v40
.end method
