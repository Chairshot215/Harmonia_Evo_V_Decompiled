.class public Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;
.super Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
.source "DisplayExpandableListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/widget/DisplayExpandableListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupDelta"
.end annotation


# instance fields
.field private mAccountHasGroups:Z

.field private mUngrouped:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 505
    invoke-direct {p0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;-><init>()V

    .line 501
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;->mUngrouped:Z

    .line 506
    return-void
.end method

.method private static addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .parameter "uri"

    .prologue
    .line 621
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static fromAfter(Landroid/content/ContentValues;)Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;
    .locals 2
    .parameter "after"

    .prologue
    .line 560
    new-instance v0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;

    invoke-direct {v0}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;-><init>()V

    .line 561
    .local v0, entry:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    .line 562
    iput-object p0, v0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    .line 563
    return-object v0
.end method

.method public static fromBefore(Landroid/content/ContentValues;)Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;
    .locals 2
    .parameter "before"

    .prologue
    .line 553
    new-instance v0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;

    invoke-direct {v0}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;-><init>()V

    .line 554
    .local v0, entry:Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;
    iput-object p0, v0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    .line 555
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iput-object v1, v0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    .line 556
    return-object v0
.end method

.method public static fromSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;
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

    .line 514
    sget-object v0, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "account_name"

    invoke-virtual {v0, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "account_type"

    invoke-virtual {v0, v2, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    .line 519
    .local v7, settingsUriBuilder:Landroid/net/Uri$Builder;
    if-eqz p3, :cond_0

    .line 520
    const-string v0, "data_set"

    invoke-virtual {v7, v0, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    .line 522
    :cond_0
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 524
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

    .line 529
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 530
    .local v8, values:Landroid/content/ContentValues;
    const-string v0, "account_name"

    invoke-virtual {v8, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    const-string v0, "account_type"

    invoke-virtual {v8, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    if-eqz p3, :cond_1

    .line 533
    const-string v0, "data_set"

    invoke-virtual {v8, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    :cond_1
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 539
    const-string v0, "ungrouped_visible"

    const/4 v2, 0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 540
    invoke-static {v8}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;->fromBefore(Landroid/content/ContentValues;)Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;->setUngrouped(Z)Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 548
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_0
    return-object v0

    .line 544
    :cond_3
    :try_start_1
    const-string v0, "ungrouped_visible"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 545
    invoke-static {v8}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;->setUngrouped(Z)Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 548
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v8           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method


# virtual methods
.method public beforeExists()Z
    .locals 1

    .prologue
    .line 574
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
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 643
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;->isNoop()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v6

    .line 682
    :goto_0
    return-object v5

    .line 645
    :cond_0
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;->isUpdate()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 647
    iget-boolean v5, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;->mUngrouped:Z

    if-eqz v5, :cond_1

    sget-object v5, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    :goto_1
    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 649
    .local v2, builder:Landroid/content/ContentProviderOperation$Builder;
    iget-boolean v5, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;->mUngrouped:Z

    if-eqz v5, :cond_4

    .line 650
    const-string v5, "data_set"

    invoke-virtual {p0, v5}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 651
    .local v4, dataSet:Ljava/lang/String;
    const-string v5, "account_name"

    invoke-virtual {p0, v5}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 652
    .local v0, accountName:Ljava/lang/String;
    const-string v5, "account_type"

    invoke-virtual {p0, v5}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 654
    .local v1, accountType:Ljava/lang/String;
    if-nez v4, :cond_2

    const-string v3, "data_set IS NULL "

    .line 658
    .local v3, dataSelection:Ljava/lang/String;
    :goto_2
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isSIMSDNEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v1, :cond_3

    const-string v5, "com.anddroid.contacts.sim"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 659
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "account_type=?  AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/String;

    aput-object v1, v6, v7

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 675
    .end local v0           #accountName:Ljava/lang/String;
    .end local v1           #accountType:Ljava/lang/String;
    .end local v3           #dataSelection:Ljava/lang/String;
    .end local v4           #dataSet:Ljava/lang/String;
    :goto_3
    iget-object v5, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v2, v5}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 676
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    goto :goto_0

    .line 647
    .end local v2           #builder:Landroid/content/ContentProviderOperation$Builder;
    :cond_1
    sget-object v5, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    goto :goto_1

    .line 654
    .restart local v0       #accountName:Ljava/lang/String;
    .restart local v1       #accountType:Ljava/lang/String;
    .restart local v2       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v4       #dataSet:Ljava/lang/String;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "data_set= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 665
    .restart local v3       #dataSelection:Ljava/lang/String;
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "account_name=? AND account_type=? AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    aput-object v0, v6, v7

    aput-object v1, v6, v8

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_3

    .line 673
    .end local v0           #accountName:Ljava/lang/String;
    .end local v1           #accountType:Ljava/lang/String;
    .end local v3           #dataSelection:Ljava/lang/String;
    .end local v4           #dataSet:Ljava/lang/String;
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;->getId()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_3

    .line 677
    .end local v2           #builder:Landroid/content/ContentProviderOperation$Builder;
    :cond_5
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;->isInsert()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-boolean v5, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;->mUngrouped:Z

    if-eqz v5, :cond_6

    .line 679
    iget-object v5, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    iget-object v6, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mIdColumn:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 680
    sget-object v5, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 681
    .restart local v2       #builder:Landroid/content/ContentProviderOperation$Builder;
    iget-object v5, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v2, v5}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 682
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    goto/16 :goto_0

    .line 684
    .end local v2           #builder:Landroid/content/ContentProviderOperation$Builder;
    :cond_6
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Unexpected delete or insert"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public getGroupIsReadOnly()I
    .locals 1

    .prologue
    .line 614
    iget-boolean v0, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;->mUngrouped:Z

    if-eqz v0, :cond_0

    .line 615
    const/4 v0, 0x0

    .line 617
    :goto_0
    return v0

    :cond_0
    const-string v0, "group_is_read_only"

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getShouldSync()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 578
    iget-boolean v0, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;->mUngrouped:Z

    if-eqz v0, :cond_0

    const-string v0, "should_sync"

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;->getAsInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

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
    .line 596
    iget-boolean v2, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;->mUngrouped:Z

    if-eqz v2, :cond_1

    .line 597
    iget-boolean v2, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;->mAccountHasGroups:Z

    if-eqz v2, :cond_0

    .line 598
    const v2, 0x7f0a002f

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 608
    :goto_0
    return-object v2

    .line 600
    :cond_0
    const v2, 0x7f0a00ec

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    .line 603
    :cond_1
    const-string v2, "title_res"

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 604
    .local v1, titleRes:Ljava/lang/Integer;
    if-eqz v1, :cond_2

    .line 605
    const-string v2, "res_package"

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 606
    .local v0, packageName:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    .line 608
    .end local v0           #packageName:Ljava/lang/String;
    :cond_2
    const-string v2, "title"

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getVisible()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 583
    iget-boolean v0, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;->mUngrouped:Z

    if-eqz v0, :cond_0

    const-string v0, "ungrouped_visible"

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;->getAsInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

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
    .line 630
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;->beforeExists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 631
    :cond_0
    const/4 v0, 0x0

    .line 633
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
    .line 589
    return-void
.end method

.method public putVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 592
    iget-boolean v0, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;->mUngrouped:Z

    if-eqz v0, :cond_0

    const-string v0, "ungrouped_visible"

    move-object v1, v0

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;->put(Ljava/lang/String;I)V

    .line 593
    return-void

    .line 592
    :cond_0
    const-string v0, "group_visible"

    move-object v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected setUngrouped(Z)Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;
    .locals 1
    .parameter "accountHasGroups"

    .prologue
    .line 567
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;->mUngrouped:Z

    .line 568
    iput-boolean p1, p0, Lcom/android/htccontacts/widget/DisplayExpandableListAdapter$GroupDelta;->mAccountHasGroups:Z

    .line 569
    return-object p0
.end method
