.class public Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;
.super Ljava/lang/Object;
.source "BluetoothOppReceiveFileInfo.java"


# static fields
.field private static final D:Z

.field private static final V:Z

.field private static sDesiredStoragePath:Ljava/lang/String;


# instance fields
.field public mData:Ljava/lang/String;

.field public mFileName:Ljava/lang/String;

.field public mLength:J

.field public mOutputStream:Ljava/io/FileOutputStream;

.field public mStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput-object v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->sDesiredStoragePath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 6
    .parameter "status"

    .prologue
    const/4 v1, 0x0

    .line 86
    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v4, v1

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;-><init>(Ljava/lang/String;JLjava/io/FileOutputStream;I)V

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JI)V
    .locals 0
    .parameter "data"
    .parameter "length"
    .parameter "status"

    .prologue
    .line 71
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mData:Ljava/lang/String;

    .line 73
    iput p4, p0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mStatus:I

    .line 74
    iput-wide p2, p0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mLength:J

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/io/FileOutputStream;I)V
    .locals 0
    .parameter "filename"
    .parameter "length"
    .parameter "outputStream"
    .parameter "status"

    .prologue
    .line 78
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    .line 80
    iput-object p4, p0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mOutputStream:Ljava/io/FileOutputStream;

    .line 81
    iput p5, p0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mStatus:I

    .line 82
    iput-wide p2, p0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mLength:J

    .line 83
    return-void
.end method

.method private static chooseUniquefilename(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "filename"
    .parameter "extension"

    .prologue
    .line 207
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, fullfilename:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    move-object v5, v0

    .line 235
    :goto_0
    return-object v5

    .line 211
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/bluetooth/opp/Constants;->filename_SEQUENCE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 223
    new-instance v3, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-direct {v3, v5, v6}, Ljava/util/Random;-><init>(J)V

    .line 224
    .local v3, rnd:Ljava/util/Random;
    const/4 v4, 0x1

    .line 225
    .local v4, sequence:I
    const/4 v2, 0x1

    .local v2, magnitude:I
    :goto_1
    const v5, 0x3b9aca00

    if-ge v2, v5, :cond_3

    .line 226
    const/4 v1, 0x0

    .local v1, iteration:I
    :goto_2
    const/16 v5, 0x9

    if-ge v1, v5, :cond_2

    .line 227
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    move-object v5, v0

    .line 229
    goto :goto_0

    .line 232
    :cond_1
    invoke-virtual {v3, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    .line 226
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 225
    :cond_2
    mul-int/lit8 v2, v2, 0xa

    goto :goto_1

    .line 235
    .end local v1           #iteration:I
    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private static choosefilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "hint"

    .prologue
    const/16 v4, 0x2f

    .line 239
    const/4 v0, 0x0

    .line 242
    .local v0, filename:Ljava/lang/String;
    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "\\"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 245
    const/16 v2, 0x5c

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 247
    const-string v2, "\\s"

    const-string v3, " "

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 250
    const-string v2, "[:\"<>*?|]"

    const-string v3, "_"

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 252
    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 253
    .local v1, index:I
    if-lez v1, :cond_1

    .line 254
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 259
    .end local v1           #index:I
    :cond_0
    :goto_0
    return-object v0

    .line 256
    .restart local v1       #index:I
    :cond_1
    move-object v0, p0

    goto :goto_0
.end method

.method public static generateFileInfo(Landroid/content/Context;I)Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;
    .locals 27
    .parameter "context"
    .parameter "id"

    .prologue
    .line 92
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 93
    .local v2, contentResolver:Landroid/content/ContentResolver;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 94
    .local v3, contentUri:Landroid/net/Uri;
    const/16 v16, 0x0

    .line 95
    .local v16, hint:Ljava/lang/String;
    const-wide/16 v18, 0x0

    .line 96
    .local v18, length:J
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "hint"

    aput-object v9, v4, v8

    const/4 v8, 0x1

    const-string v9, "total_bytes"

    aput-object v9, v4, v8

    const/4 v8, 0x2

    const-string v9, "mimetype"

    aput-object v9, v4, v8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 99
    .local v20, metadataCursor:Landroid/database/Cursor;
    if-eqz v20, :cond_9

    .line 101
    :try_start_0
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 102
    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 103
    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    int-to-long v6, v4

    .line 106
    .end local v18           #length:J
    .local v6, length:J
    :goto_0
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 112
    :goto_1
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->setDesiredStoragePath()V

    .line 113
    sget-object v4, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->sDesiredStoragePath:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 114
    new-instance v10, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->sDesiredStoragePath:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "/downloads/bluetooth/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v10, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    .local v10, base:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_0

    .line 118
    new-instance v4, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    const/16 v8, 0x1ec

    invoke-direct {v4, v8}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;-><init>(I)V

    .line 180
    .end local v10           #base:Ljava/io/File;
    :goto_2
    return-object v4

    .line 106
    .end local v6           #length:J
    .restart local v18       #length:J
    :catchall_0
    move-exception v4

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    throw v4

    .line 120
    .end local v18           #length:J
    .restart local v6       #length:J
    .restart local v10       #base:Ljava/io/File;
    :cond_0
    new-instance v21, Landroid/os/StatFs;

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-direct {v0, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 131
    .local v21, stat:Landroid/os/StatFs;
    invoke-virtual/range {v21 .. v21}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v8, v4

    invoke-virtual/range {v21 .. v21}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v23, v0

    const-wide/16 v25, 0x4

    sub-long v23, v23, v25

    mul-long v8, v8, v23

    cmp-long v4, v8, v6

    if-gez v4, :cond_2

    .line 133
    new-instance v4, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    const/16 v8, 0x1ee

    invoke-direct {v4, v8}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;-><init>(I)V

    goto :goto_2

    .line 123
    .end local v10           #base:Ljava/io/File;
    .end local v21           #stat:Landroid/os/StatFs;
    :cond_1
    new-instance v4, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    const/16 v8, 0x1ed

    invoke-direct {v4, v8}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;-><init>(I)V

    goto :goto_2

    .line 136
    .restart local v10       #base:Ljava/io/File;
    .restart local v21       #stat:Landroid/os/StatFs;
    :cond_2
    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->choosefilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 137
    .local v15, filename:Ljava/lang/String;
    if-nez v15, :cond_3

    .line 139
    new-instance v4, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    const/16 v8, 0x1ec

    invoke-direct {v4, v8}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;-><init>(I)V

    goto :goto_2

    .line 142
    :cond_3
    const-string v4, "."

    invoke-virtual {v15, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    .line 143
    .local v12, dotIndex:I
    if-gez v12, :cond_4

    .line 145
    new-instance v4, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    const/16 v8, 0x1ec

    invoke-direct {v4, v8}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;-><init>(I)V

    goto :goto_2

    .line 147
    :cond_4
    invoke-virtual {v15, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 148
    .local v14, extension:Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {v15, v4, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 150
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 152
    invoke-static {v15, v14}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->chooseUniquefilename(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 154
    .local v5, fullfilename:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->safeCanonicalPath(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 156
    new-instance v4, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    const/16 v8, 0x1ec

    invoke-direct {v4, v8}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;-><init>(I)V

    goto/16 :goto_2

    .line 160
    :cond_5
    if-eqz v5, :cond_7

    .line 162
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 163
    const/16 v4, 0x2f

    invoke-virtual {v5, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v17, v4, 0x1

    .line 165
    .local v17, index:I
    if-lez v17, :cond_6

    .line 166
    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 168
    .local v11, displayName:Ljava/lang/String;
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 169
    .local v22, updateValues:Landroid/content/ContentValues;
    const-string v4, "hint"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v4, v3, v0, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 173
    .end local v11           #displayName:Ljava/lang/String;
    .end local v22           #updateValues:Landroid/content/ContentValues;
    :cond_6
    new-instance v4, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;-><init>(Ljava/lang/String;JLjava/io/FileOutputStream;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 175
    .end local v17           #index:I
    :catch_0
    move-exception v13

    .line 177
    .local v13, e:Ljava/io/IOException;
    new-instance v4, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    const/16 v8, 0x1ec

    invoke-direct {v4, v8}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;-><init>(I)V

    goto/16 :goto_2

    .line 180
    .end local v13           #e:Ljava/io/IOException;
    :cond_7
    new-instance v4, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    const/16 v8, 0x1ec

    invoke-direct {v4, v8}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;-><init>(I)V

    goto/16 :goto_2

    .end local v5           #fullfilename:Ljava/lang/String;
    .end local v6           #length:J
    .end local v10           #base:Ljava/io/File;
    .end local v12           #dotIndex:I
    .end local v14           #extension:Ljava/lang/String;
    .end local v15           #filename:Ljava/lang/String;
    .end local v21           #stat:Landroid/os/StatFs;
    .restart local v18       #length:J
    :cond_8
    move-wide/from16 v6, v18

    .end local v18           #length:J
    .restart local v6       #length:J
    goto/16 :goto_0

    .end local v6           #length:J
    .restart local v18       #length:J
    :cond_9
    move-wide/from16 v6, v18

    .end local v18           #length:J
    .restart local v6       #length:J
    goto/16 :goto_1
.end method

.method private static safeCanonicalPath(Ljava/lang/String;)Z
    .locals 6
    .parameter "uniqueFileName"

    .prologue
    const/4 v3, 0x0

    .line 187
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 188
    .local v2, receiveFile:Ljava/io/File;
    sget-object v4, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->sDesiredStoragePath:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 189
    const-string v4, "BluetoothOpp"

    const-string v5, "NO STORAGE!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .end local v2           #receiveFile:Ljava/io/File;
    :cond_0
    :goto_0
    return v3

    .line 192
    .restart local v2       #receiveFile:Ljava/io/File;
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, canonicalPath:Ljava/lang/String;
    sget-object v4, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->sDesiredStoragePath:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 199
    const/4 v3, 0x1

    goto :goto_0

    .line 200
    .end local v0           #canonicalPath:Ljava/lang/String;
    .end local v2           #receiveFile:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 202
    .local v1, ioe:Ljava/io/IOException;
    goto :goto_0
.end method

.method private static setDesiredStoragePath()V
    .locals 2

    .prologue
    .line 265
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getPhoneStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    invoke-static {}, Landroid/os/Environment;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->sDesiredStoragePath:Ljava/lang/String;

    .line 278
    :goto_0
    return-void

    .line 268
    :cond_0
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->sDesiredStoragePath:Ljava/lang/String;

    goto :goto_0

    .line 271
    :cond_1
    invoke-static {}, Landroid/os/Environment;->hasRemovableStorageSlot()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getRemovableStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 274
    invoke-static {}, Landroid/os/Environment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->sDesiredStoragePath:Ljava/lang/String;

    goto :goto_0

    .line 276
    :cond_2
    const/4 v0, 0x0

    sput-object v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->sDesiredStoragePath:Ljava/lang/String;

    goto :goto_0
.end method
