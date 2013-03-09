.class public Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;
.super Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
.source "ContactsSetupWizard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/util/ContactsSetupWizard;
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
    .line 917
    invoke-direct {p0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;-><init>()V

    .line 913
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;->mUngrouped:Z

    .line 918
    return-void
.end method

.method public static fromAfter(Landroid/content/ContentValues;)Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;
    .locals 2
    .parameter "after"

    .prologue
    .line 962
    new-instance v0, Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;

    invoke-direct {v0}, Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;-><init>()V

    .line 963
    .local v0, entry:Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    .line 964
    iput-object p0, v0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    .line 965
    return-object v0
.end method

.method public static fromBefore(Landroid/content/ContentValues;)Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;
    .locals 2
    .parameter "before"

    .prologue
    .line 955
    new-instance v0, Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;

    invoke-direct {v0}, Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;-><init>()V

    .line 956
    .local v0, entry:Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;
    iput-object p0, v0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    .line 957
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iput-object v1, v0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    .line 958
    return-object v0
.end method

.method public static fromSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;
    .locals 8
    .parameter "resolver"
    .parameter "accountName"
    .parameter "accountType"
    .parameter "accountHasGroups"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 926
    sget-object v0, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "account_name"

    invoke-virtual {v0, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "account_type"

    invoke-virtual {v0, v2, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 929
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

    .line 934
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 935
    .local v7, values:Landroid/content/ContentValues;
    const-string v0, "account_name"

    invoke-virtual {v7, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    const-string v0, "account_type"

    invoke-virtual {v7, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 941
    const-string v0, "ungrouped_visible"

    const/4 v2, 0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 942
    invoke-static {v7}, Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;->fromBefore(Landroid/content/ContentValues;)Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;->setUngrouped(Z)Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 950
    if-eqz v6, :cond_0

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 947
    :cond_0
    return-object v0

    .line 946
    :cond_1
    :try_start_1
    const-string v0, "ungrouped_visible"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 947
    invoke-static {v7}, Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;->setUngrouped(Z)Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 950
    if-eqz v6, :cond_0

    goto :goto_0

    .end local v7           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method


# virtual methods
.method public beforeExists()Z
    .locals 1

    .prologue
    .line 976
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
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1034
    invoke-virtual {p0}, Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;->isNoop()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v2

    .line 1056
    :goto_0
    return-object v1

    .line 1036
    :cond_0
    invoke-virtual {p0}, Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;->isUpdate()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1038
    iget-boolean v1, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;->mUngrouped:Z

    if-eqz v1, :cond_1

    sget-object v1, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    :goto_1
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1040
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    iget-boolean v1, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;->mUngrouped:Z

    if-eqz v1, :cond_2

    .line 1041
    const-string v1, "account_name=? AND account_type=?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "account_name"

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "account_type"

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 1049
    :goto_2
    iget-object v1, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 1050
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    goto :goto_0

    .line 1038
    .end local v0           #builder:Landroid/content/ContentProviderOperation$Builder;
    :cond_1
    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    #calls: Lcom/android/htccontacts/util/ContactsSetupWizard;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/htccontacts/util/ContactsSetupWizard;->access$1000(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_1

    .line 1047
    .restart local v0       #builder:Landroid/content/ContentProviderOperation$Builder;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_2

    .line 1051
    .end local v0           #builder:Landroid/content/ContentProviderOperation$Builder;
    :cond_3
    invoke-virtual {p0}, Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;->isInsert()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;->mUngrouped:Z

    if-eqz v1, :cond_4

    .line 1053
    iget-object v1, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    iget-object v2, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mIdColumn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1054
    sget-object v1, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1055
    .restart local v0       #builder:Landroid/content/ContentProviderOperation$Builder;
    iget-object v1, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 1056
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    goto :goto_0

    .line 1058
    .end local v0           #builder:Landroid/content/ContentProviderOperation$Builder;
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected delete or insert"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getShouldSync()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 980
    iget-boolean v0, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;->mUngrouped:Z

    if-eqz v0, :cond_0

    const-string v0, "should_sync"

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;->getAsInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

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
    .line 998
    iget-boolean v2, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;->mUngrouped:Z

    if-eqz v2, :cond_1

    .line 999
    iget-boolean v2, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;->mAccountHasGroups:Z

    if-eqz v2, :cond_0

    .line 1000
    const v2, 0x7f0a002f

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1010
    :goto_0
    return-object v2

    .line 1002
    :cond_0
    const v2, 0x7f0a00ec

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    .line 1005
    :cond_1
    const-string v2, "title_res"

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 1006
    .local v1, titleRes:Ljava/lang/Integer;
    if-eqz v1, :cond_2

    .line 1007
    const-string v2, "res_package"

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1008
    .local v0, packageName:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    .line 1010
    .end local v0           #packageName:Ljava/lang/String;
    :cond_2
    const-string v2, "title"

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getVisible()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 985
    iget-boolean v0, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;->mUngrouped:Z

    if-eqz v0, :cond_0

    const-string v0, "ungrouped_visible"

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;->getAsInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

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
    .line 1020
    invoke-virtual {p0}, Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;->beforeExists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1021
    :cond_0
    const/4 v0, 0x0

    .line 1023
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
    .line 991
    return-void
.end method

.method public putVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 994
    iget-boolean v0, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;->mUngrouped:Z

    if-eqz v0, :cond_0

    const-string v0, "ungrouped_visible"

    move-object v1, v0

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;->put(Ljava/lang/String;I)V

    .line 995
    return-void

    .line 994
    :cond_0
    const-string v0, "group_visible"

    move-object v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected setUngrouped(Z)Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;
    .locals 1
    .parameter "accountHasGroups"

    .prologue
    .line 969
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;->mUngrouped:Z

    .line 970
    iput-boolean p1, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;->mAccountHasGroups:Z

    .line 971
    return-object p0
.end method
