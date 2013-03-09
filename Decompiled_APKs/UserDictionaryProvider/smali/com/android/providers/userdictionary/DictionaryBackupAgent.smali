.class public Lcom/android/providers/userdictionary/DictionaryBackupAgent;
.super Landroid/app/backup/BackupAgentHelper;
.source "DictionaryBackupAgent.java"


# static fields
.field private static final COLUMN_APPID:I = 0x4

.field private static final COLUMN_FREQUENCY:I = 0x2

.field private static final COLUMN_LOCALE:I = 0x3

.field private static final COLUMN_WORD:I = 0x1

.field private static final EMPTY_DATA:[B = null

.field private static final KEY_DICTIONARY:Ljava/lang/String; = "userdictionary"

.field private static final PROJECTION:[Ljava/lang/String; = null

.field private static final SEPARATOR:Ljava/lang/String; = "|"

.field private static final STATE_DICTIONARY:I = 0x0

.field private static final STATE_SIZE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DictionaryBackupAgent"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 56
    new-array v0, v2, [B

    sput-object v0, Lcom/android/providers/userdictionary/DictionaryBackupAgent;->EMPTY_DATA:[B

    .line 65
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "word"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "frequency"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "locale"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "appid"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/userdictionary/DictionaryBackupAgent;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/backup/BackupAgentHelper;-><init>()V

    return-void
.end method

.method private getDictionary()[B
    .locals 19

    .prologue
    .line 147
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/userdictionary/DictionaryBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/providers/userdictionary/DictionaryBackupAgent;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "word"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 149
    .local v10, cursor:Landroid/database/Cursor;
    if-nez v10, :cond_0

    sget-object v2, Lcom/android/providers/userdictionary/DictionaryBackupAgent;->EMPTY_DATA:[B

    .line 178
    :goto_0
    return-object v2

    .line 150
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1

    .line 151
    const-string v2, "DictionaryBackupAgent"

    const-string v3, "Couldn\'t read from the cursor"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 153
    sget-object v2, Lcom/android/providers/userdictionary/DictionaryBackupAgent;->EMPTY_DATA:[B

    goto :goto_0

    .line 155
    :cond_1
    const/4 v2, 0x4

    new-array v0, v2, [B

    move-object/from16 v18, v0

    .line 156
    .local v18, sizeBytes:[B
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    mul-int/lit8 v2, v2, 0xa

    invoke-direct {v9, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 158
    .local v9, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v12, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v12, v9}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 159
    .local v12, gzip:Ljava/util/zip/GZIPOutputStream;
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_2

    .line 160
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 161
    .local v16, name:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 162
    .local v11, frequency:I
    const/4 v2, 0x3

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 163
    .local v15, locale:Ljava/lang/String;
    const/4 v2, 0x4

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 164
    .local v8, appId:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 165
    .local v17, out:Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    .line 166
    .local v14, line:[B
    const/4 v2, 0x0

    array-length v3, v14

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/userdictionary/DictionaryBackupAgent;->writeInt([BII)I

    .line 167
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 168
    invoke-virtual {v12, v14}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 169
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 172
    .end local v8           #appId:I
    .end local v11           #frequency:I
    .end local v12           #gzip:Ljava/util/zip/GZIPOutputStream;
    .end local v14           #line:[B
    .end local v15           #locale:Ljava/lang/String;
    .end local v16           #name:Ljava/lang/String;
    .end local v17           #out:Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 173
    .local v13, ioe:Ljava/io/IOException;
    :try_start_1
    const-string v2, "DictionaryBackupAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t compress the dictionary:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    sget-object v2, Lcom/android/providers/userdictionary/DictionaryBackupAgent;->EMPTY_DATA:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 171
    .end local v13           #ioe:Ljava/io/IOException;
    .restart local v12       #gzip:Ljava/util/zip/GZIPOutputStream;
    :cond_2
    :try_start_2
    invoke-virtual {v12}, Ljava/util/zip/GZIPOutputStream;->finish()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 176
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 178
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    goto/16 :goto_0

    .line 176
    .end local v12           #gzip:Ljava/util/zip/GZIPOutputStream;
    :catchall_0
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method private readInt([BI)I
    .locals 3
    .parameter "in"
    .parameter "pos"

    .prologue
    .line 257
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x0

    or-int v0, v1, v2

    .line 262
    .local v0, result:I
    return v0
.end method

.method private readOldChecksums(Landroid/os/ParcelFileDescriptor;)[J
    .locals 7
    .parameter "oldState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 104
    new-array v3, v6, [J

    .line 106
    .local v3, stateChecksums:[J
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 108
    .local v0, dataInput:Ljava/io/DataInputStream;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v6, :cond_0

    .line 110
    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    aput-wide v4, v3, v2
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 111
    :catch_0
    move-exception v1

    .line 115
    :cond_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 116
    return-object v3
.end method

.method private restoreDictionary(Landroid/app/backup/BackupDataInput;Landroid/net/Uri;)V
    .locals 28
    .parameter "data"
    .parameter "contentUri"

    .prologue
    .line 182
    new-instance v7, Landroid/content/ContentValues;

    const/16 v24, 0x2

    move/from16 v0, v24

    invoke-direct {v7, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 183
    .local v7, cv:Landroid/content/ContentValues;
    invoke-virtual/range {p1 .. p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v24

    move/from16 v0, v24

    new-array v8, v0, [B

    .line 184
    .local v8, dictCompressed:[B
    const/4 v9, 0x0

    .line 186
    .local v9, dictionary:[B
    const/16 v24, 0x0

    :try_start_0
    array-length v0, v8

    move/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v8, v1, v2}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 187
    new-instance v13, Ljava/util/zip/GZIPInputStream;

    new-instance v24, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v24

    invoke-direct {v0, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v24

    invoke-direct {v13, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 188
    .local v13, gzip:Ljava/util/zip/GZIPInputStream;
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 189
    .local v6, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v24, 0x400

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v22, v0

    .line 191
    .local v22, tempData:[B
    :goto_0
    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v12

    .local v12, got:I
    if-lez v12, :cond_1

    .line 192
    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v6, v0, v1, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 196
    .end local v6           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v12           #got:I
    .end local v13           #gzip:Ljava/util/zip/GZIPInputStream;
    .end local v22           #tempData:[B
    :catch_0
    move-exception v14

    .line 197
    .local v14, ioe:Ljava/io/IOException;
    const-string v24, "DictionaryBackupAgent"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Couldn\'t read and uncompress entity data:\n"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    .end local v14           #ioe:Ljava/io/IOException;
    :cond_0
    return-void

    .line 194
    .restart local v6       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v12       #got:I
    .restart local v13       #gzip:Ljava/util/zip/GZIPInputStream;
    .restart local v22       #tempData:[B
    :cond_1
    :try_start_1
    invoke-virtual {v13}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 195
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    .line 200
    const/16 v20, 0x0

    .line 201
    .local v20, pos:I
    :cond_2
    :goto_1
    add-int/lit8 v24, v20, 0x4

    array-length v0, v9

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_0

    .line 202
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v9, v1}, Lcom/android/providers/userdictionary/DictionaryBackupAgent;->readInt([BI)I

    move-result v15

    .line 203
    .local v15, length:I
    add-int/lit8 v20, v20, 0x4

    .line 204
    add-int v24, v20, v15

    array-length v0, v9

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_3

    .line 205
    const-string v24, "DictionaryBackupAgent"

    const-string v25, "Insufficient data"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_3
    new-instance v16, Ljava/lang/String;

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-direct {v0, v9, v1, v15}, Ljava/lang/String;-><init>([BII)V

    .line 208
    .local v16, line:Ljava/lang/String;
    add-int v20, v20, v15

    .line 209
    new-instance v21, Ljava/util/StringTokenizer;

    const-string v24, "|"

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .local v21, st:Ljava/util/StringTokenizer;
    :try_start_2
    invoke-virtual/range {v21 .. v21}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v23

    .line 214
    .local v23, word:Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    .line 215
    .local v10, frequency:Ljava/lang/String;
    const/16 v17, 0x0

    .line 216
    .local v17, locale:Ljava/lang/String;
    const/4 v4, 0x0

    .line 217
    .local v4, appid:Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v24

    if-eqz v24, :cond_4

    invoke-virtual/range {v21 .. v21}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v17

    .line 218
    :cond_4
    const-string v24, "null"

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_5

    const/16 v17, 0x0

    .line 219
    :cond_5
    invoke-virtual/range {v21 .. v21}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v24

    if-eqz v24, :cond_6

    invoke-virtual/range {v21 .. v21}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 220
    :cond_6
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 221
    .local v11, frequencyInt:I
    if-eqz v4, :cond_7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 223
    .local v5, appidInt:I
    :goto_2
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_2

    .line 224
    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    .line 225
    const-string v24, "word"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v24, "frequency"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 227
    const-string v24, "locale"

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v24, "appid"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 230
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/userdictionary/DictionaryBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "word=?"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput-object v23, v26, v27

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 231
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/userdictionary/DictionaryBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 233
    .end local v4           #appid:Ljava/lang/String;
    .end local v5           #appidInt:I
    .end local v10           #frequency:Ljava/lang/String;
    .end local v11           #frequencyInt:I
    .end local v17           #locale:Ljava/lang/String;
    .end local v23           #word:Ljava/lang/String;
    :catch_1
    move-exception v19

    .line 234
    .local v19, nsee:Ljava/util/NoSuchElementException;
    const-string v24, "DictionaryBackupAgent"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Token format error\n"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 221
    .end local v19           #nsee:Ljava/util/NoSuchElementException;
    .restart local v4       #appid:Ljava/lang/String;
    .restart local v10       #frequency:Ljava/lang/String;
    .restart local v11       #frequencyInt:I
    .restart local v17       #locale:Ljava/lang/String;
    .restart local v23       #word:Ljava/lang/String;
    :cond_7
    const/4 v5, 0x0

    goto :goto_2

    .line 235
    .end local v4           #appid:Ljava/lang/String;
    .end local v10           #frequency:Ljava/lang/String;
    .end local v11           #frequencyInt:I
    .end local v17           #locale:Ljava/lang/String;
    .end local v23           #word:Ljava/lang/String;
    :catch_2
    move-exception v18

    .line 236
    .local v18, nfe:Ljava/lang/NumberFormatException;
    const-string v24, "DictionaryBackupAgent"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Number format error\n"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private writeIfChanged(JLjava/lang/String;[BLandroid/app/backup/BackupDataOutput;)J
    .locals 4
    .parameter "oldChecksum"
    .parameter "key"
    .parameter "data"
    .parameter "output"

    .prologue
    .line 131
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 132
    .local v0, checkSummer:Ljava/util/zip/CRC32;
    invoke-virtual {v0, p4}, Ljava/util/zip/CRC32;->update([B)V

    .line 133
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    .line 134
    .local v1, newChecksum:J
    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    .line 143
    .end local p1
    :goto_0
    return-wide p1

    .line 138
    .restart local p1
    :cond_0
    :try_start_0
    array-length v3, p4

    invoke-virtual {p5, p3, v3}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 139
    array-length v3, p4

    invoke-virtual {p5, p4, v3}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-wide p1, v1

    .line 143
    goto :goto_0

    .line 140
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private writeInt([BII)I
    .locals 2
    .parameter "out"
    .parameter "pos"
    .parameter "value"

    .prologue
    .line 249
    add-int/lit8 v0, p2, 0x0

    shr-int/lit8 v1, p3, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 250
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p3, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 251
    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v1, p3, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 252
    add-int/lit8 v0, p2, 0x3

    shr-int/lit8 v1, p3, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 253
    add-int/lit8 v0, p2, 0x4

    return v0
.end method

.method private writeNewChecksums([JLandroid/os/ParcelFileDescriptor;)V
    .locals 4
    .parameter "checksums"
    .parameter "newState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 123
    .local v0, dataOutput:Ljava/io/DataOutputStream;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 124
    aget-wide v2, p1, v1

    invoke-virtual {v0, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    :cond_0
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 127
    return-void
.end method


# virtual methods
.method public onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 8
    .parameter "oldState"
    .parameter "data"
    .parameter "newState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 77
    invoke-direct {p0}, Lcom/android/providers/userdictionary/DictionaryBackupAgent;->getDictionary()[B

    move-result-object v4

    .line 79
    .local v4, userDictionaryData:[B
    invoke-direct {p0, p1}, Lcom/android/providers/userdictionary/DictionaryBackupAgent;->readOldChecksums(Landroid/os/ParcelFileDescriptor;)[J

    move-result-object v6

    .line 81
    .local v6, stateChecksums:[J
    aget-wide v1, v6, v7

    const-string v3, "userdictionary"

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/userdictionary/DictionaryBackupAgent;->writeIfChanged(JLjava/lang/String;[BLandroid/app/backup/BackupDataOutput;)J

    move-result-wide v0

    aput-wide v0, v6, v7

    .line 85
    invoke-direct {p0, v6, p3}, Lcom/android/providers/userdictionary/DictionaryBackupAgent;->writeNewChecksums([JLandroid/os/ParcelFileDescriptor;)V

    .line 86
    return-void
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .locals 3
    .parameter "data"
    .parameter "appVersionCode"
    .parameter "newState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    :goto_0
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 93
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, key:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v1

    .line 95
    .local v1, size:I
    const-string v2, "userdictionary"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    sget-object v2, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, v2}, Lcom/android/providers/userdictionary/DictionaryBackupAgent;->restoreDictionary(Landroid/app/backup/BackupDataInput;Landroid/net/Uri;)V

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->skipEntityData()V

    goto :goto_0

    .line 101
    .end local v0           #key:Ljava/lang/String;
    .end local v1           #size:I
    :cond_1
    return-void
.end method
