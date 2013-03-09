.class public Lcom/android/common/contacts/DataUsageStatUpdater;
.super Ljava/lang/Object;
.source "DataUsageStatUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/contacts/DataUsageStatUpdater$DataUsageFeedback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/android/common/contacts/DataUsageStatUpdater;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/common/contacts/DataUsageStatUpdater;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/contacts/DataUsageStatUpdater;->mResolver:Landroid/content/ContentResolver;

    .line 69
    return-void
.end method

.method private update(Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/String;)Z
    .locals 16
    .parameter
    .parameter
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 199
    .local p1, contactIds:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    .local p2, dataIds:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 201
    .local v3, currentTimeMillis:J
    const/4 v7, 0x0

    .line 205
    .local v7, successful:Z
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0xe

    if-lt v12, v13, :cond_3

    .line 206
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 207
    sget-object v12, Lcom/android/common/contacts/DataUsageStatUpdater;->TAG:Ljava/lang/String;

    const/4 v13, 0x3

    invoke-static {v12, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 208
    sget-object v12, Lcom/android/common/contacts/DataUsageStatUpdater;->TAG:Ljava/lang/String;

    const-string v13, "Given list for data IDs is null. Ignoring."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_0
    :goto_0
    return v7

    .line 211
    :cond_1
    invoke-static {}, Lcom/android/common/contacts/DataUsageStatUpdater$DataUsageFeedback;->access$000()Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v12

    const-string v13, ","

    move-object/from16 v0, p2

    invoke-static {v13, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v12

    const-string v13, "type"

    move-object/from16 v0, p3

    invoke-virtual {v12, v13, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    .line 215
    .local v8, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/common/contacts/DataUsageStatUpdater;->mResolver:Landroid/content/ContentResolver;

    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v8, v13, v14, v15}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    if-lez v12, :cond_2

    .line 216
    const/4 v7, 0x1

    goto :goto_0

    .line 218
    :cond_2
    sget-object v12, Lcom/android/common/contacts/DataUsageStatUpdater;->TAG:Ljava/lang/String;

    const/4 v13, 0x3

    invoke-static {v12, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 219
    sget-object v12, Lcom/android/common/contacts/DataUsageStatUpdater;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "update toward data rows "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " failed"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 225
    .end local v8           #uri:Landroid/net/Uri;
    :cond_3
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 226
    sget-object v12, Lcom/android/common/contacts/DataUsageStatUpdater;->TAG:Ljava/lang/String;

    const/4 v13, 0x3

    invoke-static {v12, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 227
    sget-object v12, Lcom/android/common/contacts/DataUsageStatUpdater;->TAG:Ljava/lang/String;

    const-string v13, "Given list for contact IDs is null. Ignoring."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 230
    :cond_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    .local v11, whereBuilder:Ljava/lang/StringBuilder;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v10, whereArgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v12

    new-array v6, v12, [Ljava/lang/String;

    .line 233
    .local v6, questionMarks:[Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 234
    .local v1, contactId:J
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 236
    .end local v1           #contactId:J
    :cond_5
    const-string v12, "?"

    invoke-static {v6, v12}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 237
    const-string v12, "_id IN ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-static {v13, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    sget-object v12, Lcom/android/common/contacts/DataUsageStatUpdater;->TAG:Ljava/lang/String;

    const/4 v13, 0x3

    invoke-static {v12, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 242
    sget-object v12, Lcom/android/common/contacts/DataUsageStatUpdater;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "contactId where: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    sget-object v12, Lcom/android/common/contacts/DataUsageStatUpdater;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "contactId selection: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_6
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 247
    .local v9, values:Landroid/content/ContentValues;
    const-string v12, "last_time_contacted"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 248
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/common/contacts/DataUsageStatUpdater;->mResolver:Landroid/content/ContentResolver;

    sget-object v14, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/String;

    invoke-virtual {v13, v14, v9, v15, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    if-lez v12, :cond_7

    .line 250
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 252
    :cond_7
    sget-object v12, Lcom/android/common/contacts/DataUsageStatUpdater;->TAG:Ljava/lang/String;

    const/4 v13, 0x3

    invoke-static {v12, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 253
    sget-object v12, Lcom/android/common/contacts/DataUsageStatUpdater;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "update toward raw contacts "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " failed"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public updateWithAddress(Ljava/util/Collection;)Z
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, addresses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v4, 0x1

    const/4 v12, 0x0

    .line 106
    sget-object v0, Lcom/android/common/contacts/DataUsageStatUpdater;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    sget-object v0, Lcom/android/common/contacts/DataUsageStatUpdater;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateWithAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v10, whereArgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .local v11, whereBuilder:Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v9, v0, [Ljava/lang/String;

    .line 114
    .local v9, questionMarks:[Ljava/lang/String;
    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 115
    const-string v0, "?"

    invoke-static {v9, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 117
    const-string v0, "data1 IN ("

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-static {v1, v9}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget-object v0, p0, Lcom/android/common/contacts/DataUsageStatUpdater;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "contact_id"

    aput-object v3, v2, v12

    const-string v3, "_id"

    aput-object v3, v2, v4

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v12, [Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 124
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_2

    .line 125
    sget-object v0, Lcom/android/common/contacts/DataUsageStatUpdater;->TAG:Ljava/lang/String;

    const-string v1, "Cursor for Email.CONTENT_URI became null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v9           #questionMarks:[Ljava/lang/String;
    .end local v10           #whereArgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11           #whereBuilder:Ljava/lang/StringBuilder;
    :cond_1
    move v0, v12

    .line 142
    :goto_0
    return v0

    .line 127
    .restart local v7       #cursor:Landroid/database/Cursor;
    .restart local v9       #questionMarks:[Ljava/lang/String;
    .restart local v10       #whereArgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11       #whereBuilder:Ljava/lang/StringBuilder;
    :cond_2
    new-instance v6, Ljava/util/HashSet;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v6, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 128
    .local v6, contactIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v8, Ljava/util/HashSet;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v8, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 130
    .local v8, dataIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v0, -0x1

    :try_start_0
    invoke-interface {v7, v0}, Landroid/database/Cursor;->move(I)Z

    .line 131
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 132
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 133
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 136
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 138
    const-string v0, "long_text"

    invoke-direct {p0, v6, v8, v0}, Lcom/android/common/contacts/DataUsageStatUpdater;->update(Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public updateWithPhoneNumber(Ljava/util/Collection;)Z
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, numbers:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v4, 0x1

    const/4 v12, 0x0

    .line 156
    sget-object v0, Lcom/android/common/contacts/DataUsageStatUpdater;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    sget-object v0, Lcom/android/common/contacts/DataUsageStatUpdater;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateWithPhoneNumber: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 160
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v10, whereArgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .local v11, whereBuilder:Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v9, v0, [Ljava/lang/String;

    .line 164
    .local v9, questionMarks:[Ljava/lang/String;
    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 165
    const-string v0, "?"

    invoke-static {v9, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 167
    const-string v0, "data1 IN ("

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-static {v1, v9}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    iget-object v0, p0, Lcom/android/common/contacts/DataUsageStatUpdater;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "contact_id"

    aput-object v3, v2, v12

    const-string v3, "_id"

    aput-object v3, v2, v4

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v12, [Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 174
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_2

    .line 175
    sget-object v0, Lcom/android/common/contacts/DataUsageStatUpdater;->TAG:Ljava/lang/String;

    const-string v1, "Cursor for Phone.CONTENT_URI became null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v9           #questionMarks:[Ljava/lang/String;
    .end local v10           #whereArgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11           #whereBuilder:Ljava/lang/StringBuilder;
    :cond_1
    move v0, v12

    .line 191
    :goto_0
    return v0

    .line 177
    .restart local v7       #cursor:Landroid/database/Cursor;
    .restart local v9       #questionMarks:[Ljava/lang/String;
    .restart local v10       #whereArgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11       #whereBuilder:Ljava/lang/StringBuilder;
    :cond_2
    new-instance v6, Ljava/util/HashSet;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v6, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 178
    .local v6, contactIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v8, Ljava/util/HashSet;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v8, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 180
    .local v8, dataIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v0, -0x1

    :try_start_0
    invoke-interface {v7, v0}, Landroid/database/Cursor;->move(I)Z

    .line 181
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 182
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 183
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 186
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 188
    const-string v0, "short_text"

    invoke-direct {p0, v6, v8, v0}, Lcom/android/common/contacts/DataUsageStatUpdater;->update(Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public updateWithRfc822Address(Ljava/util/Collection;)Z
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, texts:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/CharSequence;>;"
    if-nez p1, :cond_0

    .line 82
    const/4 v8, 0x0

    .line 91
    :goto_0
    return v8

    .line 84
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 85
    .local v0, addresses:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    .line 86
    .local v5, text:Ljava/lang/CharSequence;
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v7

    .line 87
    .local v7, tokens:[Landroid/text/util/Rfc822Token;
    move-object v1, v7

    .local v1, arr$:[Landroid/text/util/Rfc822Token;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v6, v1, v3

    .line 88
    .local v6, token:Landroid/text/util/Rfc822Token;
    invoke-virtual {v6}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 87
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 91
    .end local v1           #arr$:[Landroid/text/util/Rfc822Token;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #text:Ljava/lang/CharSequence;
    .end local v6           #token:Landroid/text/util/Rfc822Token;
    .end local v7           #tokens:[Landroid/text/util/Rfc822Token;
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/common/contacts/DataUsageStatUpdater;->updateWithAddress(Ljava/util/Collection;)Z

    move-result v8

    goto :goto_0
.end method
