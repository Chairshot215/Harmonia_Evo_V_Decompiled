.class Lcom/futuredial/atparser/Cnokia_sms_combine;
.super Ljava/lang/Object;
.source "CIRecsProcType.java"

# interfaces
.implements Lcom/futuredial/atparser/CIRecsProcType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/futuredial/atparser/Cnokia_sms_combine$ItemComparator;
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
    .line 670
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 666
    const v0, 0xf3e59

    iput v0, p0, Lcom/futuredial/atparser/Cnokia_sms_combine;->I999001:I

    .line 667
    const v0, 0xf3e5a

    iput v0, p0, Lcom/futuredial/atparser/Cnokia_sms_combine;->I999002:I

    .line 668
    const v0, 0xf3e5b

    iput v0, p0, Lcom/futuredial/atparser/Cnokia_sms_combine;->I999003:I

    .line 669
    const-string v0, "Cnokia_sms_combine"

    iput-object v0, p0, Lcom/futuredial/atparser/Cnokia_sms_combine;->TAG:Ljava/lang/String;

    .line 670
    return-void
.end method

.method static synthetic access$000(Lcom/futuredial/atparser/Cnokia_sms_combine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 664
    iget v0, p0, Lcom/futuredial/atparser/Cnokia_sms_combine;->I999002:I

    return v0
.end method


# virtual methods
.method public proc_records(Lcom/futuredial/publicobj/ItemArray;)Z
    .locals 29
    .parameter "records"

    .prologue
    .line 692
    new-instance v15, Lcom/futuredial/publicobj/ItemArray;

    invoke-direct {v15}, Lcom/futuredial/publicobj/ItemArray;-><init>()V

    .line 693
    .local v15, itemArray:Lcom/futuredial/publicobj/ItemArray;
    const/16 v18, 0x0

    .line 694
    .local v18, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/futuredial/publicobj/ItemArray;->GetItemCount()I

    move-result v26

    .line 695
    .local v26, totalSize:I
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 697
    .local v19, mapBox:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;>;"
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    move/from16 v0, v26

    if-ge v6, v0, :cond_6

    .line 699
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/futuredial/publicobj/ItemArray;->GetItemAt(I)Lcom/futuredial/publicobj/Item;

    move-result-object v14

    .line 700
    .local v14, item:Lcom/futuredial/publicobj/Item;
    iget-object v0, v14, Lcom/futuredial/publicobj/Item;->m_objFieldArray:Ljava/util/Hashtable;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/futuredial/atparser/Cnokia_sms_combine;->I999001:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 701
    .local v7, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    const/16 v27, 0x0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 702
    .local v5, fieldGroup:Ljava/lang/Integer;
    if-nez v7, :cond_2

    .line 704
    const/16 v27, -0x1

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 711
    :cond_0
    :goto_1
    iget-object v0, v14, Lcom/futuredial/publicobj/Item;->m_objFieldArray:Ljava/util/Hashtable;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 712
    .local v8, idsbox:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    const/16 v21, 0x0

    .line 713
    .local v21, nboxtype:I
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v27

    if-lez v27, :cond_1

    .line 715
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/futuredial/publicobj/Field;

    invoke-virtual/range {v27 .. v27}, Lcom/futuredial/publicobj/Field;->GetInt()I

    move-result v21

    .line 719
    :cond_1
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v27

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_3

    .line 723
    invoke-virtual {v15, v14}, Lcom/futuredial/publicobj/ItemArray;->AddItem(Lcom/futuredial/publicobj/Item;)Z

    .line 697
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 706
    .end local v8           #idsbox:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    .end local v21           #nboxtype:I
    :cond_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v27

    if-lez v27, :cond_0

    .line 708
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/futuredial/publicobj/Field;

    invoke-virtual/range {v27 .. v27}, Lcom/futuredial/publicobj/Field;->GetInt()I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_1

    .line 727
    .restart local v8       #idsbox:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    .restart local v21       #nboxtype:I
    :cond_3
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_5

    .line 728
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .end local v18           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;"
    check-cast v18, Ljava/util/HashMap;

    .line 730
    .restart local v18       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;"
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_4

    .line 733
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 734
    .local v16, itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;"
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 735
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 740
    .end local v16           #itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;"
    :cond_4
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 741
    .restart local v16       #itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;"
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 746
    .end local v16           #itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;"
    :cond_5
    new-instance v18, Ljava/util/HashMap;

    .end local v18           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;"
    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 747
    .restart local v18       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 748
    .restart local v16       #itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;"
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 749
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 756
    .end local v5           #fieldGroup:Ljava/lang/Integer;
    .end local v7           #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    .end local v8           #idsbox:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    .end local v14           #item:Lcom/futuredial/publicobj/Item;
    .end local v16           #itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;"
    .end local v21           #nboxtype:I
    :cond_6
    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v23

    .line 757
    .local v23, setbox:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;>;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 758
    .local v13, itbox:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;>;>;"
    :cond_7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_c

    .line 759
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 760
    .local v4, entryBox:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    .end local v18           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;"
    check-cast v18, Ljava/util/HashMap;

    .line 763
    .restart local v18       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;"
    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v22

    .line 764
    .local v22, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 765
    .local v12, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;>;"
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_7

    .line 767
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 768
    .local v3, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 771
    .restart local v16       #itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;"
    new-instance v17, Lcom/futuredial/atparser/Cnokia_sms_combine$ItemComparator;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/futuredial/atparser/Cnokia_sms_combine$ItemComparator;-><init>(Lcom/futuredial/atparser/Cnokia_sms_combine;)V

    .line 772
    .local v17, itemcmp:Lcom/futuredial/atparser/Cnokia_sms_combine$ItemComparator;
    invoke-static/range {v16 .. v17}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 774
    const-string v24, ""

    .line 776
    .local v24, strContext:Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v20

    .local v20, nSize:I
    :goto_4
    move/from16 v0, v20

    if-ge v6, v0, :cond_9

    .line 778
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/futuredial/publicobj/Item;

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/futuredial/publicobj/Item;->m_objFieldArray:Ljava/util/Hashtable;

    move-object/from16 v27, v0

    const/16 v28, 0x7

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .line 779
    .local v9, ilist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v27

    if-lez v27, :cond_8

    .line 780
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/futuredial/publicobj/Field;

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 781
    .local v25, strTemp:Ljava/lang/String;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 776
    .end local v25           #strTemp:Ljava/lang/String;
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 786
    .end local v9           #ilist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    :cond_9
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 787
    .local v11, isize:Ljava/lang/Integer;
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v27

    if-lez v27, :cond_b

    .line 788
    const/16 v27, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/futuredial/publicobj/Item;

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/futuredial/publicobj/Item;->m_objFieldArray:Ljava/util/Hashtable;

    move-object/from16 v27, v0

    const/16 v28, 0x7

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/ArrayList;

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 789
    .local v10, is:Ljava/lang/Integer;
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v27

    if-lez v27, :cond_a

    .line 790
    const/16 v27, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/futuredial/publicobj/Item;

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/futuredial/publicobj/Item;->m_objFieldArray:Ljava/util/Hashtable;

    move-object/from16 v27, v0

    const/16 v28, 0x7

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/ArrayList;

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/futuredial/publicobj/Field;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    .line 791
    const/16 v27, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/futuredial/publicobj/Item;

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Lcom/futuredial/publicobj/ItemArray;->AddItem(Lcom/futuredial/publicobj/Item;)Z

    goto/16 :goto_3

    .line 794
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/atparser/Cnokia_sms_combine;->TAG:Ljava/lang/String;

    move-object/from16 v27, v0

    const-string v28, "Content size error!"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 797
    .end local v10           #is:Ljava/lang/Integer;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/atparser/Cnokia_sms_combine;->TAG:Ljava/lang/String;

    move-object/from16 v27, v0

    const-string v28, "ItemList size Error!"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 803
    .end local v3           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;"
    .end local v4           #entryBox:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;>;"
    .end local v11           #isize:Ljava/lang/Integer;
    .end local v12           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;>;"
    .end local v16           #itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;"
    .end local v17           #itemcmp:Lcom/futuredial/atparser/Cnokia_sms_combine$ItemComparator;
    .end local v20           #nSize:I
    .end local v22           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Lcom/futuredial/publicobj/Item;>;>;>;"
    .end local v24           #strContext:Ljava/lang/String;
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/futuredial/publicobj/ItemArray;->Reset()V

    .line 804
    iget-object v0, v15, Lcom/futuredial/publicobj/ItemArray;->m_objItemArray:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/futuredial/publicobj/ItemArray;->AddItem(Ljava/util/ArrayList;)Z

    .line 806
    const/16 v27, 0x1

    return v27
.end method
