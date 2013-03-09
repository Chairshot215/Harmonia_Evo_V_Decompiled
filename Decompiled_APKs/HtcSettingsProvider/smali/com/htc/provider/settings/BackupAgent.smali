.class public Lcom/htc/provider/settings/BackupAgent;
.super Landroid/app/backup/BackupAgentHelper;
.source "BackupAgent.java"


# static fields
.field private static final COLUMN_APPID:I = 0x4

.field private static final COLUMN_FREQUENCY:I = 0x2

.field private static final COLUMN_LOCALE:I = 0x3

.field private static final COLUMN_WORD:I = 0x1

.field private static final DEFAULT_DATA:[B = null

.field private static final KEY_SETTING:Ljava/lang/String; = "key_setting"

.field private static final PROJECTION:[Ljava/lang/String; = null

.field private static final SEPARATOR:Ljava/lang/String; = "|"

.field private static final STATE_SETTING:I = 0x0

.field private static final STATE_SIZE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "HtcSettingBackupAgent"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 59
    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/provider/settings/BackupAgent;->DEFAULT_DATA:[B

    .line 68
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

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

    sput-object v0, Lcom/htc/provider/settings/BackupAgent;->PROJECTION:[Ljava/lang/String;

    return-void

    .line 59
    nop

    :array_0
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/backup/BackupAgentHelper;-><init>()V

    return-void
.end method

.method private getSetting()[B
    .locals 14

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/htc/provider/settings/BackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/consts/NotificationFlashLightConsts;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "nfl"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 156
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v0, 0x7

    new-array v8, v0, [I

    fill-array-data v8, :array_0

    .line 157
    .local v8, data:[I
    if-eqz v7, :cond_1

    .line 158
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    aput v1, v8, v0

    .line 160
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    aput v1, v8, v0

    .line 161
    const/4 v0, 0x2

    const/4 v1, 0x2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    aput v1, v8, v0

    .line 162
    const/4 v0, 0x3

    const/4 v1, 0x3

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    aput v1, v8, v0

    .line 163
    const/4 v0, 0x4

    const/4 v1, 0x4

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    aput v1, v8, v0

    .line 164
    const/4 v0, 0x5

    const/4 v1, 0x5

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    aput v1, v8, v0

    .line 165
    const/4 v0, 0x6

    const/4 v1, 0x6

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    aput v1, v8, v0

    .line 168
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 171
    :cond_1
    const/4 v0, 0x4

    new-array v13, v0, [B

    .line 172
    .local v13, sizeBytes:[B
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    const/4 v0, 0x7

    invoke-direct {v6, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 174
    .local v6, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v9, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v9, v6}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 176
    .local v9, gzip:Ljava/util/zip/GZIPOutputStream;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    aget v1, v8, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    aget v1, v8, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    aget v1, v8, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    aget v1, v8, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x4

    aget v1, v8, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x5

    aget v1, v8, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x6

    aget v1, v8, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 178
    .local v12, out:Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    .line 179
    .local v11, line:[B
    const/4 v0, 0x0

    array-length v1, v11

    invoke-direct {p0, v13, v0, v1}, Lcom/htc/provider/settings/BackupAgent;->writeInt([BII)I

    .line 180
    invoke-virtual {v9, v13}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 181
    invoke-virtual {v9, v11}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 183
    invoke-virtual {v9}, Ljava/util/zip/GZIPOutputStream;->finish()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .end local v9           #gzip:Ljava/util/zip/GZIPOutputStream;
    .end local v11           #line:[B
    .end local v12           #out:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 184
    :catch_0
    move-exception v10

    .line 185
    .local v10, ioe:Ljava/io/IOException;
    const-string v0, "HtcSettingBackupAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t get setting:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    sget-object v0, Lcom/htc/provider/settings/BackupAgent;->DEFAULT_DATA:[B

    goto :goto_0

    .line 156
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private readInt([BI)I
    .locals 3
    .parameter "in"
    .parameter "pos"

    .prologue
    .line 280
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

    .line 285
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

    .line 106
    new-array v3, v6, [J

    .line 108
    .local v3, stateChecksums:[J
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 110
    .local v0, dataInput:Ljava/io/DataInputStream;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v6, :cond_0

    .line 112
    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    aput-wide v4, v3, v2
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 113
    :catch_0
    move-exception v1

    .line 117
    :cond_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 118
    return-object v3
.end method

.method private restoreSetting(Landroid/app/backup/BackupDataInput;Landroid/net/Uri;)V
    .locals 29
    .parameter "backupData"
    .parameter "contentUri"

    .prologue
    .line 192
    invoke-virtual/range {p1 .. p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v25

    move/from16 v0, v25

    new-array v5, v0, [B

    .line 193
    .local v5, compressedData:[B
    const/4 v6, 0x0

    .line 195
    .local v6, data:[B
    const/16 v25, 0x0

    :try_start_0
    array-length v0, v5

    move/from16 v26, v0

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v5, v1, v2}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 196
    new-instance v9, Ljava/util/zip/GZIPInputStream;

    new-instance v25, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v25

    invoke-direct {v0, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v25

    invoke-direct {v9, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 197
    .local v9, gzip:Ljava/util/zip/GZIPInputStream;
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 198
    .local v4, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v25, 0x400

    move/from16 v0, v25

    new-array v0, v0, [B

    move-object/from16 v24, v0

    .line 200
    .local v24, tempData:[B
    :goto_0
    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v8

    .local v8, got:I
    if-lez v8, :cond_1

    .line 201
    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v4, v0, v1, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 205
    .end local v4           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v8           #got:I
    .end local v9           #gzip:Ljava/util/zip/GZIPInputStream;
    .end local v24           #tempData:[B
    :catch_0
    move-exception v10

    .line 206
    .local v10, ioe:Ljava/io/IOException;
    const-string v25, "HtcSettingBackupAgent"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Couldn\'t read and uncompress entity data:\n"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    .end local v10           #ioe:Ljava/io/IOException;
    :cond_0
    return-void

    .line 203
    .restart local v4       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v8       #got:I
    .restart local v9       #gzip:Ljava/util/zip/GZIPInputStream;
    .restart local v24       #tempData:[B
    :cond_1
    :try_start_1
    invoke-virtual {v9}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 204
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    .line 212
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/provider/settings/BackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    sget-object v26, Lcom/htc/consts/NotificationFlashLightConsts;->CONTENT_URI:Landroid/net/Uri;

    const-string v27, "nfl"

    invoke-static/range {v26 .. v27}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v26

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-virtual/range {v25 .. v28}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 219
    :goto_1
    const/4 v15, 0x0

    .line 220
    .local v15, pos:I
    :goto_2
    add-int/lit8 v25, v15, 0x4

    array-length v0, v6

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_0

    .line 221
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v15}, Lcom/htc/provider/settings/BackupAgent;->readInt([BI)I

    move-result v11

    .line 222
    .local v11, length:I
    add-int/lit8 v15, v15, 0x4

    .line 223
    add-int v25, v15, v11

    array-length v0, v6

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_2

    .line 224
    const-string v25, "HtcSettingBackupAgent"

    const-string v26, "Insufficient data"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_2
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v6, v15, v11}, Ljava/lang/String;-><init>([BII)V

    .line 227
    .local v12, line:Ljava/lang/String;
    add-int/2addr v15, v11

    .line 228
    new-instance v23, Ljava/util/StringTokenizer;

    const-string v25, "|"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-direct {v0, v12, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    .local v23, st:Ljava/util/StringTokenizer;
    const/16 v25, 0x7

    :try_start_3
    move/from16 v0, v25

    new-array v3, v0, [Z

    .line 232
    .local v3, bData:[Z
    invoke-virtual/range {v23 .. v23}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v16

    .line 233
    .local v16, s1:Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v17

    .line 234
    .local v17, s2:Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    .line 235
    .local v18, s3:Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v19

    .line 236
    .local v19, s4:Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v20

    .line 237
    .local v20, s5:Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v21

    .line 238
    .local v21, s6:Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v22

    .line 240
    .local v22, s7:Ljava/lang/String;
    const/16 v26, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    const/16 v27, 0x1

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_3

    const/16 v25, 0x1

    :goto_3
    aput-boolean v25, v3, v26

    .line 241
    const/16 v26, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    const/16 v27, 0x1

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_4

    const/16 v25, 0x1

    :goto_4
    aput-boolean v25, v3, v26

    .line 242
    const/16 v26, 0x2

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    const/16 v27, 0x1

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_5

    const/16 v25, 0x1

    :goto_5
    aput-boolean v25, v3, v26

    .line 243
    const/16 v26, 0x3

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    const/16 v27, 0x1

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_6

    const/16 v25, 0x1

    :goto_6
    aput-boolean v25, v3, v26

    .line 244
    const/16 v26, 0x4

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    const/16 v27, 0x1

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_7

    const/16 v25, 0x1

    :goto_7
    aput-boolean v25, v3, v26

    .line 245
    const/16 v26, 0x5

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    const/16 v27, 0x1

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_8

    const/16 v25, 0x1

    :goto_8
    aput-boolean v25, v3, v26

    .line 246
    const/16 v26, 0x6

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    const/16 v27, 0x1

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_9

    const/16 v25, 0x1

    :goto_9
    aput-boolean v25, v3, v26

    .line 248
    const/16 v25, 0x1

    aget-boolean v25, v3, v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-static {v0, v1}, Lcom/htc/util/settings/NotificationFlashLightUtility;->setMissCall(Landroid/content/Context;Z)V

    .line 249
    const/16 v25, 0x2

    aget-boolean v25, v3, v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-static {v0, v1}, Lcom/htc/util/settings/NotificationFlashLightUtility;->setSms(Landroid/content/Context;Z)V

    .line 250
    const/16 v25, 0x3

    aget-boolean v25, v3, v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-static {v0, v1}, Lcom/htc/util/settings/NotificationFlashLightUtility;->setEmail(Landroid/content/Context;Z)V

    .line 251
    const/16 v25, 0x4

    aget-boolean v25, v3, v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-static {v0, v1}, Lcom/htc/util/settings/NotificationFlashLightUtility;->setVoiceMail(Landroid/content/Context;Z)V

    .line 252
    const/16 v25, 0x5

    aget-boolean v25, v3, v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-static {v0, v1}, Lcom/htc/util/settings/NotificationFlashLightUtility;->setReminder(Landroid/content/Context;Z)V

    .line 253
    const/16 v25, 0x6

    aget-boolean v25, v3, v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-static {v0, v1}, Lcom/htc/util/settings/NotificationFlashLightUtility;->setAlarm(Landroid/content/Context;Z)V
    :try_end_3
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_2

    .line 254
    .end local v3           #bData:[Z
    .end local v16           #s1:Ljava/lang/String;
    .end local v17           #s2:Ljava/lang/String;
    .end local v18           #s3:Ljava/lang/String;
    .end local v19           #s4:Ljava/lang/String;
    .end local v20           #s5:Ljava/lang/String;
    .end local v21           #s6:Ljava/lang/String;
    .end local v22           #s7:Ljava/lang/String;
    :catch_1
    move-exception v14

    .line 255
    .local v14, nsee:Ljava/util/NoSuchElementException;
    const-string v25, "HtcSettingBackupAgent"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Token format error\n"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 215
    .end local v11           #length:I
    .end local v12           #line:Ljava/lang/String;
    .end local v14           #nsee:Ljava/util/NoSuchElementException;
    .end local v15           #pos:I
    .end local v23           #st:Ljava/util/StringTokenizer;
    :catch_2
    move-exception v7

    .line 216
    .local v7, e:Ljava/lang/Exception;
    const-string v25, "saveSetting"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "delete fail~~~~~~~~~~~~~ "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 240
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v3       #bData:[Z
    .restart local v11       #length:I
    .restart local v12       #line:Ljava/lang/String;
    .restart local v15       #pos:I
    .restart local v16       #s1:Ljava/lang/String;
    .restart local v17       #s2:Ljava/lang/String;
    .restart local v18       #s3:Ljava/lang/String;
    .restart local v19       #s4:Ljava/lang/String;
    .restart local v20       #s5:Ljava/lang/String;
    .restart local v21       #s6:Ljava/lang/String;
    .restart local v22       #s7:Ljava/lang/String;
    .restart local v23       #st:Ljava/util/StringTokenizer;
    :cond_3
    const/16 v25, 0x0

    goto/16 :goto_3

    .line 241
    :cond_4
    const/16 v25, 0x0

    goto/16 :goto_4

    .line 242
    :cond_5
    const/16 v25, 0x0

    goto/16 :goto_5

    .line 243
    :cond_6
    const/16 v25, 0x0

    goto/16 :goto_6

    .line 244
    :cond_7
    const/16 v25, 0x0

    goto/16 :goto_7

    .line 245
    :cond_8
    const/16 v25, 0x0

    goto/16 :goto_8

    .line 246
    :cond_9
    const/16 v25, 0x0

    goto/16 :goto_9

    .line 256
    .end local v3           #bData:[Z
    .end local v16           #s1:Ljava/lang/String;
    .end local v17           #s2:Ljava/lang/String;
    .end local v18           #s3:Ljava/lang/String;
    .end local v19           #s4:Ljava/lang/String;
    .end local v20           #s5:Ljava/lang/String;
    .end local v21           #s6:Ljava/lang/String;
    .end local v22           #s7:Ljava/lang/String;
    :catch_3
    move-exception v13

    .line 257
    .local v13, nfe:Ljava/lang/NumberFormatException;
    const-string v25, "HtcSettingBackupAgent"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Number format error\n"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 258
    .end local v13           #nfe:Ljava/lang/NumberFormatException;
    :catch_4
    move-exception v7

    .line 259
    .restart local v7       #e:Ljava/lang/Exception;
    const-string v25, "HtcSettingBackupAgent"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "other error\n"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private writeIfChanged(JLjava/lang/String;[BLandroid/app/backup/BackupDataOutput;)J
    .locals 4
    .parameter "oldChecksum"
    .parameter "key"
    .parameter "data"
    .parameter "output"

    .prologue
    .line 133
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 134
    .local v0, checkSummer:Ljava/util/zip/CRC32;
    invoke-virtual {v0, p4}, Ljava/util/zip/CRC32;->update([B)V

    .line 135
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    .line 142
    .local v1, newChecksum:J
    :try_start_0
    array-length v3, p4

    invoke-virtual {p5, p3, v3}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 143
    array-length v3, p4

    invoke-virtual {p5, p4, v3}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    return-wide v1

    .line 144
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private writeInt([BII)I
    .locals 2
    .parameter "out"
    .parameter "pos"
    .parameter "value"

    .prologue
    .line 272
    add-int/lit8 v0, p2, 0x0

    shr-int/lit8 v1, p3, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 273
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p3, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 274
    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v1, p3, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 275
    add-int/lit8 v0, p2, 0x3

    shr-int/lit8 v1, p3, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 276
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
    .line 123
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 125
    .local v0, dataOutput:Ljava/io/DataOutputStream;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 126
    aget-wide v2, p1, v1

    invoke-virtual {v0, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 129
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

    .line 79
    invoke-direct {p0}, Lcom/htc/provider/settings/BackupAgent;->getSetting()[B

    move-result-object v4

    .line 81
    .local v4, settingData:[B
    invoke-direct {p0, p1}, Lcom/htc/provider/settings/BackupAgent;->readOldChecksums(Landroid/os/ParcelFileDescriptor;)[J

    move-result-object v6

    .line 83
    .local v6, stateChecksums:[J
    aget-wide v1, v6, v7

    const-string v3, "key_setting"

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/htc/provider/settings/BackupAgent;->writeIfChanged(JLjava/lang/String;[BLandroid/app/backup/BackupDataOutput;)J

    move-result-wide v0

    aput-wide v0, v6, v7

    .line 87
    invoke-direct {p0, v6, p3}, Lcom/htc/provider/settings/BackupAgent;->writeNewChecksums([JLandroid/os/ParcelFileDescriptor;)V

    .line 88
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
    .line 94
    :goto_0
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, key:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v1

    .line 97
    .local v1, size:I
    const-string v2, "key_setting"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    sget-object v2, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, v2}, Lcom/htc/provider/settings/BackupAgent;->restoreSetting(Landroid/app/backup/BackupDataInput;Landroid/net/Uri;)V

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->skipEntityData()V

    goto :goto_0

    .line 103
    .end local v0           #key:Ljava/lang/String;
    .end local v1           #size:I
    :cond_1
    return-void
.end method
