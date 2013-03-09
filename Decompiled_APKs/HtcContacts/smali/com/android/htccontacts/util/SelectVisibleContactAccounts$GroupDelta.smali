.class public Lcom/android/htccontacts/util/SelectVisibleContactAccounts$GroupDelta;
.super Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
.source "SelectVisibleContactAccounts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/util/SelectVisibleContactAccounts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "GroupDelta"
.end annotation


# instance fields
.field private mAccountHasGroups:Z

.field private mUngrouped:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 442
    invoke-direct {p0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;-><init>()V

    .line 438
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$GroupDelta;->mUngrouped:Z

    .line 443
    return-void
.end method

.method public static fromAfter(Landroid/content/ContentValues;)Lcom/android/htccontacts/util/SelectVisibleContactAccounts$GroupDelta;
    .locals 2
    .parameter "after"

    .prologue
    .line 495
    new-instance v0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$GroupDelta;

    invoke-direct {v0}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$GroupDelta;-><init>()V

    .line 496
    .local v0, entry:Lcom/android/htccontacts/util/SelectVisibleContactAccounts$GroupDelta;
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    .line 497
    iput-object p0, v0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    .line 498
    return-object v0
.end method

.method public static fromBefore(Landroid/content/ContentValues;)Lcom/android/htccontacts/util/SelectVisibleContactAccounts$GroupDelta;
    .locals 2
    .parameter "before"

    .prologue
    .line 488
    new-instance v0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$GroupDelta;

    invoke-direct {v0}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$GroupDelta;-><init>()V

    .line 489
    .local v0, entry:Lcom/android/htccontacts/util/SelectVisibleContactAccounts$GroupDelta;
    iput-object p0, v0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    .line 490
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iput-object v1, v0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    .line 491
    return-object v0
.end method

.method public static fromSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/htccontacts/util/SelectVisibleContactAccounts$GroupDelta;
    .locals 9
    .parameter "resolver"
    .parameter "accountName"
    .parameter "accountType"
    .parameter "dataSet"
    .parameter "accountHasGroups"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 451
    sget-object v0, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "account_name"

    invoke-virtual {v0, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "account_type"

    invoke-virtual {v0, v2, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    .line 456
    .local v7, settingsUriBuilder:Landroid/net/Uri$Builder;
    if-eqz p3, :cond_0

    .line 457
    const-string v0, "data_set"

    invoke-virtual {v7, v0, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    .line 460
    :cond_0
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 461
    .local v1, settingsUri:Landroid/net/Uri;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "should_sync"

    aput-object v0, v2, v4

    const-string v0, "ungrouped_visible"

    aput-object v0, v2, v5

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 466
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 467
    .local v8, values:Landroid/content/ContentValues;
    const-string v0, "account_name"

    invoke-virtual {v8, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    const-string v0, "account_type"

    invoke-virtual {v8, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    const-string v0, "data_set"

    invoke-virtual {v8, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 474
    const-string v0, "ungrouped_visible"

    const/4 v2, 0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 475
    invoke-static {v8}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$GroupDelta;->fromBefore(Landroid/content/ContentValues;)Lcom/android/htccontacts/util/SelectVisibleContactAccounts$GroupDelta;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$GroupDelta;->setUngrouped(Z)Lcom/android/htccontacts/util/SelectVisibleContactAccounts$GroupDelta;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 483
    if-eqz v6, :cond_1

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 480
    :cond_1
    return-object v0

    .line 479
    :cond_2
    :try_start_1
    const-string v0, "ungrouped_visible"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 480
    invoke-static {v8}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$GroupDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/htccontacts/util/SelectVisibleContactAccounts$GroupDelta;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$GroupDelta;->setUngrouped(Z)Lcom/android/htccontacts/util/SelectVisibleContactAccounts$GroupDelta;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 483
    if-eqz v6, :cond_1

    goto :goto_0

    .end local v8           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method


# virtual methods
.method public beforeExists()Z
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public buildDiff()Landroid/content/ContentProviderOperation;
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 556
    invoke-virtual {p0}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$GroupDelta;->isNoop()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v6

    .line 585
    :goto_0
    return-object v5

    .line 558
    :cond_0
    invoke-virtual {p0}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$GroupDelta;->isUpdate()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 560
    iget-boolean v5, p0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$GroupDelta;->mUngrouped:Z

    if-eqz v5, :cond_1

    sget-object v5, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    :goto_1
    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 562
    .local v4, builder:Landroid/content/ContentProviderOperation$Builder;
    iget-boolean v5, p0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$GroupDelta;->mUngrouped:Z

    if-eqz v5, :cond_3

    .line 563
    const-string v5, "account_name"

    invoke-virtual {p0, v5}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$GroupDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 564
    .local v1, accName:Ljava/lang/String;
    const-string v5, "account_type"

    invoke-virtual {p0, v5}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$GroupDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 565
    .local v2, accType:Ljava/lang/String;
    const-string v5, "data_set"

    invoke-virtual {p0, v5}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$GroupDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 567
    .local v0, accDataSet:Ljava/lang/String;
    if-nez v0, :cond_2

    const-string v3, "data_set IS NULL "

    .line 571
    .local v3, appendSelection:Ljava/lang/String;
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "account_name=? AND account_type=?  AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v7, 0x1

    aput-object v2, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 578
    .end local v0           #accDataSet:Ljava/lang/String;
    .end local v1           #accName:Ljava/lang/String;
    .end local v2           #accType:Ljava/lang/String;
    .end local v3           #appendSelection:Ljava/lang/String;
    :goto_3
    iget-object v5, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 579
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    goto :goto_0

    .line 560
    .end local v4           #builder:Landroid/content/ContentProviderOperation$Builder;
    :cond_1
    sget-object v5, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    #calls: Lcom/android/htccontacts/util/SelectVisibleContactAccounts;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;
    invoke-static {v5}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts;->access$300(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    goto :goto_1

    .line 567
    .restart local v0       #accDataSet:Ljava/lang/String;
    .restart local v1       #accName:Ljava/lang/String;
    .restart local v2       #accType:Ljava/lang/String;
    .restart local v4       #builder:Landroid/content/ContentProviderOperation$Builder;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "data_set = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 576
    .end local v0           #accDataSet:Ljava/lang/String;
    .end local v1           #accName:Ljava/lang/String;
    .end local v2           #accType:Ljava/lang/String;
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$GroupDelta;->getId()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_3

    .line 580
    .end local v4           #builder:Landroid/content/ContentProviderOperation$Builder;
    :cond_4
    invoke-virtual {p0}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$GroupDelta;->isInsert()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$GroupDelta;->mUngrouped:Z

    if-eqz v5, :cond_5

    .line 582
    iget-object v5, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    iget-object v6, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mIdColumn:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 583
    sget-object v5, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 584
    .restart local v4       #builder:Landroid/content/ContentProviderOperation$Builder;
    iget-object v5, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 585
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    goto/16 :goto_0

    .line 587
    .end local v4           #builder:Landroid/content/ContentProviderOperation$Builder;
    :cond_5
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Unexpected delete or insert"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public getShouldSync()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 513
    iget-boolean v0, p0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$GroupDelta;->mUngrouped:Z

    if-eqz v0, :cond_0

    const-string v0, "should_sync"

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$GroupDelta;->getAsInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    return v0

    :cond_0
    const-string v0, "should_sync"

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 5
    .parameter "context"

    .prologue
    .line 531
    iget-boolean v2, p0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$GroupDelta;->mUngrouped:Z

    if-eqz v2, :cond_1

    .line 532
    iget-boolean v2, p0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$GroupDelta;->mAccountHasGroups:Z

    if-eqz v2, :cond_0

    .line 533
    const v2, 0x7f0a002f

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 543
    :goto_0
    return-object v2

    .line 535
    :cond_0
    const v2, 0x7f0a00ec

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    .line 538
    :cond_1
    const-string v2, "title_res"

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$GroupDelta;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 539
    .local v1, titleRes:Ljava/lang/Integer;
    if-eqz v1, :cond_2

    .line 540
    const-string v2, "res_package"

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$GroupDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 541
    .local v0, packageName:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    .line 543
    .end local v0           #packageName:Ljava/lang/String;
    :cond_2
    const-string v2, "title"

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$GroupDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getVisible()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 518
    iget-boolean v0, p0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$GroupDelta;->mUngrouped:Z

    if-eqz v0, :cond_0

    const-string v0, "ungrouped_visible"

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$GroupDelta;->getAsInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    const-string v0, "group_visible"

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public isUpdate()Z
    .locals 1

    .prologue
    .line 593
    invoke-virtual {p0}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$GroupDelta;->beforeExists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 594
    :cond_0
    const/4 v0, 0x0

    .line 596
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public putShouldSync(Z)V
    .locals 0
    .parameter "shouldSync"

    .prologue
    .line 524
    return-void
.end method

.method public putVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 527
    iget-boolean v0, p0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$GroupDelta;->mUngrouped:Z

    if-eqz v0, :cond_0

    const-string v0, "ungrouped_visible"

    move-object v1, v0

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$GroupDelta;->put(Ljava/lang/String;I)V

    .line 528
    return-void

    .line 527
    :cond_0
    const-string v0, "group_visible"

    move-object v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected setUngrouped(Z)Lcom/android/htccontacts/util/SelectVisibleContactAccounts$GroupDelta;
    .locals 1
    .parameter "accountHasGroups"

    .prologue
    .line 502
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$GroupDelta;->mUngrouped:Z

    .line 503
    iput-boolean p1, p0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$GroupDelta;->mAccountHasGroups:Z

    .line 504
    return-object p0
.end method
