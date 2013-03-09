.class public Lcom/google/android/gsf/login/ProfileHelper;
.super Ljava/lang/Object;
.source "ProfileHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCompressedBytes(Landroid/graphics/Bitmap;)[B
    .locals 4
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 163
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v1

    .line 164
    .local v1, compressed:Z
    if-nez v1, :cond_0

    .line 165
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unable to compress image"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 167
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 168
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 169
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method private static getProfileItem(JLjava/lang/String;Landroid/content/ContentResolver;)J
    .locals 9
    .parameter "profileContactId"
    .parameter "itemType"
    .parameter "contentResolver"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 139
    sget-object v0, Lcom/google/android/gsf/login/Compat$ContactsContract$Profile;->CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "data"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 144
    .local v1, dataUri:Landroid/net/Uri;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v5

    const-string v0, "mimetype"

    aput-object v0, v2, v4

    const-string v3, "mimetype = ?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p2, v4, v5

    const/4 v5, 0x0

    move-object v0, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 147
    .local v6, c:Landroid/database/Cursor;
    const-wide/16 v7, -0x1

    .line 149
    .local v7, id:J
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v7

    .line 153
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 155
    return-wide v7

    .line 153
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static updateMeContactWith(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/ContentResolver;)V
    .locals 19
    .parameter "firstName"
    .parameter "lastName"
    .parameter "photo"
    .parameter "contentResolver"

    .prologue
    .line 47
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p2, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-le v2, v4, :cond_0

    .line 57
    sget-object v3, Lcom/google/android/gsf/login/Compat$ContactsContract$Profile;->CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

    .line 58
    .local v3, profilesUri:Landroid/net/Uri;
    const-wide/16 v11, -0x1

    .line 59
    .local v11, meRawContactId:J
    const/4 v13, 0x1

    .line 60
    .local v13, newContact:Z
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    const-string v5, "account_name IS NULL AND account_type IS NULL"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p3

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 64
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 65
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v11

    .line 66
    const/4 v13, 0x0

    .line 69
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 72
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 73
    .local v18, values:Landroid/content/ContentValues;
    if-eqz v13, :cond_3

    .line 74
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v11

    .line 78
    :cond_3
    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentValues;->clear()V

    .line 79
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9}, Ljava/lang/String;-><init>()V

    .line 80
    .local v9, displayName:Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 81
    const-string v2, "data2"

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    move-object/from16 v9, p0

    .line 84
    :cond_4
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 85
    const-string v2, "data3"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 89
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 91
    :cond_6
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 92
    const-string v2, "data1"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_7
    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-lez v2, :cond_9

    .line 95
    const-string v2, "raw_contact_id"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 96
    const-string v2, "mimetype"

    const-string v4, "vnd.android.cursor.item/name"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    if-nez v13, :cond_8

    const-string v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, p3

    invoke-static {v11, v12, v2, v0}, Lcom/google/android/gsf/login/ProfileHelper;->getProfileItem(JLjava/lang/String;Landroid/content/ContentResolver;)J

    move-result-wide v16

    .local v16, structuredNameId:J
    const-wide/16 v4, 0x0

    cmp-long v2, v16, v4

    if-gez v2, :cond_b

    .line 102
    .end local v16           #structuredNameId:J
    :cond_8
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 111
    :cond_9
    :goto_1
    if-eqz p2, :cond_0

    .line 113
    :try_start_1
    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentValues;->clear()V

    .line 114
    const-string v2, "raw_contact_id"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 115
    const-string v2, "mimetype"

    const-string v4, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v2, "data15"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gsf/login/ProfileHelper;->getCompressedBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 120
    if-nez v13, :cond_a

    const-string v2, "vnd.android.cursor.item/photo"

    move-object/from16 v0, p3

    invoke-static {v11, v12, v2, v0}, Lcom/google/android/gsf/login/ProfileHelper;->getProfileItem(JLjava/lang/String;Landroid/content/ContentResolver;)J

    move-result-wide v14

    .local v14, photoId:J
    const-wide/16 v4, 0x0

    cmp-long v2, v14, v4

    if-gez v2, :cond_c

    .line 122
    .end local v14           #photoId:J
    :cond_a
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 127
    :catch_0
    move-exception v10

    .line 128
    .local v10, ex:Ljava/io/IOException;
    const-string v2, "ProfileHelper"

    const-string v4, "Unable to convert photo to byte array"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 69
    .end local v9           #displayName:Ljava/lang/String;
    .end local v10           #ex:Ljava/io/IOException;
    .end local v18           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v2

    .line 104
    .restart local v9       #displayName:Ljava/lang/String;
    .restart local v16       #structuredNameId:J
    .restart local v18       #values:Landroid/content/ContentValues;
    :cond_b
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v16

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 124
    .end local v16           #structuredNameId:J
    .restart local v14       #photoId:J
    :cond_c
    :try_start_2
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method
