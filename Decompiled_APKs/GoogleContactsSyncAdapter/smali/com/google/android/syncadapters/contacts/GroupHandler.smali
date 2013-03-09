.class Lcom/google/android/syncadapters/contacts/GroupHandler;
.super Ljava/lang/Object;
.source "GroupHandler.java"

# interfaces
.implements Lcom/google/android/syncadapters/EntryAndEntityHandler;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addMembershipSelection(Landroid/content/ContentProviderOperation$Builder;JJ)Landroid/content/ContentProviderOperation$Builder;
    .locals 4
    .parameter "builder"
    .parameter "rawContactId"
    .parameter "groupId"

    .prologue
    .line 397
    const-string v0, "mimetype=\'vnd.android.cursor.item/group_membership\' AND data1=? AND raw_contact_id=?"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 403
    return-object p1
.end method

.method public static getCanonicalGroupSourceId(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "account"
    .parameter "id"

    .prologue
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://www.google.com/m8/feeds/groups/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/base/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getContactsInGroup(Landroid/content/ContentProviderClient;Landroid/net/Uri;JLjava/util/Set;)Ljava/util/Set;
    .locals 8
    .parameter "client"
    .parameter "groupsUri"
    .parameter "group"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentProviderClient;",
            "Landroid/net/Uri;",
            "J",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .local p5, filter:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 366
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v6

    .line 368
    .local v6, contacts:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const-string v3, "mimetype=\'vnd.android.cursor.item/group_membership\' AND data1=?"

    .line 370
    .local v3, selection:Ljava/lang/String;
    if-eqz p5, :cond_0

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND raw_contact_id IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-static {v1, p5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 377
    :cond_0
    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "raw_contact_id"

    aput-object v0, v2, v5

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 384
    .local v7, cursor:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 385
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 388
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 390
    return-object v6
.end method

.method private lookupUnsyncedGroup(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Landroid/content/Entity;
    .locals 9
    .parameter "client"
    .parameter "account"
    .parameter "column"
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentProviderClient;",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/Entity;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .local p5, syncedGroups:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 135
    sget-object v0, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2}, Lcom/google/android/syncadapters/SyncAdapterUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v1

    .line 136
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "=? AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "sourceid"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " IS NULL"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p4, v4, v0

    const-string v5, "_id"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/ContactsContract$Groups;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v7

    .line 140
    .local v7, entityIterator:Landroid/content/EntityIterator;
    :try_start_0
    invoke-interface {v7}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    invoke-interface {v7}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Entity;

    .line 142
    .local v6, entity:Landroid/content/Entity;
    if-eqz p5, :cond_2

    .line 143
    invoke-virtual {v6}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v3, "_id"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 144
    .local v8, id:Ljava/lang/String;
    invoke-interface {p5, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    const-string v0, "ContactsSyncAdapter"

    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    const-string v0, "ContactsSyncAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Entity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " already matched to an entry"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    .end local v6           #entity:Landroid/content/Entity;
    .end local v8           #id:Ljava/lang/String;
    :cond_0
    invoke-interface {v7}, Landroid/content/EntityIterator;->close()V

    .line 158
    :goto_0
    return-object v2

    .line 150
    .restart local v6       #entity:Landroid/content/Entity;
    .restart local v8       #id:Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-interface {p5, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    .end local v8           #id:Ljava/lang/String;
    :cond_2
    invoke-interface {v7}, Landroid/content/EntityIterator;->close()V

    move-object v2, v6

    .line 152
    goto :goto_0

    .line 155
    .end local v6           #entity:Landroid/content/Entity;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/content/EntityIterator;->close()V

    throw v0
.end method

.method private moveContacts(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/net/Uri;JJ)V
    .locals 22
    .parameter "client"
    .parameter "groupsUri"
    .parameter "dataUri"
    .parameter "fromGroup"
    .parameter "toGroup"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 277
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v20

    .line 278
    .local v20, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/16 v21, 0x0

    .line 280
    .local v21, retry:I
    :goto_0
    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-wide/from16 v7, p4

    invoke-direct/range {v4 .. v9}, Lcom/google/android/syncadapters/contacts/GroupHandler;->getContactsInGroup(Landroid/content/ContentProviderClient;Landroid/net/Uri;JLjava/util/Set;)Ljava/util/Set;

    move-result-object v9

    .local v9, members:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-wide/from16 v7, p6

    .line 281
    invoke-direct/range {v4 .. v9}, Lcom/google/android/syncadapters/contacts/GroupHandler;->getContactsInGroup(Landroid/content/ContentProviderClient;Landroid/net/Uri;JLjava/util/Set;)Ljava/util/Set;

    move-result-object v19

    .line 283
    .local v19, membersInBoth:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const-string v4, "ContactsSyncAdapter"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 284
    const-string v4, "ContactsSyncAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Moving "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " contacts from group "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p4

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p6

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    .line 287
    .local v12, id:Ljava/lang/Long;
    const-string v4, "ContactsSyncAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Membership in \'from\': "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 290
    .end local v12           #id:Ljava/lang/Long;
    :cond_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    .line 291
    .restart local v12       #id:Ljava/lang/Long;
    const-string v4, "ContactsSyncAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Membership in both: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 296
    .end local v12           #id:Ljava/lang/Long;
    .end local v18           #i$:Ljava/util/Iterator;
    :cond_1
    const/16 v16, 0x0

    .line 297
    .local v16, count:I
    :try_start_0
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .restart local v18       #i$:Ljava/util/Iterator;
    :cond_2
    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 298
    .local v12, id:J
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 299
    const-string v4, "ContactsSyncAdapter"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 300
    const-string v4, "ContactsSyncAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing contact "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p4

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_3
    invoke-static/range {p3 .. p3}, Landroid/content/ContentProviderOperation;->newAssertQuery(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    move-object/from16 v10, p0

    move-wide/from16 v14, p6

    invoke-direct/range {v10 .. v15}, Lcom/google/android/syncadapters/contacts/GroupHandler;->addMembershipSelection(Landroid/content/ContentProviderOperation$Builder;JJ)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withExpectedCount(I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    invoke-static/range {p3 .. p3}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    move-object/from16 v10, p0

    move-wide/from16 v14, p4

    invoke-direct/range {v10 .. v15}, Lcom/google/android/syncadapters/contacts/GroupHandler;->addMembershipSelection(Landroid/content/ContentProviderOperation$Builder;JJ)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    :goto_4
    add-int/lit8 v16, v16, 0x1

    .line 329
    rem-int/lit8 v4, v16, 0x64

    if-nez v4, :cond_2

    .line 330
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderClient;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 331
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    .line 332
    const-string v4, "ContactsSyncAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Successfully moved "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 352
    .end local v12           #id:J
    .end local v18           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v17

    .line 353
    .local v17, e:Landroid/content/OperationApplicationException;
    add-int/lit8 v21, v21, 0x1

    .line 354
    const/16 v4, 0x14

    move/from16 v0, v21

    if-lt v0, v4, :cond_4

    .line 355
    const-string v4, "ContactsSyncAdapter"

    const-string v5, "Failed to move contacts"

    move-object/from16 v0, v17

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 357
    :cond_4
    const-string v4, "ContactsSyncAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to move contacts - retry="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 358
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 313
    .end local v17           #e:Landroid/content/OperationApplicationException;
    .restart local v12       #id:J
    .restart local v18       #i$:Ljava/util/Iterator;
    :cond_5
    :try_start_1
    const-string v4, "ContactsSyncAdapter"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 314
    const-string v4, "ContactsSyncAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Changing membership of contact "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p6

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_6
    invoke-static/range {p3 .. p3}, Landroid/content/ContentProviderOperation;->newAssertQuery(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    move-object/from16 v10, p0

    move-wide/from16 v14, p6

    invoke-direct/range {v10 .. v15}, Lcom/google/android/syncadapters/contacts/GroupHandler;->addMembershipSelection(Landroid/content/ContentProviderOperation$Builder;JJ)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withExpectedCount(I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    invoke-static/range {p3 .. p3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    move-object/from16 v10, p0

    move-wide/from16 v14, p4

    invoke-direct/range {v10 .. v15}, Lcom/google/android/syncadapters/contacts/GroupHandler;->addMembershipSelection(Landroid/content/ContentProviderOperation$Builder;JJ)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "data1"

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 336
    .end local v12           #id:J
    :cond_7
    const-string v4, "ContactsSyncAdapter"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 337
    const-string v4, "ContactsSyncAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing empty group: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p4

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_8
    invoke-static/range {p3 .. p3}, Landroid/content/ContentProviderOperation;->newAssertQuery(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "mimetype=\'vnd.android.cursor.item/group_membership\' AND data1=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p4 .. p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withExpectedCount(I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    const/4 v4, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    move-wide/from16 v2, p4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->addDeleteOperation(Ljava/util/ArrayList;Landroid/net/Uri;JZ)V

    .line 348
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderClient;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 349
    const-string v4, "ContactsSyncAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Successfully moved "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and removed empty group"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 361
    return-void
.end method

.method private static newGroupValues(Lcom/google/wireless/gdata2/contacts/data/GroupEntry;)Landroid/content/ContentValues;
    .locals 10
    .parameter "entry"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 444
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/GroupEntry;->getSystemGroup()Ljava/lang/String;

    move-result-object v3

    .line 445
    .local v3, systemId:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    move v2, v6

    .line 446
    .local v2, isSystemGroup:Z
    :goto_0
    const-string v8, "Starred in Android"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/GroupEntry;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 447
    .local v0, isFavoritesGroup:Z
    const-string v8, "Contacts"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 448
    .local v1, isMyContactsGroup:Z
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/GroupEntry;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 449
    .local v4, title:Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz v4, :cond_0

    .line 450
    const-string v8, "^System Group: "

    const-string v9, ""

    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 453
    :cond_0
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 454
    .local v5, values:Landroid/content/ContentValues;
    const-string v8, "sourceid"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/GroupEntry;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/syncadapters/contacts/ContactsUtils;->lastItemFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    const-string v8, "system_id"

    invoke-virtual {v5, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    const-string v9, "group_is_read_only"

    if-nez v2, :cond_1

    if-eqz v0, :cond_3

    :cond_1
    move v8, v6

    :goto_1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 457
    const-string v9, "auto_add"

    if-eqz v1, :cond_4

    move v8, v6

    :goto_2
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 458
    const-string v8, "favorites"

    if-eqz v0, :cond_5

    :goto_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 459
    const-string v6, "title"

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const-string v6, "notes"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/GroupEntry;->getContent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    const-string v6, "sync1"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/GroupEntry;->getEditUri()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    const-string v6, "sync2"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/GroupEntry;->getETag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const-string v6, "sync3"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/GroupEntry;->getUpdateDate()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    return-object v5

    .end local v0           #isFavoritesGroup:Z
    .end local v1           #isMyContactsGroup:Z
    .end local v2           #isSystemGroup:Z
    .end local v4           #title:Ljava/lang/String;
    .end local v5           #values:Landroid/content/ContentValues;
    :cond_2
    move v2, v7

    .line 445
    goto/16 :goto_0

    .restart local v0       #isFavoritesGroup:Z
    .restart local v1       #isMyContactsGroup:Z
    .restart local v2       #isSystemGroup:Z
    .restart local v4       #title:Ljava/lang/String;
    .restart local v5       #values:Landroid/content/ContentValues;
    :cond_3
    move v8, v7

    .line 456
    goto :goto_1

    :cond_4
    move v8, v7

    .line 457
    goto :goto_2

    :cond_5
    move v6, v7

    .line 458
    goto :goto_3
.end method


# virtual methods
.method public applyEntryToEntity(Ljava/util/ArrayList;Landroid/accounts/Account;Landroid/content/ContentProviderClient;Ljava/util/Set;Lcom/google/wireless/gdata2/data/Entry;Landroid/content/Entity;ZLandroid/content/SyncResult;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/Object;)V
    .locals 48
    .parameter
    .parameter "account"
    .parameter "client"
    .parameter
    .parameter "entry"
    .parameter "entity"
    .parameter "clearDirtyFlag"
    .parameter "syncResult"
    .parameter "rawContactsUri"
    .parameter "dataUri"
    .parameter "groupsUri"
    .parameter "extra"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/accounts/Account;",
            "Landroid/content/ContentProviderClient;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/wireless/gdata2/data/Entry;",
            "Landroid/content/Entity;",
            "Z",
            "Landroid/content/SyncResult;",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 165
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .local p4, contactsSyncSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v2, "ContactsSyncAdapter"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 166
    const-string v2, "ContactsSyncAdapter"

    const-string v3, "============= applyEntryToEntity ============="

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const-string v2, "ContactsSyncAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "entry is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const-string v2, "ContactsSyncAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "entity is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v25, p12

    .line 174
    check-cast v25, Ljava/util/Set;

    .local v25, matchedEntities:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v42, p5

    .line 176
    check-cast v42, Lcom/google/wireless/gdata2/contacts/data/GroupEntry;

    .line 177
    .local v42, groupEntry:Lcom/google/wireless/gdata2/contacts/data/GroupEntry;
    if-eqz v42, :cond_7

    invoke-virtual/range {v42 .. v42}, Lcom/google/wireless/gdata2/contacts/data/GroupEntry;->getSystemGroup()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    const/16 v46, 0x1

    .line 180
    .local v46, isSystemGroup:Z
    :goto_0
    if-eqz v42, :cond_1

    invoke-virtual/range {v42 .. v42}, Lcom/google/wireless/gdata2/contacts/data/GroupEntry;->isDeleted()Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_1
    const/16 v44, 0x1

    .line 181
    .local v44, isDelete:Z
    :goto_1
    if-eqz v44, :cond_9

    const/16 v28, 0x0

    .line 183
    .local v28, groupValuesServer:Landroid/content/ContentValues;
    :goto_2
    if-nez v44, :cond_3

    if-eqz p6, :cond_3

    .line 185
    invoke-virtual/range {p6 .. p6}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v41

    .line 187
    .local v41, entityValues:Landroid/content/ContentValues;
    const-string v2, "title"

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v2, "system_id"

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 191
    const-string v2, "title"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 193
    .local v11, title:Ljava/lang/String;
    const-string v2, "system_id"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 195
    .local v6, systemId:Ljava/lang/String;
    const-string v2, "Contacts"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 196
    const-string v5, "system_id"

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/google/android/syncadapters/contacts/GroupHandler;->lookupUnsyncedGroup(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Landroid/content/Entity;

    move-result-object v47

    .line 203
    .local v47, merge:Landroid/content/Entity;
    :goto_3
    if-eqz v47, :cond_3

    .line 205
    invoke-virtual/range {v47 .. v47}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 206
    .local v16, fromGroup:J
    const-string v2, "_id"

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 207
    .local v18, toGroup:J
    const-string v2, "ContactsSyncAdapter"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 208
    const-string v2, "ContactsSyncAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Need to merge a local \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' group"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object/from16 v12, p0

    move-object/from16 v13, p3

    move-object/from16 v14, p11

    move-object/from16 v15, p10

    .line 210
    invoke-direct/range {v12 .. v19}, Lcom/google/android/syncadapters/contacts/GroupHandler;->moveContacts(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/net/Uri;JJ)V

    .line 215
    .end local v6           #systemId:Ljava/lang/String;
    .end local v11           #title:Ljava/lang/String;
    .end local v16           #fromGroup:J
    .end local v18           #toGroup:J
    .end local v41           #entityValues:Landroid/content/ContentValues;
    .end local v47           #merge:Landroid/content/Entity;
    :cond_3
    if-eqz v46, :cond_4

    if-nez v44, :cond_4

    if-nez p6, :cond_4

    .line 216
    const-string v23, "system_id"

    const-string v2, "system_id"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v20, p0

    move-object/from16 v21, p3

    move-object/from16 v22, p2

    invoke-direct/range {v20 .. v25}, Lcom/google/android/syncadapters/contacts/GroupHandler;->lookupUnsyncedGroup(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Landroid/content/Entity;

    move-result-object p6

    .line 220
    :cond_4
    if-nez v44, :cond_5

    if-nez p6, :cond_5

    .line 221
    const-string v2, "title"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 222
    .restart local v11       #title:Ljava/lang/String;
    const-string v2, "Starred in Android"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 223
    const-string v10, "title"

    move-object/from16 v7, p0

    move-object/from16 v8, p3

    move-object/from16 v9, p2

    move-object/from16 v12, v25

    invoke-direct/range {v7 .. v12}, Lcom/google/android/syncadapters/contacts/GroupHandler;->lookupUnsyncedGroup(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Landroid/content/Entity;

    move-result-object p6

    .line 227
    .end local v11           #title:Ljava/lang/String;
    :cond_5
    if-nez v44, :cond_c

    if-nez p6, :cond_c

    const/16 v45, 0x1

    .line 229
    .local v45, isInsert:Z
    :goto_4
    if-eqz v44, :cond_d

    .line 230
    if-eqz p6, :cond_6

    .line 231
    invoke-virtual/range {p6 .. p6}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v4, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p11

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->addDeleteOperation(Ljava/util/ArrayList;Landroid/net/Uri;JZ)V

    .line 233
    move-object/from16 v0, p8

    iget-object v2, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v3, v2, Landroid/content/SyncStats;->numDeletes:J

    const-wide/16 v7, 0x1

    add-long/2addr v3, v7

    iput-wide v3, v2, Landroid/content/SyncStats;->numDeletes:J

    .line 269
    :cond_6
    :goto_5
    return-void

    .line 177
    .end local v28           #groupValuesServer:Landroid/content/ContentValues;
    .end local v44           #isDelete:Z
    .end local v45           #isInsert:Z
    .end local v46           #isSystemGroup:Z
    :cond_7
    const/16 v46, 0x0

    goto/16 :goto_0

    .line 180
    .restart local v46       #isSystemGroup:Z
    :cond_8
    const/16 v44, 0x0

    goto/16 :goto_1

    .line 181
    .restart local v44       #isDelete:Z
    :cond_9
    invoke-static/range {v42 .. v42}, Lcom/google/android/syncadapters/contacts/GroupHandler;->newGroupValues(Lcom/google/wireless/gdata2/contacts/data/GroupEntry;)Landroid/content/ContentValues;

    move-result-object v28

    goto/16 :goto_2

    .line 198
    .restart local v6       #systemId:Ljava/lang/String;
    .restart local v11       #title:Ljava/lang/String;
    .restart local v28       #groupValuesServer:Landroid/content/ContentValues;
    .restart local v41       #entityValues:Landroid/content/ContentValues;
    :cond_a
    const-string v2, "Starred in Android"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 199
    const-string v10, "title"

    const/4 v12, 0x0

    move-object/from16 v7, p0

    move-object/from16 v8, p3

    move-object/from16 v9, p2

    invoke-direct/range {v7 .. v12}, Lcom/google/android/syncadapters/contacts/GroupHandler;->lookupUnsyncedGroup(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Landroid/content/Entity;

    move-result-object v47

    .restart local v47       #merge:Landroid/content/Entity;
    goto/16 :goto_3

    .line 201
    .end local v47           #merge:Landroid/content/Entity;
    :cond_b
    const/16 v47, 0x0

    .restart local v47       #merge:Landroid/content/Entity;
    goto/16 :goto_3

    .line 227
    .end local v6           #systemId:Ljava/lang/String;
    .end local v11           #title:Ljava/lang/String;
    .end local v41           #entityValues:Landroid/content/ContentValues;
    .end local v47           #merge:Landroid/content/Entity;
    :cond_c
    const/16 v45, 0x0

    goto :goto_4

    .line 240
    .restart local v45       #isInsert:Z
    :cond_d
    if-eqz v45, :cond_e

    .line 241
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/syncadapters/contacts/GroupHandler;->getSourceIdColumnName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sourceid"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p11

    invoke-static {v0, v2, v3}, Lcom/google/android/syncadapters/contacts/ContactsUtils;->newEntityDoesNotExistAssert(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    .line 245
    .local v39, groupBackRef:Ljava/lang/Integer;
    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x1

    move-object/from16 v26, p1

    move-object/from16 v27, p11

    invoke-static/range {v26 .. v31}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->addInsertOperation(Ljava/util/ArrayList;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Long;Ljava/lang/Integer;Z)V

    .line 247
    const/16 v38, 0x0

    .line 248
    .local v38, entityId:Ljava/lang/Long;
    move-object/from16 v0, p8

    iget-object v2, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v3, v2, Landroid/content/SyncStats;->numInserts:J

    const-wide/16 v7, 0x1

    add-long/2addr v3, v7

    iput-wide v3, v2, Landroid/content/SyncStats;->numInserts:J

    .line 261
    :goto_6
    if-eqz p7, :cond_6

    .line 262
    new-instance v37, Landroid/content/ContentValues;

    invoke-direct/range {v37 .. v37}, Landroid/content/ContentValues;-><init>()V

    .line 263
    .local v37, syncDirtyValues:Landroid/content/ContentValues;
    const-string v2, "dirty"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v37

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 264
    const/16 v40, 0x0

    move-object/from16 v35, p1

    move-object/from16 v36, p11

    invoke-static/range {v35 .. v40}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->addUpdateOperation(Ljava/util/ArrayList;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Long;Ljava/lang/Integer;Z)V

    .line 266
    move-object/from16 v0, p8

    iget-object v2, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v3, v2, Landroid/content/SyncStats;->numUpdates:J

    const-wide/16 v7, 0x1

    add-long/2addr v3, v7

    iput-wide v3, v2, Landroid/content/SyncStats;->numUpdates:J

    goto/16 :goto_5

    .line 250
    .end local v37           #syncDirtyValues:Landroid/content/ContentValues;
    .end local v38           #entityId:Ljava/lang/Long;
    .end local v39           #groupBackRef:Ljava/lang/Integer;
    :cond_e
    invoke-virtual/range {p6 .. p6}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v43

    .line 251
    .local v43, groupsValuesExisting:Landroid/content/ContentValues;
    const/16 v39, 0x0

    .line 252
    .restart local v39       #groupBackRef:Ljava/lang/Integer;
    const-string v2, "_id"

    move-object/from16 v0, v43

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v38

    .line 253
    .restart local v38       #entityId:Ljava/lang/Long;
    invoke-virtual/range {p6 .. p6}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "version"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v33

    .line 254
    .local v33, version:J
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Long;->longValue()J

    move-result-wide v30

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/syncadapters/contacts/GroupHandler;->getVersionColumnName()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v29, p11

    invoke-static/range {v29 .. v34}, Lcom/google/android/syncadapters/contacts/ContactsUtils;->newEntityVersionMatchesAssert(Landroid/net/Uri;JLjava/lang/String;J)Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    const/16 v30, 0x0

    const/16 v31, 0x1

    move-object/from16 v26, p1

    move-object/from16 v27, p11

    move-object/from16 v29, v38

    invoke-static/range {v26 .. v31}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->addUpdateOperation(Ljava/util/ArrayList;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Long;Ljava/lang/Integer;Z)V

    .line 258
    move-object/from16 v0, p8

    iget-object v2, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v3, v2, Landroid/content/SyncStats;->numUpdates:J

    const-wide/16 v7, 0x1

    add-long/2addr v3, v7

    iput-wide v3, v2, Landroid/content/SyncStats;->numUpdates:J

    goto :goto_6
.end method

.method public convertEntityToEntry(Landroid/content/Entity;Landroid/accounts/Account;Landroid/content/ContentProviderClient;Z)Lcom/google/wireless/gdata2/data/Entry;
    .locals 6
    .parameter "entity"
    .parameter "account"
    .parameter "client"
    .parameter "validate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 408
    new-instance v1, Lcom/google/wireless/gdata2/contacts/data/GroupEntry;

    invoke-direct {v1}, Lcom/google/wireless/gdata2/contacts/data/GroupEntry;-><init>()V

    .line 409
    .local v1, entry:Lcom/google/wireless/gdata2/contacts/data/GroupEntry;
    invoke-virtual {p1}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v0

    .line 410
    .local v0, entityValues:Landroid/content/ContentValues;
    const-string v2, "sourceid"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 411
    const-string v2, "sourceid"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/google/android/syncadapters/contacts/GroupHandler;->getCanonicalGroupSourceId(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/contacts/data/GroupEntry;->setId(Ljava/lang/String;)V

    .line 414
    :cond_0
    const-string v2, "title"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/contacts/data/GroupEntry;->setTitle(Ljava/lang/String;)V

    .line 415
    const-string v2, "notes"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/contacts/data/GroupEntry;->setContent(Ljava/lang/String;)V

    .line 416
    const-string v2, "system_id"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/contacts/data/GroupEntry;->setSystemGroup(Ljava/lang/String;)V

    .line 417
    const-string v2, "sync1"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/contacts/data/GroupEntry;->setEditUri(Ljava/lang/String;)V

    .line 418
    const-string v2, "sync2"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/contacts/data/GroupEntry;->setETag(Ljava/lang/String;)V

    .line 419
    const-string v2, "deleted"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/contacts/data/GroupEntry;->setDeleted(Z)V

    .line 421
    invoke-virtual {v1}, Lcom/google/wireless/gdata2/contacts/data/GroupEntry;->getSystemGroup()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/contacts/data/GroupEntry;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/contacts/data/GroupEntry;->getTitle()Ljava/lang/String;

    move-result-object v2

    const-string v3, "System Group: "

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 423
    new-instance v2, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v3, "since this is a system group we need to get it from the server"

    invoke-direct {v2, v3}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 419
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 427
    :cond_2
    if-eqz p4, :cond_4

    .line 428
    invoke-virtual {v1}, Lcom/google/wireless/gdata2/contacts/data/GroupEntry;->getSystemGroup()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 429
    new-instance v2, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v3, "never update system groups"

    invoke-direct {v2, v3}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 432
    :cond_3
    invoke-virtual {v1}, Lcom/google/wireless/gdata2/contacts/data/GroupEntry;->isDeleted()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/contacts/data/GroupEntry;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/contacts/data/GroupEntry;->getContent()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/contacts/data/GroupEntry;->getSystemGroup()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    .line 436
    new-instance v2, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v3, "empty group"

    invoke-direct {v2, v3}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 440
    :cond_4
    return-object v1
.end method

.method public getDeletedColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const-string v0, "deleted"

    return-object v0
.end method

.method public getDirtyColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    const-string v0, "dirty"

    return-object v0
.end method

.method public getEditUriColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const-string v0, "sync1"

    return-object v0
.end method

.method public getEntityUri(Landroid/accounts/Account;)Landroid/net/Uri;
    .locals 1
    .parameter "account"

    .prologue
    .line 116
    sget-object v0, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Lcom/google/android/syncadapters/SyncAdapterUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getEntryClass()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 102
    const-class v0, Lcom/google/wireless/gdata2/contacts/data/GroupEntry;

    return-object v0
.end method

.method public getEtagColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    const-string v0, "sync2"

    return-object v0
.end method

.method public getFeedForAccount(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 3
    .parameter "account"

    .prologue
    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://www.google.com/m8/feeds/groups/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/base2_property-android"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, url:Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/google/android/syncadapters/SyncAdapterUtils;->rewriteUrlForAccount(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSourceIdColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    const-string v0, "sourceid"

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    const-string v0, "groups"

    return-object v0
.end method

.method public getVersionColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    const-string v0, "version"

    return-object v0
.end method

.method public idToSourceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "id"

    .prologue
    .line 98
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public newEntityIterator(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Ljava/lang/Long;Ljava/lang/String;[Ljava/lang/String;)Landroid/content/EntityIterator;
    .locals 6
    .parameter "provider"
    .parameter "account"
    .parameter "id"
    .parameter "selection"
    .parameter "selectionArgs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 121
    sget-object v0, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2}, Lcom/google/android/syncadapters/SyncAdapterUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    move-object v0, p1

    move-object v3, p4

    move-object v4, p5

    move-object v5, v2

    .line 122
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/ContactsContract$Groups;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v0

    return-object v0
.end method
