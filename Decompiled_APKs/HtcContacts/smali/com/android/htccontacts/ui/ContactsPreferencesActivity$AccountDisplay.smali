.class public Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;
.super Ljava/lang/Object;
.source "ContactsPreferencesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ui/ContactsPreferencesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "AccountDisplay"
.end annotation


# instance fields
.field public mName:Ljava/lang/String;

.field public mSyncedGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/ui/ContactsPreferencesActivity$GroupDelta;",
            ">;"
        }
    .end annotation
.end field

.field public mType:Ljava/lang/String;

.field public mUngrouped:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$GroupDelta;

.field public mUnsyncedGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/ui/ContactsPreferencesActivity$GroupDelta;",
            ">;"
        }
    .end annotation
.end field

.field public mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "resolver"
    .parameter "accountName"
    .parameter "accountType"

    .prologue
    const/4 v2, 0x0

    .line 1310
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1301
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;->mVisible:Z

    .line 1303
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    .line 1304
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;->mUnsyncedGroups:Ljava/util/ArrayList;

    .line 1311
    iput-object p2, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;->mName:Ljava/lang/String;

    .line 1312
    iput-object p3, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;->mType:Ljava/lang/String;

    .line 1313
    const-string v3, "deleted  = 0"

    .line 1316
    .local v3, mWhere:Ljava/lang/String;
    sget-object v0, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "account_name"

    invoke-virtual {v0, v4, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "account_type"

    invoke-virtual {v0, v4, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .local v1, groupsUri:Landroid/net/Uri;
    move-object v0, p1

    move-object v4, v2

    move-object v5, v2

    .line 1320
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1322
    .local v9, queryCursor:Landroid/database/Cursor;
    if-nez v9, :cond_0

    .line 1349
    :goto_0
    return-void

    .line 1327
    :cond_0
    invoke-static {v9}, Landroid/provider/ContactsContract$Groups;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v8

    .line 1330
    .local v8, iterator:Landroid/content/EntityIterator;
    const/4 v7, 0x0

    .line 1333
    .local v7, hasGroups:Z
    :goto_1
    :try_start_0
    invoke-interface {v8}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1334
    invoke-interface {v8}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Entity;

    invoke-virtual {v0}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v10

    .line 1335
    .local v10, values:Landroid/content/ContentValues;
    invoke-static {v10}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$GroupDelta;->fromBefore(Landroid/content/ContentValues;)Lcom/android/htccontacts/ui/ContactsPreferencesActivity$GroupDelta;

    move-result-object v6

    .line 1336
    .local v6, group:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$GroupDelta;
    invoke-direct {p0, v6}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;->addGroup(Lcom/android/htccontacts/ui/ContactsPreferencesActivity$GroupDelta;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1347
    .end local v6           #group:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$GroupDelta;
    .end local v10           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/content/EntityIterator;->close()V

    throw v0

    .line 1339
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1340
    const/4 v7, 0x1

    .line 1344
    :cond_2
    invoke-static {p1, p2, p3, v7}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$GroupDelta;->fromSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/htccontacts/ui/ContactsPreferencesActivity$GroupDelta;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;->mUngrouped:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$GroupDelta;

    .line 1345
    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;->mUngrouped:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$GroupDelta;

    invoke-direct {p0, v0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;->addGroup(Lcom/android/htccontacts/ui/ContactsPreferencesActivity$GroupDelta;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1347
    invoke-interface {v8}, Landroid/content/EntityIterator;->close()V

    goto :goto_0
.end method

.method private addGroup(Lcom/android/htccontacts/ui/ContactsPreferencesActivity$GroupDelta;)V
    .locals 1
    .parameter "group"

    .prologue
    .line 1356
    invoke-virtual {p1}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$GroupDelta;->getShouldSync()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1357
    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1361
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
    .line 1408
    .local p1, diff:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v3, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

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

    check-cast v0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$GroupDelta;

    .line 1409
    .local v0, group:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$GroupDelta;
    invoke-virtual {v0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$GroupDelta;->buildDiff()Landroid/content/ContentProviderOperation;

    move-result-object v2

    .line 1410
    .local v2, oper:Landroid/content/ContentProviderOperation;
    if-eqz v2, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1418
    .end local v0           #group:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$GroupDelta;
    .end local v2           #oper:Landroid/content/ContentProviderOperation;
    :cond_1
    return-void
.end method

.method public setShouldSync(Lcom/android/htccontacts/ui/ContactsPreferencesActivity$GroupDelta;Z)V
    .locals 1
    .parameter "child"
    .parameter "shouldSync"

    .prologue
    .line 1378
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;->setShouldSync(Lcom/android/htccontacts/ui/ContactsPreferencesActivity$GroupDelta;ZZ)V

    .line 1379
    return-void
.end method

.method public setShouldSync(Lcom/android/htccontacts/ui/ContactsPreferencesActivity$GroupDelta;ZZ)V
    .locals 2
    .parameter "child"
    .parameter "shouldSync"
    .parameter "attemptRemove"

    .prologue
    .line 1387
    invoke-virtual {p1, p2}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$GroupDelta;->putShouldSync(Z)V

    .line 1388
    if-eqz p2, :cond_2

    .line 1389
    if-eqz p3, :cond_0

    .line 1392
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1393
    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->access$1300()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1401
    :cond_1
    :goto_0
    return-void

    .line 1395
    :cond_2
    if-eqz p3, :cond_1

    .line 1396
    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setShouldSync(Z)V
    .locals 3
    .parameter "shouldSync"

    .prologue
    .line 1368
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;->mUnsyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1370
    .local v1, oppositeChildren:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/htccontacts/ui/ContactsPreferencesActivity$GroupDelta;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1371
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$GroupDelta;

    .line 1372
    .local v0, child:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$GroupDelta;
    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v2}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;->setShouldSync(Lcom/android/htccontacts/ui/ContactsPreferencesActivity$GroupDelta;ZZ)V

    .line 1373
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1368
    .end local v0           #child:Lcom/android/htccontacts/ui/ContactsPreferencesActivity$GroupDelta;
    .end local v1           #oppositeChildren:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/htccontacts/ui/ContactsPreferencesActivity$GroupDelta;>;"
    :cond_0
    iget-object v2, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    goto :goto_0

    .line 1375
    .restart local v1       #oppositeChildren:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/htccontacts/ui/ContactsPreferencesActivity$GroupDelta;>;"
    :cond_1
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .parameter "isVisible"

    .prologue
    .line 1421
    iput-boolean p1, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$AccountDisplay;->mVisible:Z

    .line 1422
    return-void
.end method
