.class public Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;
.super Ljava/lang/Object;
.source "SelectVisibleContactAccounts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/util/SelectVisibleContactAccounts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "AccountDisplay"
.end annotation


# instance fields
.field public mDataSet:Ljava/lang/String;

.field public mName:Ljava/lang/String;

.field public mSyncedGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/util/SelectVisibleContactAccounts$GroupDelta;",
            ">;"
        }
    .end annotation
.end field

.field public mType:Ljava/lang/String;

.field public mUngrouped:Lcom/android/htccontacts/util/SelectVisibleContactAccounts$GroupDelta;

.field public mVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 326
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 319
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;->mVisible:Z

    .line 321
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    .line 327
    const-string v0, ""

    iput-object v0, p0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;->mName:Ljava/lang/String;

    .line 328
    const-string v0, ""

    iput-object v0, p0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;->mType:Ljava/lang/String;

    .line 329
    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18
    .parameter "resolver"
    .parameter "accountName"
    .parameter "accountType"
    .parameter "dataSet"

    .prologue
    .line 334
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 319
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;->mVisible:Z

    .line 321
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    .line 335
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;->mName:Ljava/lang/String;

    .line 336
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;->mType:Ljava/lang/String;

    .line 337
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;->mDataSet:Ljava/lang/String;

    .line 338
    const-string v7, "deleted  = 0"

    .line 341
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

    move-result-object v12

    .line 345
    .local v12, groupsUriBuilder:Landroid/net/Uri$Builder;
    if-eqz p4, :cond_0

    .line 346
    const-string v4, "data_set"

    move-object/from16 v0, p4

    invoke-virtual {v12, v4, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v12

    .line 349
    :cond_0
    invoke-virtual {v12}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 351
    .local v5, groupsUri:Landroid/net/Uri;
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 353
    .local v16, queryCursor:Landroid/database/Cursor;
    if-nez v16, :cond_1

    .line 389
    :goto_0
    return-void

    .line 358
    :cond_1
    invoke-static/range {v16 .. v16}, Landroid/provider/ContactsContract$Groups;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v15

    .line 361
    .local v15, iterator:Landroid/content/EntityIterator;
    const/4 v13, 0x0

    .line 364
    .local v13, hasGroups:Z
    :try_start_0
    const-string v4, "data_set"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 365
    .local v14, idx:I
    :cond_2
    :goto_1
    invoke-interface {v15}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 366
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 367
    .local v11, groupDataSet:Ljava/lang/String;
    invoke-interface {v15}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Entity;

    invoke-virtual {v4}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v17

    .line 368
    .local v17, values:Landroid/content/ContentValues;
    if-eqz v11, :cond_3

    .line 369
    const-string v4, "data_set"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    :cond_3
    invoke-static/range {v17 .. v17}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$GroupDelta;->fromBefore(Landroid/content/ContentValues;)Lcom/android/htccontacts/util/SelectVisibleContactAccounts$GroupDelta;

    move-result-object v10

    .line 372
    .local v10, group:Lcom/android/htccontacts/util/SelectVisibleContactAccounts$GroupDelta;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;->addGroup(Lcom/android/htccontacts/util/SelectVisibleContactAccounts$GroupDelta;)V

    .line 373
    invoke-virtual {v10}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$GroupDelta;->getVisible()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 374
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;->mVisible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 387
    .end local v10           #group:Lcom/android/htccontacts/util/SelectVisibleContactAccounts$GroupDelta;
    .end local v11           #groupDataSet:Ljava/lang/String;
    .end local v14           #idx:I
    .end local v17           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    invoke-interface {v15}, Landroid/content/EntityIterator;->close()V

    throw v4

    .line 377
    .restart local v14       #idx:I
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 378
    const/4 v13, 0x1

    .line 382
    :cond_5
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-static {v0, v1, v2, v3, v13}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$GroupDelta;->fromSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/htccontacts/util/SelectVisibleContactAccounts$GroupDelta;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;->mUngrouped:Lcom/android/htccontacts/util/SelectVisibleContactAccounts$GroupDelta;

    .line 383
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;->mUngrouped:Lcom/android/htccontacts/util/SelectVisibleContactAccounts$GroupDelta;

    invoke-virtual {v4}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$GroupDelta;->getVisible()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 384
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;->mVisible:Z

    .line 385
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;->mUngrouped:Lcom/android/htccontacts/util/SelectVisibleContactAccounts$GroupDelta;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;->addGroup(Lcom/android/htccontacts/util/SelectVisibleContactAccounts$GroupDelta;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 387
    invoke-interface {v15}, Landroid/content/EntityIterator;->close()V

    goto :goto_0
.end method

.method private addGroup(Lcom/android/htccontacts/util/SelectVisibleContactAccounts$GroupDelta;)V
    .locals 1
    .parameter "group"

    .prologue
    .line 396
    invoke-virtual {p1}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$GroupDelta;->getShouldSync()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
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
    .line 408
    .local p1, diff:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v3, p0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

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

    check-cast v0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$GroupDelta;

    .line 409
    .local v0, group:Lcom/android/htccontacts/util/SelectVisibleContactAccounts$GroupDelta;
    invoke-virtual {v0}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$GroupDelta;->buildDiff()Landroid/content/ContentProviderOperation;

    move-result-object v2

    .line 410
    .local v2, oper:Landroid/content/ContentProviderOperation;
    if-eqz v2, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 418
    .end local v0           #group:Lcom/android/htccontacts/util/SelectVisibleContactAccounts$GroupDelta;
    .end local v2           #oper:Landroid/content/ContentProviderOperation;
    :cond_1
    return-void
.end method

.method public setVisible(Z)V
    .locals 3
    .parameter "isVisible"

    .prologue
    .line 421
    iput-boolean p1, p0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;->mVisible:Z

    .line 423
    iget-object v2, p0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$GroupDelta;

    .line 424
    .local v0, group:Lcom/android/htccontacts/util/SelectVisibleContactAccounts$GroupDelta;
    iget-boolean v2, p0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;->mVisible:Z

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$GroupDelta;->putVisible(Z)V

    goto :goto_0

    .line 426
    .end local v0           #group:Lcom/android/htccontacts/util/SelectVisibleContactAccounts$GroupDelta;
    :cond_0
    return-void
.end method
