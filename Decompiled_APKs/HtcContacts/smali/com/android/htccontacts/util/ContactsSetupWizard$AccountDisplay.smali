.class public Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;
.super Ljava/lang/Object;
.source "ContactsSetupWizard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/util/ContactsSetupWizard;
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
            "Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;",
            ">;"
        }
    .end annotation
.end field

.field public mType:Ljava/lang/String;

.field public mUngrouped:Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;

.field public mUnsyncedGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;",
            ">;"
        }
    .end annotation
.end field

.field public mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
    .parameter "resolver"
    .parameter "accountName"
    .parameter "accountType"
    .parameter "dataSet"

    .prologue
    .line 1124
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1115
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;->mVisible:Z

    .line 1117
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    .line 1118
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;->mUnsyncedGroups:Ljava/util/ArrayList;

    .line 1125
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;->mName:Ljava/lang/String;

    .line 1126
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;->mType:Ljava/lang/String;

    .line 1127
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;->mDataSet:Ljava/lang/String;

    .line 1128
    const-string v6, "deleted  = 0"

    .line 1131
    .local v6, mWhere:Ljava/lang/String;
    sget-object v3, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v5, "account_name"

    move-object/from16 v0, p2

    invoke-virtual {v3, v5, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v5, "account_type"

    move-object/from16 v0, p3

    invoke-virtual {v3, v5, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v12

    .line 1135
    .local v12, groupsUriBuilder:Landroid/net/Uri$Builder;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;->mDataSet:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1136
    const-string v3, "data_set"

    move-object/from16 v0, p4

    invoke-virtual {v12, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1139
    :cond_0
    invoke-virtual {v12}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 1141
    .local v4, groupsUri:Landroid/net/Uri;
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1144
    .local v10, groupCursor:Landroid/database/Cursor;
    if-nez v10, :cond_1

    .line 1171
    :goto_0
    return-void

    .line 1146
    :cond_1
    invoke-static {v10}, Landroid/provider/ContactsContract$Groups;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v15

    .line 1148
    .local v15, iterator:Landroid/content/EntityIterator;
    const/4 v13, 0x0

    .line 1149
    .local v13, hasGroups:Z
    :try_start_0
    const-string v3, "data_set"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 1151
    .local v14, idx:I
    :goto_1
    invoke-interface {v15}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1152
    invoke-interface {v10, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1153
    .local v11, groupDataSet:Ljava/lang/String;
    invoke-interface {v15}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Entity;

    invoke-virtual {v3}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v16

    .line 1154
    .local v16, values:Landroid/content/ContentValues;
    invoke-static/range {v16 .. v16}, Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;->fromBefore(Landroid/content/ContentValues;)Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;

    move-result-object v9

    .line 1155
    .local v9, group:Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;
    if-eqz v11, :cond_2

    .line 1156
    const-string v3, "data_set"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;->addGroup(Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1169
    .end local v9           #group:Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;
    .end local v11           #groupDataSet:Ljava/lang/String;
    .end local v14           #idx:I
    .end local v16           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    invoke-interface {v15}, Landroid/content/EntityIterator;->close()V

    throw v3

    .line 1161
    .restart local v14       #idx:I
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 1162
    const/4 v13, 0x1

    .line 1166
    :cond_4
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2, v13}, Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;->fromSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;->mUngrouped:Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;

    .line 1167
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;->mUngrouped:Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;->addGroup(Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1169
    invoke-interface {v15}, Landroid/content/EntityIterator;->close()V

    goto :goto_0
.end method

.method private addGroup(Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;)V
    .locals 1
    .parameter "group"

    .prologue
    .line 1178
    invoke-virtual {p1}, Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;->getShouldSync()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1179
    iget-object v0, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1183
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
    .line 1230
    .local p1, diff:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v3, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

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

    check-cast v0, Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;

    .line 1231
    .local v0, group:Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;
    invoke-virtual {v0}, Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;->buildDiff()Landroid/content/ContentProviderOperation;

    move-result-object v2

    .line 1232
    .local v2, oper:Landroid/content/ContentProviderOperation;
    if-eqz v2, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1240
    .end local v0           #group:Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;
    .end local v2           #oper:Landroid/content/ContentProviderOperation;
    :cond_1
    return-void
.end method

.method public setShouldSync(Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;Z)V
    .locals 1
    .parameter "child"
    .parameter "shouldSync"

    .prologue
    .line 1200
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;->setShouldSync(Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;ZZ)V

    .line 1201
    return-void
.end method

.method public setShouldSync(Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;ZZ)V
    .locals 2
    .parameter "child"
    .parameter "shouldSync"
    .parameter "attemptRemove"

    .prologue
    .line 1209
    invoke-virtual {p1, p2}, Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;->putShouldSync(Z)V

    .line 1210
    if-eqz p2, :cond_2

    .line 1211
    if-eqz p3, :cond_0

    .line 1214
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1215
    iget-object v0, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/htccontacts/util/ContactsSetupWizard;->access$1100()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1223
    :cond_1
    :goto_0
    return-void

    .line 1217
    :cond_2
    if-eqz p3, :cond_1

    .line 1218
    iget-object v0, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setShouldSync(Z)V
    .locals 3
    .parameter "shouldSync"

    .prologue
    .line 1190
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;->mUnsyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1192
    .local v1, oppositeChildren:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1193
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;

    .line 1194
    .local v0, child:Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;
    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v2}, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;->setShouldSync(Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;ZZ)V

    .line 1195
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1190
    .end local v0           #child:Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;
    .end local v1           #oppositeChildren:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;>;"
    :cond_0
    iget-object v2, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    goto :goto_0

    .line 1197
    .restart local v1       #oppositeChildren:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/htccontacts/util/ContactsSetupWizard$GroupDelta;>;"
    :cond_1
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .parameter "isVisible"

    .prologue
    .line 1243
    iput-boolean p1, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountDisplay;->mVisible:Z

    .line 1244
    return-void
.end method
