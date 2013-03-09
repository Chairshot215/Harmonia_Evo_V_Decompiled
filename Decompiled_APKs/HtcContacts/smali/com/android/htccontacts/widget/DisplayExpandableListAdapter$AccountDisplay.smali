.class public Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountDisplay;
.super Ljava/lang/Object;
.source "DisplayExpandableListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccountDisplay"
.end annotation


# instance fields
.field public mName:Ljava/lang/String;

.field public mSyncedGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;",
            ">;"
        }
    .end annotation
.end field

.field public mTypeAndDataSet:Lcom/android/htccontacts/model/AccountTypeWithDataSet;

.field public mUngrouped:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;

.field public mUnsyncedGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;",
            ">;"
        }
    .end annotation
.end field

.field public mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 20
    .parameter "resolver"
    .parameter "accountName"
    .parameter "accountType"
    .parameter "dataSet"

    .prologue
    .line 702
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 692
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountDisplay;->mVisible:Z

    .line 694
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    .line 695
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountDisplay;->mUnsyncedGroups:Ljava/util/ArrayList;

    .line 703
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountDisplay;->mName:Ljava/lang/String;

    .line 704
    invoke-static/range {p3 .. p4}, Lcom/android/htccontacts/model/AccountTypeWithDataSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/AccountTypeWithDataSet;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountDisplay;->mTypeAndDataSet:Lcom/android/htccontacts/model/AccountTypeWithDataSet;

    .line 706
    const-string v7, "deleted  = 0 "

    .line 709
    .local v7, mWhere:Ljava/lang/String;
    sget-object v4, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v6, "account_name"

    move-object/from16 v0, p2

    invoke-virtual {v4, v6, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v6, "account_type"

    move-object/from16 v0, p3

    invoke-virtual {v4, v6, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    .line 714
    .local v14, groupsUriBuilder:Landroid/net/Uri$Builder;
    if-eqz p4, :cond_0

    .line 715
    const-string v4, "data_set"

    move-object/from16 v0, p4

    invoke-virtual {v14, v4, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    .line 717
    :cond_0
    invoke-virtual {v14}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 719
    .local v5, groupsUri:Landroid/net/Uri;
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 721
    .local v18, queryCursor:Landroid/database/Cursor;
    if-nez v18, :cond_1

    .line 759
    :goto_0
    return-void

    .line 726
    :cond_1
    invoke-static/range {v18 .. v18}, Landroid/provider/ContactsContract$Groups;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v17

    .line 731
    .local v17, iterator:Landroid/content/EntityIterator;
    const/4 v15, 0x0

    .line 734
    .local v15, hasGroups:Z
    :try_start_0
    const-string v4, "data_set"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 735
    .local v16, idx:I
    const-string v4, "group_is_read_only"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 736
    .local v13, groupIsReadOnlyIdx:I
    :goto_1
    invoke-interface/range {v17 .. v17}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 737
    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 738
    .local v11, groupDataSet:Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 740
    .local v12, groupIsReadOnly:I
    invoke-interface/range {v17 .. v17}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Entity;

    invoke-virtual {v4}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v19

    .line 741
    .local v19, values:Landroid/content/ContentValues;
    if-eqz v11, :cond_2

    .line 742
    const-string v4, "data_set"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    :cond_2
    const-string v4, "group_is_read_only"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 745
    invoke-static/range {v19 .. v19}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;->fromBefore(Landroid/content/ContentValues;)Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;

    move-result-object v10

    .line 746
    .local v10, group:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountDisplay;->addGroup(Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 757
    .end local v10           #group:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;
    .end local v11           #groupDataSet:Ljava/lang/String;
    .end local v12           #groupIsReadOnly:I
    .end local v13           #groupIsReadOnlyIdx:I
    .end local v16           #idx:I
    .end local v19           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    invoke-interface/range {v17 .. v17}, Landroid/content/EntityIterator;->close()V

    throw v4

    .line 749
    .restart local v13       #groupIsReadOnlyIdx:I
    .restart local v16       #idx:I
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 750
    const/4 v15, 0x1

    .line 754
    :cond_4
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-static {v0, v1, v2, v3, v15}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;->fromSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountDisplay;->mUngrouped:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;

    .line 755
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountDisplay;->mUngrouped:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountDisplay;->addGroup(Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 757
    invoke-interface/range {v17 .. v17}, Landroid/content/EntityIterator;->close()V

    goto :goto_0
.end method

.method private addGroup(Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;)V
    .locals 1
    .parameter "group"

    .prologue
    .line 766
    invoke-virtual {p1}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;->getShouldSync()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 767
    iget-object v0, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 771
    :cond_0
    return-void
.end method


# virtual methods
.method public buildDiff(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 818
    .local p1, diff:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v3, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;

    .line 819
    .local v0, group:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;->buildDiff()Landroid/content/ContentProviderOperation;

    move-result-object v2

    .line 820
    .local v2, oper:Landroid/content/ContentProviderOperation;
    if-eqz v2, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 828
    .end local v0           #group:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;
    .end local v2           #oper:Landroid/content/ContentProviderOperation;
    :cond_1
    return-void
.end method

.method public isChildVisible()Z
    .locals 3

    .prologue
    .line 835
    iget-object v2, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;

    .line 836
    .local v0, group:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;->getVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 837
    const/4 v2, 0x1

    .line 840
    .end local v0           #group:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setShouldSync(Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;Z)V
    .locals 1
    .parameter "child"
    .parameter "shouldSync"

    .prologue
    .line 788
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountDisplay;->setShouldSync(Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;ZZ)V

    .line 789
    return-void
.end method

.method public setShouldSync(Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;ZZ)V
    .locals 1
    .parameter "child"
    .parameter "shouldSync"
    .parameter "attemptRemove"

    .prologue
    .line 797
    invoke-virtual {p1, p2}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;->putShouldSync(Z)V

    .line 798
    if-eqz p2, :cond_2

    .line 799
    if-eqz p3, :cond_0

    .line 802
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 811
    :cond_1
    :goto_0
    return-void

    .line 805
    :cond_2
    if-eqz p3, :cond_1

    .line 806
    iget-object v0, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setShouldSync(Z)V
    .locals 3
    .parameter "shouldSync"

    .prologue
    .line 778
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountDisplay;->mUnsyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 780
    .local v1, oppositeChildren:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 781
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;

    .line 782
    .local v0, child:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;
    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v2}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountDisplay;->setShouldSync(Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;ZZ)V

    .line 783
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 778
    .end local v0           #child:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;
    .end local v1           #oppositeChildren:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;>;"
    :cond_0
    iget-object v2, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    goto :goto_0

    .line 785
    .restart local v1       #oppositeChildren:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;>;"
    :cond_1
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .parameter "isVisible"

    .prologue
    .line 831
    iput-boolean p1, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountDisplay;->mVisible:Z

    .line 832
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 845
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountDisplay;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountDisplay;->mTypeAndDataSet:Lcom/android/htccontacts/model/AccountTypeWithDataSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ungroupVisible? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountDisplay;->mUngrouped:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " syncs groups: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , unsyncs groups: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$AccountDisplay;->mUnsyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
