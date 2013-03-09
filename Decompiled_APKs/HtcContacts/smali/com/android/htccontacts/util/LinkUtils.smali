.class public final Lcom/android/htccontacts/util/LinkUtils;
.super Ljava/lang/Object;
.source "LinkUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/util/LinkUtils$ReturnSuggests;
    }
.end annotation


# static fields
.field public static final MANAUL_LINE_COUNT_LIMIT:I = 0x32

.field public static final MAX_SUGGESTION_COUNT:I = 0x5

.field public static final NOTIFICATION_FOUND_SUGGEST_ID:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LinkUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 338
    return-void
.end method

.method public static getAccoutTypeLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "accountType"
    .parameter "dataSet"

    .prologue
    .line 85
    invoke-static {p0, p1, p2}, Lcom/android/htccontacts/util/ContactsUtils;->showAccountLabelForListView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getContactUriFromLookUp(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 5
    .parameter "context"
    .parameter "mLookupUri"

    .prologue
    .line 321
    const/4 v0, 0x0

    .line 322
    .local v0, contactUri:Landroid/net/Uri;
    if-eqz p1, :cond_0

    .line 324
    :try_start_0
    const-string v2, "LinkUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " 1 mLookupUri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 326
    const-string v2, "LinkUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " 2 mLookupUri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    if-eqz p1, :cond_0

    .line 328
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 329
    const-string v2, "LinkUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mUri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :cond_0
    :goto_0
    return-object v0

    .line 331
    :catch_0
    move-exception v1

    .line 332
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "LinkUtils"

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getJoinSuggestionsUri(Ljava/lang/String;J)Landroid/net/Uri;
    .locals 2
    .parameter "filter"
    .parameter "contact_id"

    .prologue
    .line 116
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 117
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 118
    const-string v1, "suggest_filter"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 120
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 121
    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 125
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static getRawContactsPhotoId(Landroid/content/Context;J)J
    .locals 8
    .parameter "context"
    .parameter "raw_contact_id"

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "raw_contact_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mimetype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "vnd.android.cursor.item/photo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 197
    .local v3, selection:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v2, v7

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 198
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 200
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 203
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 206
    :goto_0
    return-wide v0

    .line 203
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 206
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static isSNContacts(Ljava/lang/String;)Z
    .locals 2
    .parameter "accountType"

    .prologue
    const/4 v0, 0x0

    .line 89
    if-nez p0, :cond_1

    .line 97
    :cond_0
    :goto_0
    return v0

    .line 91
    :cond_1
    const-string v1, "com.htc.socialnetwork.facebook"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.htc.socialnetwork.flickr"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.htc.htctwitter"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.htc.socialnetwork.plurk"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static replaceContactPhotoForContact(Landroid/content/Context;Landroid/graphics/Bitmap;J)V
    .locals 34
    .parameter "context"
    .parameter "photo"
    .parameter "contact_id"

    .prologue
    .line 211
    const-wide/16 v29, 0x0

    .line 212
    .local v29, photo_id:J
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .local v28, mNeedUpdateIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .local v27, mNeedCreateIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-string v3, "content://com.android.contacts/raw_contacts/raw"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 216
    .local v4, queryUri:Landroid/net/Uri;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contact_id = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 217
    .local v6, whereClause:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_id"

    aput-object v8, v5, v7

    const/4 v7, 0x1

    const-string v8, "account_type"

    aput-object v8, v5, v7

    const/4 v7, 0x2

    const-string v8, "data_set"

    aput-object v8, v5, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 219
    .local v16, c:Landroid/database/Cursor;
    invoke-static/range {p0 .. p0}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v14

    .line 220
    .local v14, atm:Lcom/android/htccontacts/model/AccountTypeManager;
    if-eqz v16, :cond_6

    .line 221
    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 222
    const/4 v6, 0x0

    .line 223
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    .line 224
    .local v25, id:J
    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 225
    .local v13, accountType:Ljava/lang/String;
    const/4 v3, 0x2

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 226
    .local v21, dataSet:Ljava/lang/String;
    if-eqz v14, :cond_0

    move-object/from16 v0, v21

    invoke-virtual {v14, v13, v0}, Lcom/android/htccontacts/model/AccountTypeManager;->isEditableAccount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 227
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "raw_contact_id = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v25

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " AND "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "mimetype"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " = \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "vnd.android.cursor.item/photo"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 229
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v9, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v9, v3

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v10, v6

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 231
    .local v17, cd:Landroid/database/Cursor;
    if-eqz v17, :cond_4

    .line 232
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 233
    :cond_1
    :goto_1
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 234
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 235
    .local v22, data_id:J
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 236
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 239
    .end local v22           #data_id:J
    :cond_2
    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 240
    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    :cond_3
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 244
    :cond_4
    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 245
    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 249
    .end local v13           #accountType:Ljava/lang/String;
    .end local v17           #cd:Landroid/database/Cursor;
    .end local v21           #dataSet:Ljava/lang/String;
    .end local v25           #id:J
    :cond_5
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 253
    :cond_6
    const/16 v18, 0x0

    .line 254
    .local v18, count:I
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    .local v31, updateString:Ljava/lang/StringBuilder;
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_8

    .line 256
    const-string v3, "_id IN("

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    .line 258
    .local v19, dataId:J
    move-object/from16 v0, v31

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 259
    const/16 v3, 0x2c

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 261
    .end local v19           #dataId:J
    :cond_7
    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 262
    const-string v3, ")"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    new-instance v33, Landroid/content/ContentValues;

    const/4 v3, 0x2

    move-object/from16 v0, v33

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 265
    .local v33, values:Landroid/content/ContentValues;
    const-string v3, "data15"

    sget v5, Lcom/htc/util/contacts/PhotoUtils;->JPEG_QUALITY_50:I

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/htc/util/contacts/PhotoUtils;->getBitmapByteArray(Landroid/graphics/Bitmap;I)[B

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 266
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v3, v5, v0, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v18

    .line 269
    .end local v24           #i$:Ljava/util/Iterator;
    .end local v33           #values:Landroid/content/ContentValues;
    :cond_8
    const-wide/16 v22, 0x0

    .line 270
    .restart local v22       #data_id:J
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .restart local v24       #i$:Ljava/util/Iterator;
    :cond_9
    :goto_3
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    .line 271
    .restart local v25       #id:J
    new-instance v33, Landroid/content/ContentValues;

    const/4 v3, 0x3

    move-object/from16 v0, v33

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 272
    .restart local v33       #values:Landroid/content/ContentValues;
    const-string v3, "raw_contact_id"

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 273
    const-string v3, "mimetype"

    const-string v5, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v3, "data15"

    sget v5, Lcom/htc/util/contacts/PhotoUtils;->JPEG_QUALITY_50:I

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/htc/util/contacts/PhotoUtils;->getBitmapByteArray(Landroid/graphics/Bitmap;I)[B

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 275
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v33

    invoke-virtual {v3, v5, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v32

    .line 276
    .local v32, uri:Landroid/net/Uri;
    const-wide/16 v7, 0x0

    cmp-long v3, v22, v7

    if-gtz v3, :cond_9

    .line 277
    invoke-static/range {v32 .. v32}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v22

    goto :goto_3

    .line 281
    .end local v25           #id:J
    .end local v32           #uri:Landroid/net/Uri;
    .end local v33           #values:Landroid/content/ContentValues;
    :cond_a
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_d

    if-lez v18, :cond_d

    .line 282
    const/4 v3, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v29

    .line 286
    :cond_b
    :goto_4
    const-wide/16 v7, 0x0

    cmp-long v3, v29, v7

    if-lez v3, :cond_c

    .line 287
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v15

    .line 288
    .local v15, builder:Landroid/net/Uri$Builder;
    const-string v3, "contacts_info"

    invoke-virtual {v15, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 290
    new-instance v33, Landroid/content/ContentValues;

    const/4 v3, 0x1

    move-object/from16 v0, v33

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 291
    .restart local v33       #values:Landroid/content/ContentValues;
    const-string v3, "photo_id"

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 293
    invoke-virtual {v15}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v32

    .line 294
    .restart local v32       #uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v3, v0, v1, v5, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 296
    .end local v15           #builder:Landroid/net/Uri$Builder;
    .end local v32           #uri:Landroid/net/Uri;
    .end local v33           #values:Landroid/content/ContentValues;
    :cond_c
    return-void

    .line 283
    :cond_d
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_b

    const-wide/16 v7, 0x0

    cmp-long v3, v22, v7

    if-lez v3, :cond_b

    .line 284
    move-wide/from16 v29, v22

    goto :goto_4
.end method

.method public static returnSuggestList(Landroid/content/Context;)Lcom/android/htccontacts/util/LinkUtils$ReturnSuggests;
    .locals 21
    .parameter "context"

    .prologue
    .line 352
    new-instance v18, Lcom/android/htccontacts/util/LinkUtils$ReturnSuggests;

    invoke-direct/range {v18 .. v18}, Lcom/android/htccontacts/util/LinkUtils$ReturnSuggests;-><init>()V

    .line 354
    .local v18, obj:Lcom/android/htccontacts/util/LinkUtils$ReturnSuggests;
    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "raw_contacts1.contact_id"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "raw_contacts2.contact_id"

    aput-object v2, v3, v1

    .line 359
    .local v3, COLUMNS:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 360
    .local v7, RAW_CONTACT_ID1:I
    const/4 v8, 0x1

    .line 363
    .local v8, RAW_CONTACT_ID2:I
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 365
    .local v14, contactsHasSuggestHashSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/htc/provider/HtcContactsContract$Suggestion;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 367
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_6

    .line 368
    const-wide/16 v19, 0x0

    .line 369
    .local v19, pre_id:J
    const-wide/16 v15, 0x0

    .line 370
    .local v15, cur_id:J
    const/16 v17, 0x0

    .line 371
    .local v17, limit_count:I
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 373
    invoke-interface {v9, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 374
    .local v10, contactId1:J
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 376
    .local v12, contactId2:J
    move-wide v15, v10

    .line 378
    cmp-long v1, v19, v15

    if-eqz v1, :cond_1

    .line 379
    const-wide/16 v1, 0x0

    cmp-long v1, v19, v1

    if-eqz v1, :cond_0

    .line 380
    move-object/from16 v0, v18

    iget-object v1, v0, Lcom/android/htccontacts/util/LinkUtils$ReturnSuggests;->mContactsHasSuggest:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 382
    const/16 v17, 0x0

    .line 385
    :cond_0
    long-to-int v1, v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 387
    move-object/from16 v0, v18

    iget-object v1, v0, Lcom/android/htccontacts/util/LinkUtils$ReturnSuggests;->mContactsHasSuggest:Ljava/util/ArrayList;

    long-to-int v2, v10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    long-to-int v1, v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 396
    :cond_1
    long-to-int v1, v12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 397
    move-object/from16 v0, v18

    iget-object v1, v0, Lcom/android/htccontacts/util/LinkUtils$ReturnSuggests;->mContactsHasSuggest:Ljava/util/ArrayList;

    long-to-int v2, v12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    long-to-int v1, v12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 399
    const/4 v1, 0x5

    move/from16 v0, v17

    if-ge v0, v1, :cond_2

    .line 400
    move-object/from16 v0, v18

    iget v1, v0, Lcom/android/htccontacts/util/LinkUtils$ReturnSuggests;->mCount:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, v18

    iput v1, v0, Lcom/android/htccontacts/util/LinkUtils$ReturnSuggests;->mCount:I

    .line 401
    :cond_2
    add-int/lit8 v17, v17, 0x1

    .line 404
    :cond_3
    move-wide/from16 v19, v15

    .line 406
    goto :goto_0

    .line 391
    :cond_4
    move-wide/from16 v19, v15

    .line 392
    goto/16 :goto_0

    .line 407
    .end local v10           #contactId1:J
    .end local v12           #contactId2:J
    :cond_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 410
    .end local v15           #cur_id:J
    .end local v17           #limit_count:I
    .end local v19           #pre_id:J
    :cond_6
    return-object v18
.end method

.method public static updateContactName(Landroid/content/Context;Ljava/lang/String;JLjava/util/ArrayList;)V
    .locals 4
    .parameter "context"
    .parameter "newName"
    .parameter "contact_id"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p4, mOperations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "contacts_info"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 138
    .local v1, updateUri:Landroid/net/Uri;
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 140
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v2, "display_name"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 142
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    return-void
.end method

.method public static updateContactName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;JLjava/util/ArrayList;)V
    .locals 15
    .parameter "context"
    .parameter "newName"
    .parameter "newNameId"
    .parameter "contact_id"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "J",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p5, mOperations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "contacts_info"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-wide/from16 v0, p3

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    .line 149
    .local v12, updateUri:Landroid/net/Uri;
    invoke-static {v12}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 151
    .local v8, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v2, "name_raw_contact_id"

    move-object/from16 v0, p2

    invoke-virtual {v8, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 152
    const-string v2, "display_name"

    move-object/from16 v0, p1

    invoke-virtual {v8, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 154
    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "contact_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p3

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 159
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_3

    .line 160
    :cond_0
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 161
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 162
    .local v10, id:J
    const-wide/16 v2, 0x0

    cmp-long v2, v10, v2

    if-lez v2, :cond_0

    .line 163
    sget-object v13, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 164
    .local v13, uri:Landroid/net/Uri;
    invoke-virtual {v13}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v14

    .line 165
    .local v14, uribuilder:Landroid/net/Uri$Builder;
    const-string v2, "caller_is_syncadapter"

    const-string v3, "true"

    invoke-virtual {v14, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 166
    invoke-virtual {v14}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    .line 167
    invoke-static {v12}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 169
    const-string v3, "name_verified"

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v10, v4

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v3, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 170
    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 169
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 173
    .end local v10           #id:J
    .end local v13           #uri:Landroid/net/Uri;
    .end local v14           #uribuilder:Landroid/net/Uri$Builder;
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 176
    :cond_3
    return-void
.end method

.method public static updateContactPhoto(Landroid/content/Context;JJLjava/util/ArrayList;)V
    .locals 4
    .parameter "context"
    .parameter "photo_id"
    .parameter "contact_id"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JJ",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 187
    .local p5, mOperations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "contacts_info"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 188
    .local v1, updateUri:Landroid/net/Uri;
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 190
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v2, "photo_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 192
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    return-void
.end method

.method public static final updateLinkContactTitle(Landroid/app/Activity;Ljava/lang/String;Landroid/graphics/Bitmap;ZZ)V
    .locals 2
    .parameter "activity"
    .parameter "name"
    .parameter "bitmap"
    .parameter "isNameEditable"
    .parameter "isPhotoEditable"

    .prologue
    .line 103
    if-nez p0, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    const v1, 0x7f070016

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;

    .line 107
    .local v0, mHeaderBar:Lcom/android/htccontacts/widget/title/DetailHeaderBar;
    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0, p1, p3}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->setLinkTitleName(Ljava/lang/String;Z)V

    .line 109
    invoke-virtual {v0, p2, p4}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->setLinkTitlePhoto(Landroid/graphics/Bitmap;Z)V

    goto :goto_0
.end method
