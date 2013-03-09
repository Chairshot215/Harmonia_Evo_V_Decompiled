.class public Lcom/htc/htccompressviewer/zip/HtcZip;
.super Ljava/lang/Object;
.source "HtcZip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/htccompressviewer/zip/HtcZip$RetValue;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x2000

.field public static final CRC_BYTE:I = 0xe

.field public static final ENCRYPTY_BYTE:I = 0x6

.field public static final ERR_CREATE_ZIP_FILE:I = -0x4

.field public static final ERR_CREATE_ZIP_FILE_OBJECT:I = -0x3

.field public static final ERR_EXCEPTION:I = -0x5

.field public static final ERR_SRC_FILE_EXIST:I = -0x1

.field public static final ERR_ZIP_FILE_EXIST:I = -0x2

.field public static final HEADER_BYTE:I = 0x1

.field public static final SUCCESS:I = 0x0

.field public static final ZIP_SUGNATURE:I = 0x504b0304


# instance fields
.field private fileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htccompressviewer/zip/ZipTree$ZipTreeNode;",
            ">;"
        }
    .end annotation
.end field

.field private isInterrupt:Z

.field private mZipTree:Lcom/htc/htccompressviewer/zip/ZipTree;

.field private final subEncoding:Ljava/lang/String;

.field private zipFilePath:Ljava/lang/String;

.field private zipFilesCount:I

.field private zipName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter "zipFilePath"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 63
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean v2, p0, Lcom/htc/htccompressviewer/zip/HtcZip;->isInterrupt:Z

    .line 54
    iput v2, p0, Lcom/htc/htccompressviewer/zip/HtcZip;->zipFilesCount:I

    .line 58
    iput-object v3, p0, Lcom/htc/htccompressviewer/zip/HtcZip;->zipName:Ljava/lang/String;

    .line 64
    const/4 v1, 0x0

    .line 65
    .local v1, slash:I
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 66
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/htccompressviewer/zip/HtcZip;->zipName:Ljava/lang/String;

    .line 67
    iput-object p1, p0, Lcom/htc/htccompressviewer/zip/HtcZip;->zipFilePath:Ljava/lang/String;

    .line 69
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 70
    .local v0, locale:Ljava/util/Locale;
    sget-object v2, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    const-string v2, "Big5"

    iput-object v2, p0, Lcom/htc/htccompressviewer/zip/HtcZip;->subEncoding:Ljava/lang/String;

    .line 78
    :goto_0
    return-void

    .line 72
    :cond_0
    sget-object v2, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 73
    const-string v2, "GBK"

    iput-object v2, p0, Lcom/htc/htccompressviewer/zip/HtcZip;->subEncoding:Ljava/lang/String;

    goto :goto_0

    .line 76
    :cond_1
    iput-object v3, p0, Lcom/htc/htccompressviewer/zip/HtcZip;->subEncoding:Ljava/lang/String;

    goto :goto_0
.end method

.method private declared-synchronized UncompressSingleFile(Ljava/lang/String;Lcom/htc/htccompressviewer/zip/ZipFile;)Lcom/htc/htccompressviewer/zip/HtcZip$RetValue;
    .locals 26
    .parameter "zipInnerPath"
    .parameter "zipFile"

    .prologue
    .line 213
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccompressviewer/zip/HtcZip;->zipFilePath:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccompressviewer/zip/HtcZip;->zipFilePath:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    add-int/lit8 v24, v24, -0x4

    invoke-virtual/range {v22 .. v24}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 214
    .local v20, targetPath:Ljava/lang/String;
    new-instance v4, Ljava/util/zip/CRC32;

    invoke-direct {v4}, Ljava/util/zip/CRC32;-><init>()V

    .line 215
    .local v4, crc:Ljava/util/zip/CRC32;
    const/4 v15, 0x0

    .line 216
    .local v15, outFile:Ljava/io/File;
    const/16 v18, 0x0

    .line 217
    .local v18, srcZipFile:Ljava/io/File;
    new-instance v17, Lcom/htc/htccompressviewer/zip/HtcZip$RetValue;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/htccompressviewer/zip/HtcZip$RetValue;-><init>(Lcom/htc/htccompressviewer/zip/HtcZip;)V

    .line 218
    .local v17, ret:Lcom/htc/htccompressviewer/zip/HtcZip$RetValue;
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v17

    iput v0, v1, Lcom/htc/htccompressviewer/zip/HtcZip$RetValue;->mRetStatus:I

    .line 219
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/htc/htccompressviewer/zip/HtcZip$RetValue;->mFileName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 220
    const/4 v14, 0x1

    .line 223
    .local v14, isInputZipFileNull:Z
    :try_start_1
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccompressviewer/zip/HtcZip;->zipFilePath:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_4

    .line 224
    .end local v18           #srcZipFile:Ljava/io/File;
    .local v19, srcZipFile:Ljava/io/File;
    :try_start_2
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v22

    if-nez v22, :cond_3

    .line 225
    const/16 v22, -0x6

    move/from16 v0, v22

    move-object/from16 v1, v17

    iput v0, v1, Lcom/htc/htccompressviewer/zip/HtcZip$RetValue;->mRetStatus:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_9

    .line 312
    :try_start_3
    move-object/from16 v0, v17

    iget v0, v0, Lcom/htc/htccompressviewer/zip/HtcZip$RetValue;->mRetStatus:I

    move/from16 v22, v0

    if-eqz v22, :cond_0

    if-eqz v15, :cond_0

    throw v15

    move-result v22

    if-eqz v22, :cond_0

    .line 313
    throw v15

    .line 316
    :cond_0
    if-nez v14, :cond_1

    if-eqz p2, :cond_1

    .line 317
    invoke-virtual/range {p2 .. p2}, Lcom/htc/htccompressviewer/zip/ZipFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_13
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_12

    :cond_1
    :goto_0
    move-object/from16 v18, v19

    .line 329
    .end local v19           #srcZipFile:Ljava/io/File;
    .restart local v18       #srcZipFile:Ljava/io/File;
    :cond_2
    :goto_1
    monitor-exit p0

    return-object v17

    .line 228
    .end local v18           #srcZipFile:Ljava/io/File;
    .restart local v19       #srcZipFile:Ljava/io/File;
    :cond_3
    if-nez p2, :cond_4

    .line 229
    :try_start_4
    new-instance v21, Lcom/htc/htccompressviewer/zip/ZipFile;

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccompressviewer/zip/HtcZip;->subEncoding:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/htccompressviewer/zip/ZipFile;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    .end local p2
    .local v21, zipFile:Lcom/htc/htccompressviewer/zip/ZipFile;
    const/4 v14, 0x0

    move-object/from16 p2, v21

    .line 232
    .end local v21           #zipFile:Lcom/htc/htccompressviewer/zip/ZipFile;
    .restart local p2
    :cond_4
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/htccompressviewer/zip/ZipFile;->getEntry(Ljava/lang/String;)Lcom/htc/htccompressviewer/zip/ZipEntry;

    move-result-object v10

    .line 233
    .local v10, entry:Lcom/htc/htccompressviewer/zip/ZipEntry;
    if-nez v10, :cond_7

    .line 234
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, v17

    iput v0, v1, Lcom/htc/htccompressviewer/zip/HtcZip$RetValue;->mRetStatus:I

    .line 235
    invoke-virtual/range {p2 .. p2}, Lcom/htc/htccompressviewer/zip/ZipFile;->close()V

    .line 236
    const-string v22, "HtcCompressViewer"

    const-string v23, "UncompressSingleFile entry == null"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_9

    .line 312
    :try_start_5
    move-object/from16 v0, v17

    iget v0, v0, Lcom/htc/htccompressviewer/zip/HtcZip$RetValue;->mRetStatus:I

    move/from16 v22, v0

    if-eqz v22, :cond_5

    if-eqz v15, :cond_5

    throw v15

    move-result v22

    if-eqz v22, :cond_5

    .line 313
    throw v15

    .line 316
    :cond_5
    if-nez v14, :cond_6

    if-eqz p2, :cond_6

    .line 317
    invoke-virtual/range {p2 .. p2}, Lcom/htc/htccompressviewer/zip/ZipFile;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_11
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_10

    :cond_6
    :goto_2
    move-object/from16 v18, v19

    .line 327
    .end local v19           #srcZipFile:Ljava/io/File;
    .restart local v18       #srcZipFile:Ljava/io/File;
    goto :goto_1

    .line 240
    .end local v18           #srcZipFile:Ljava/io/File;
    .restart local v19       #srcZipFile:Ljava/io/File;
    :cond_7
    :try_start_6
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/htccompressviewer/zip/HtcZip$RetValue;->mFileName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_9

    .line 241
    .end local v15           #outFile:Ljava/io/File;
    .local v16, outFile:Ljava/io/File;
    :try_start_7
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    .line 242
    .local v8, destinationParent:Ljava/io/File;
    invoke-virtual {v4}, Ljava/util/zip/CRC32;->reset()V

    .line 243
    invoke-virtual {v10}, Lcom/htc/htccompressviewer/zip/ZipEntry;->getSize()J

    move-result-wide v22

    invoke-direct/range {p0 .. p0}, Lcom/htc/htccompressviewer/zip/HtcZip;->getCurStorageFreeSpace()J

    move-result-wide v24

    cmp-long v22, v22, v24

    if-lez v22, :cond_a

    .line 245
    const/16 v22, -0x2

    move/from16 v0, v22

    move-object/from16 v1, v17

    iput v0, v1, Lcom/htc/htccompressviewer/zip/HtcZip$RetValue;->mRetStatus:I

    .line 246
    invoke-virtual/range {p2 .. p2}, Lcom/htc/htccompressviewer/zip/ZipFile;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_a

    .line 312
    :try_start_8
    move-object/from16 v0, v17

    iget v0, v0, Lcom/htc/htccompressviewer/zip/HtcZip$RetValue;->mRetStatus:I

    move/from16 v22, v0

    if-eqz v22, :cond_8

    if-eqz v16, :cond_8

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_8

    .line 313
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    .line 316
    :cond_8
    if-nez v14, :cond_9

    if-eqz p2, :cond_9

    .line 317
    invoke-virtual/range {p2 .. p2}, Lcom/htc/htccompressviewer/zip/ZipFile;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_f
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_e

    :cond_9
    :goto_3
    move-object/from16 v18, v19

    .end local v19           #srcZipFile:Ljava/io/File;
    .restart local v18       #srcZipFile:Ljava/io/File;
    move-object/from16 v15, v16

    .line 327
    .end local v16           #outFile:Ljava/io/File;
    .restart local v15       #outFile:Ljava/io/File;
    goto/16 :goto_1

    .line 250
    .end local v15           #outFile:Ljava/io/File;
    .end local v18           #srcZipFile:Ljava/io/File;
    .restart local v16       #outFile:Ljava/io/File;
    .restart local v19       #srcZipFile:Ljava/io/File;
    :cond_a
    :try_start_9
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_17

    .line 251
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/htccompressviewer/zip/HtcZip$RetValue;->mFileName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/htc/htccompressviewer/zip/HtcZip;->handleFileRename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/htc/htccompressviewer/zip/HtcZip$RetValue;->mFileName:Ljava/lang/String;

    .line 252
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/htccompressviewer/zip/HtcZip$RetValue;->mFileName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_d
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_9} :catch_a

    .line 254
    .end local v16           #outFile:Ljava/io/File;
    .restart local v15       #outFile:Ljava/io/File;
    :goto_4
    :try_start_a
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 256
    new-instance v13, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lcom/htc/htccompressviewer/zip/ZipFile;->getInputStream(Lcom/htc/htccompressviewer/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v22

    const/16 v23, 0x2000

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v13, v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 260
    .local v13, is:Ljava/io/BufferedInputStream;
    const/16 v22, 0x2000

    move/from16 v0, v22

    new-array v6, v0, [B

    .line 263
    .local v6, data:[B
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 264
    .local v11, fos:Ljava/io/FileOutputStream;
    new-instance v7, Ljava/io/BufferedOutputStream;

    const/16 v22, 0x2000

    move/from16 v0, v22

    invoke-direct {v7, v11, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 265
    .local v7, dest:Ljava/io/BufferedOutputStream;
    const/16 v22, 0x0

    const/16 v23, 0x2000

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v13, v6, v0, v1}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v5

    .line 267
    .local v5, currentByte:I
    const/16 v23, 0x0

    const/16 v22, -0x1

    move/from16 v0, v22

    if-ne v5, v0, :cond_10

    const/16 v22, 0x0

    :goto_5
    move/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v4, v6, v0, v1}, Ljava/util/zip/CRC32;->update([BII)V

    .line 270
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/htccompressviewer/zip/HtcZip;->isInterrupt:Z

    move/from16 v22, v0

    if-eqz v22, :cond_b

    const/16 v22, -0x1

    move/from16 v0, v22

    if-ne v5, v0, :cond_b

    .line 271
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/htccompressviewer/zip/HtcZip;->isInterrupt:Z

    .line 272
    const/16 v22, -0x4

    move/from16 v0, v22

    move-object/from16 v1, v17

    iput v0, v1, Lcom/htc/htccompressviewer/zip/HtcZip$RetValue;->mRetStatus:I

    .line 276
    :cond_b
    :goto_6
    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v5, v0, :cond_c

    .line 277
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/htccompressviewer/zip/HtcZip;->isInterrupt:Z

    move/from16 v22, v0

    if-eqz v22, :cond_11

    .line 278
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/htccompressviewer/zip/HtcZip;->isInterrupt:Z

    .line 279
    const/16 v22, -0x4

    move/from16 v0, v22

    move-object/from16 v1, v17

    iput v0, v1, Lcom/htc/htccompressviewer/zip/HtcZip$RetValue;->mRetStatus:I

    .line 289
    :cond_c
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V

    .line 290
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    .line 291
    invoke-virtual {v13}, Ljava/io/BufferedInputStream;->close()V

    .line 293
    move-object/from16 v0, v17

    iget v0, v0, Lcom/htc/htccompressviewer/zip/HtcZip$RetValue;->mRetStatus:I

    move/from16 v22, v0

    if-nez v22, :cond_d

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/htccompressviewer/zip/ZipFile;->getEntry(Ljava/lang/String;)Lcom/htc/htccompressviewer/zip/ZipEntry;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/htc/htccompressviewer/zip/ZipEntry;->getCrc()J

    move-result-wide v22

    invoke-virtual {v4}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v24

    cmp-long v22, v22, v24

    if-eqz v22, :cond_d

    .line 294
    const/16 v22, -0x3

    move/from16 v0, v22

    move-object/from16 v1, v17

    iput v0, v1, Lcom/htc/htccompressviewer/zip/HtcZip$RetValue;->mRetStatus:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_a} :catch_9

    .line 312
    :cond_d
    :try_start_b
    move-object/from16 v0, v17

    iget v0, v0, Lcom/htc/htccompressviewer/zip/HtcZip$RetValue;->mRetStatus:I

    move/from16 v22, v0

    if-eqz v22, :cond_e

    if-eqz v15, :cond_e

    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_e

    .line 313
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    .line 316
    :cond_e
    if-nez v14, :cond_f

    if-eqz p2, :cond_f

    .line 317
    invoke-virtual/range {p2 .. p2}, Lcom/htc/htccompressviewer/zip/ZipFile;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    :cond_f
    move-object/from16 v18, v19

    .line 327
    .end local v19           #srcZipFile:Ljava/io/File;
    .restart local v18       #srcZipFile:Ljava/io/File;
    goto/16 :goto_1

    .end local v18           #srcZipFile:Ljava/io/File;
    .restart local v19       #srcZipFile:Ljava/io/File;
    :cond_10
    move/from16 v22, v5

    .line 267
    goto/16 :goto_5

    .line 283
    :cond_11
    const/16 v22, 0x0

    :try_start_c
    move/from16 v0, v22

    invoke-virtual {v7, v6, v0, v5}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 284
    const/16 v22, 0x0

    const/16 v23, 0x2000

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v13, v6, v0, v1}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v5

    .line 285
    const/16 v23, 0x0

    const/16 v22, -0x1

    move/from16 v0, v22

    if-ne v5, v0, :cond_13

    const/16 v22, 0x0

    :goto_7
    move/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v4, v6, v0, v1}, Ljava/util/zip/CRC32;->update([BII)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_c} :catch_9

    goto/16 :goto_6

    .line 298
    .end local v5           #currentByte:I
    .end local v6           #data:[B
    .end local v7           #dest:Ljava/io/BufferedOutputStream;
    .end local v8           #destinationParent:Ljava/io/File;
    .end local v10           #entry:Lcom/htc/htccompressviewer/zip/ZipEntry;
    .end local v11           #fos:Ljava/io/FileOutputStream;
    .end local v13           #is:Ljava/io/BufferedInputStream;
    :catch_0
    move-exception v12

    move-object/from16 v18, v19

    .line 301
    .end local v19           #srcZipFile:Ljava/io/File;
    .local v12, ioe:Ljava/io/IOException;
    .restart local v18       #srcZipFile:Ljava/io/File;
    :goto_8
    const/16 v22, -0x1

    :try_start_d
    move/from16 v0, v22

    move-object/from16 v1, v17

    iput v0, v1, Lcom/htc/htccompressviewer/zip/HtcZip$RetValue;->mRetStatus:I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 312
    :try_start_e
    move-object/from16 v0, v17

    iget v0, v0, Lcom/htc/htccompressviewer/zip/HtcZip$RetValue;->mRetStatus:I

    move/from16 v22, v0

    if-eqz v22, :cond_12

    if-eqz v15, :cond_12

    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_12

    .line 313
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    .line 316
    :cond_12
    if-nez v14, :cond_2

    if-eqz p2, :cond_2

    .line 317
    invoke-virtual/range {p2 .. p2}, Lcom/htc/htccompressviewer/zip/ZipFile;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
    .catch Ljava/lang/SecurityException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_b

    goto/16 :goto_1

    .line 320
    :catch_1
    move-exception v22

    goto/16 :goto_1

    .end local v12           #ioe:Ljava/io/IOException;
    .end local v18           #srcZipFile:Ljava/io/File;
    .restart local v5       #currentByte:I
    .restart local v6       #data:[B
    .restart local v7       #dest:Ljava/io/BufferedOutputStream;
    .restart local v8       #destinationParent:Ljava/io/File;
    .restart local v10       #entry:Lcom/htc/htccompressviewer/zip/ZipEntry;
    .restart local v11       #fos:Ljava/io/FileOutputStream;
    .restart local v13       #is:Ljava/io/BufferedInputStream;
    .restart local v19       #srcZipFile:Ljava/io/File;
    :cond_13
    move/from16 v22, v5

    .line 285
    goto :goto_7

    .line 320
    :catch_2
    move-exception v22

    move-object/from16 v18, v19

    .line 327
    .end local v19           #srcZipFile:Ljava/io/File;
    .restart local v18       #srcZipFile:Ljava/io/File;
    goto/16 :goto_1

    .line 324
    .end local v18           #srcZipFile:Ljava/io/File;
    .restart local v19       #srcZipFile:Ljava/io/File;
    :catch_3
    move-exception v22

    move-object/from16 v18, v19

    .line 328
    .end local v19           #srcZipFile:Ljava/io/File;
    .restart local v18       #srcZipFile:Ljava/io/File;
    goto/16 :goto_1

    .line 303
    .end local v5           #currentByte:I
    .end local v6           #data:[B
    .end local v7           #dest:Ljava/io/BufferedOutputStream;
    .end local v8           #destinationParent:Ljava/io/File;
    .end local v10           #entry:Lcom/htc/htccompressviewer/zip/ZipEntry;
    .end local v11           #fos:Ljava/io/FileOutputStream;
    .end local v13           #is:Ljava/io/BufferedInputStream;
    :catch_4
    move-exception v9

    .line 306
    .local v9, e:Ljava/lang/ClassCastException;
    :goto_9
    const/16 v22, -0x1

    :try_start_f
    move/from16 v0, v22

    move-object/from16 v1, v17

    iput v0, v1, Lcom/htc/htccompressviewer/zip/HtcZip$RetValue;->mRetStatus:I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 312
    :try_start_10
    move-object/from16 v0, v17

    iget v0, v0, Lcom/htc/htccompressviewer/zip/HtcZip$RetValue;->mRetStatus:I

    move/from16 v22, v0

    if-eqz v22, :cond_14

    if-eqz v15, :cond_14

    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_14

    .line 313
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    .line 316
    :cond_14
    if-nez v14, :cond_2

    if-eqz p2, :cond_2

    .line 317
    invoke-virtual/range {p2 .. p2}, Lcom/htc/htccompressviewer/zip/ZipFile;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1
    .catch Ljava/lang/SecurityException; {:try_start_10 .. :try_end_10} :catch_5
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_8

    goto/16 :goto_1

    .line 320
    :catch_5
    move-exception v22

    goto/16 :goto_1

    .line 310
    .end local v9           #e:Ljava/lang/ClassCastException;
    :catchall_0
    move-exception v22

    .line 312
    :goto_a
    :try_start_11
    move-object/from16 v0, v17

    iget v0, v0, Lcom/htc/htccompressviewer/zip/HtcZip$RetValue;->mRetStatus:I

    move/from16 v23, v0

    if-eqz v23, :cond_15

    if-eqz v15, :cond_15

    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_15

    .line 313
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    .line 316
    :cond_15
    if-nez v14, :cond_16

    if-eqz p2, :cond_16

    .line 317
    invoke-virtual/range {p2 .. p2}, Lcom/htc/htccompressviewer/zip/ZipFile;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1
    .catch Ljava/lang/SecurityException; {:try_start_11 .. :try_end_11} :catch_7
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_6

    .line 327
    :cond_16
    :goto_b
    :try_start_12
    throw v22
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 213
    .end local v4           #crc:Ljava/util/zip/CRC32;
    .end local v14           #isInputZipFileNull:Z
    .end local v15           #outFile:Ljava/io/File;
    .end local v17           #ret:Lcom/htc/htccompressviewer/zip/HtcZip$RetValue;
    .end local v18           #srcZipFile:Ljava/io/File;
    .end local v20           #targetPath:Ljava/lang/String;
    :catchall_1
    move-exception v22

    monitor-exit p0

    throw v22

    .line 324
    .restart local v4       #crc:Ljava/util/zip/CRC32;
    .restart local v14       #isInputZipFileNull:Z
    .restart local v15       #outFile:Ljava/io/File;
    .restart local v17       #ret:Lcom/htc/htccompressviewer/zip/HtcZip$RetValue;
    .restart local v18       #srcZipFile:Ljava/io/File;
    .restart local v20       #targetPath:Ljava/lang/String;
    :catch_6
    move-exception v23

    goto :goto_b

    .line 320
    :catch_7
    move-exception v23

    goto :goto_b

    .line 310
    .end local v18           #srcZipFile:Ljava/io/File;
    .restart local v19       #srcZipFile:Ljava/io/File;
    :catchall_2
    move-exception v22

    move-object/from16 v18, v19

    .end local v19           #srcZipFile:Ljava/io/File;
    .restart local v18       #srcZipFile:Ljava/io/File;
    goto :goto_a

    .end local v15           #outFile:Ljava/io/File;
    .end local v18           #srcZipFile:Ljava/io/File;
    .restart local v10       #entry:Lcom/htc/htccompressviewer/zip/ZipEntry;
    .restart local v16       #outFile:Ljava/io/File;
    .restart local v19       #srcZipFile:Ljava/io/File;
    :catchall_3
    move-exception v22

    move-object/from16 v18, v19

    .end local v19           #srcZipFile:Ljava/io/File;
    .restart local v18       #srcZipFile:Ljava/io/File;
    move-object/from16 v15, v16

    .end local v16           #outFile:Ljava/io/File;
    .restart local v15       #outFile:Ljava/io/File;
    goto :goto_a

    .line 324
    .end local v10           #entry:Lcom/htc/htccompressviewer/zip/ZipEntry;
    .restart local v9       #e:Ljava/lang/ClassCastException;
    :catch_8
    move-exception v22

    goto/16 :goto_1

    .line 303
    .end local v9           #e:Ljava/lang/ClassCastException;
    .end local v18           #srcZipFile:Ljava/io/File;
    .restart local v19       #srcZipFile:Ljava/io/File;
    :catch_9
    move-exception v9

    move-object/from16 v18, v19

    .end local v19           #srcZipFile:Ljava/io/File;
    .restart local v18       #srcZipFile:Ljava/io/File;
    goto :goto_9

    .end local v15           #outFile:Ljava/io/File;
    .end local v18           #srcZipFile:Ljava/io/File;
    .restart local v10       #entry:Lcom/htc/htccompressviewer/zip/ZipEntry;
    .restart local v16       #outFile:Ljava/io/File;
    .restart local v19       #srcZipFile:Ljava/io/File;
    :catch_a
    move-exception v9

    move-object/from16 v18, v19

    .end local v19           #srcZipFile:Ljava/io/File;
    .restart local v18       #srcZipFile:Ljava/io/File;
    move-object/from16 v15, v16

    .end local v16           #outFile:Ljava/io/File;
    .restart local v15       #outFile:Ljava/io/File;
    goto :goto_9

    .line 324
    .end local v10           #entry:Lcom/htc/htccompressviewer/zip/ZipEntry;
    .restart local v12       #ioe:Ljava/io/IOException;
    :catch_b
    move-exception v22

    goto/16 :goto_1

    .line 298
    .end local v12           #ioe:Ljava/io/IOException;
    :catch_c
    move-exception v12

    goto/16 :goto_8

    .end local v15           #outFile:Ljava/io/File;
    .end local v18           #srcZipFile:Ljava/io/File;
    .restart local v10       #entry:Lcom/htc/htccompressviewer/zip/ZipEntry;
    .restart local v16       #outFile:Ljava/io/File;
    .restart local v19       #srcZipFile:Ljava/io/File;
    :catch_d
    move-exception v12

    move-object/from16 v18, v19

    .end local v19           #srcZipFile:Ljava/io/File;
    .restart local v18       #srcZipFile:Ljava/io/File;
    move-object/from16 v15, v16

    .end local v16           #outFile:Ljava/io/File;
    .restart local v15       #outFile:Ljava/io/File;
    goto/16 :goto_8

    .line 324
    .end local v15           #outFile:Ljava/io/File;
    .end local v18           #srcZipFile:Ljava/io/File;
    .restart local v8       #destinationParent:Ljava/io/File;
    .restart local v16       #outFile:Ljava/io/File;
    .restart local v19       #srcZipFile:Ljava/io/File;
    :catch_e
    move-exception v22

    goto/16 :goto_3

    .line 320
    :catch_f
    move-exception v22

    goto/16 :goto_3

    .line 324
    .end local v8           #destinationParent:Ljava/io/File;
    .end local v16           #outFile:Ljava/io/File;
    .restart local v15       #outFile:Ljava/io/File;
    :catch_10
    move-exception v22

    goto/16 :goto_2

    .line 320
    :catch_11
    move-exception v22

    goto/16 :goto_2

    .line 324
    .end local v10           #entry:Lcom/htc/htccompressviewer/zip/ZipEntry;
    :catch_12
    move-exception v22

    goto/16 :goto_0

    .line 320
    :catch_13
    move-exception v22

    goto/16 :goto_0

    .end local v15           #outFile:Ljava/io/File;
    .restart local v8       #destinationParent:Ljava/io/File;
    .restart local v10       #entry:Lcom/htc/htccompressviewer/zip/ZipEntry;
    .restart local v16       #outFile:Ljava/io/File;
    :cond_17
    move-object/from16 v15, v16

    .end local v16           #outFile:Ljava/io/File;
    .restart local v15       #outFile:Ljava/io/File;
    goto/16 :goto_4
.end method

.method private final getCurStorageFreeSpace()J
    .locals 10

    .prologue
    .line 470
    const/4 v7, 0x0

    .line 471
    .local v7, tmpFile:Ljava/io/File;
    const-wide/16 v0, -0x1

    .line 472
    .local v0, AvailableMemory:J
    const-wide/16 v2, 0x0

    .line 473
    .local v2, BlkSize:J
    const-wide/16 v4, 0x0

    .line 475
    .local v4, avaBlock:J
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    .line 477
    if-eqz v7, :cond_0

    .line 478
    new-instance v6, Landroid/os/StatFs;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 479
    .local v6, curFS:Landroid/os/StatFs;
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v2, v8

    .line 480
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-lez v8, :cond_0

    .line 481
    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v8

    int-to-long v4, v8

    .line 482
    const-wide/16 v8, 0x4

    sub-long v8, v4, v8

    mul-long v0, v8, v2

    .line 488
    .end local v6           #curFS:Landroid/os/StatFs;
    :cond_0
    return-wide v0
.end method

.method private handleFileRename(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "curEntry"

    .prologue
    .line 432
    const-string v6, "."

    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 438
    .local v0, dot:I
    const/4 v6, -0x1

    if-ne v0, v6, :cond_1

    .line 439
    const-string v1, ""

    .line 440
    .local v1, extension:Ljava/lang/String;
    move-object v4, p1

    .line 446
    .local v4, preName:Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "zip"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 465
    .end local p1
    :cond_0
    :goto_1
    return-object p1

    .line 442
    .end local v1           #extension:Ljava/lang/String;
    .end local v4           #preName:Ljava/lang/String;
    .restart local p1
    :cond_1
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 443
    .restart local v1       #extension:Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {p1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #preName:Ljava/lang/String;
    goto :goto_0

    .line 450
    :cond_2
    const/4 v2, 0x1

    .local v2, i:I
    :goto_2
    const/16 v6, 0x64

    if-ge v2, v6, :cond_0

    .line 453
    const/16 v6, 0xa

    if-ge v2, v6, :cond_3

    .line 454
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 459
    .local v5, uniqueName:Ljava/lang/String;
    :goto_3
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 460
    .local v3, outFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_4

    move-object p1, v5

    .line 461
    goto :goto_1

    .line 456
    .end local v3           #outFile:Ljava/io/File;
    .end local v5           #uniqueName:Ljava/lang/String;
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #uniqueName:Ljava/lang/String;
    goto :goto_3

    .line 450
    .restart local v3       #outFile:Ljava/io/File;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method


# virtual methods
.method public declared-synchronized UncompressSingleFile(Ljava/lang/String;)Lcom/htc/htccompressviewer/zip/HtcZip$RetValue;
    .locals 1
    .parameter "zipInnerPath"

    .prologue
    .line 207
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/htc/htccompressviewer/zip/HtcZip;->UncompressSingleFile(Ljava/lang/String;Lcom/htc/htccompressviewer/zip/ZipFile;)Lcom/htc/htccompressviewer/zip/HtcZip$RetValue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized asyncUncompressFile(Ljava/lang/String;Ljava/lang/String;Lcom/htc/htccompressviewer/zip/HtcZipUpdater;)Z
    .locals 11
    .parameter "zipPath"
    .parameter "targetPath"
    .parameter "h"

    .prologue
    .line 380
    monitor-enter p0

    const/4 v0, 0x0

    .line 381
    .local v0, currentFileCount:I
    :try_start_0
    new-instance v6, Lcom/htc/htccompressviewer/zip/HtcZip$RetValue;

    invoke-direct {v6, p0}, Lcom/htc/htccompressviewer/zip/HtcZip$RetValue;-><init>(Lcom/htc/htccompressviewer/zip/HtcZip;)V

    .line 382
    .local v6, unZipSingleRet:Lcom/htc/htccompressviewer/zip/HtcZip$RetValue;
    const/4 v9, 0x0

    iput v9, v6, Lcom/htc/htccompressviewer/zip/HtcZip$RetValue;->mRetStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    :try_start_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 386
    .local v5, srcZipFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 387
    const/4 v9, -0x6

    iput v9, v6, Lcom/htc/htccompressviewer/zip/HtcZip$RetValue;->mRetStatus:I

    .line 388
    iget v9, v6, Lcom/htc/htccompressviewer/zip/HtcZip$RetValue;->mRetStatus:I

    iget-object v10, v6, Lcom/htc/htccompressviewer/zip/HtcZip$RetValue;->mFileName:Ljava/lang/String;

    invoke-interface {p3, v0, v9, v10}, Lcom/htc/htccompressviewer/zip/HtcZipUpdater;->update(IILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 389
    const/4 v9, 0x0

    .line 426
    .end local v5           #srcZipFile:Ljava/io/File;
    :goto_0
    monitor-exit p0

    return v9

    .line 391
    .restart local v5       #srcZipFile:Ljava/io/File;
    :cond_0
    :try_start_2
    new-instance v7, Lcom/htc/htccompressviewer/zip/ZipFile;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/htc/htccompressviewer/zip/HtcZip;->subEncoding:Ljava/lang/String;

    invoke-direct {v7, v5, v9, v10}, Lcom/htc/htccompressviewer/zip/ZipFile;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    .local v7, zipFile:Lcom/htc/htccompressviewer/zip/ZipFile;
    invoke-virtual {v7}, Lcom/htc/htccompressviewer/zip/ZipFile;->getEntries()Ljava/util/Enumeration;

    move-result-object v8

    .line 395
    .local v8, zipFileEntries:Ljava/util/Enumeration;
    :cond_1
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 396
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/htccompressviewer/zip/ZipEntry;

    .line 397
    .local v2, entry:Lcom/htc/htccompressviewer/zip/ZipEntry;
    invoke-virtual {v2}, Lcom/htc/htccompressviewer/zip/ZipEntry;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_1

    .line 399
    invoke-virtual {v2}, Lcom/htc/htccompressviewer/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 400
    .local v3, fileName:Ljava/lang/String;
    invoke-direct {p0, v3, v7}, Lcom/htc/htccompressviewer/zip/HtcZip;->UncompressSingleFile(Ljava/lang/String;Lcom/htc/htccompressviewer/zip/ZipFile;)Lcom/htc/htccompressviewer/zip/HtcZip$RetValue;

    move-result-object v6

    .line 401
    add-int/lit8 v0, v0, 0x1

    .line 402
    iget v9, v6, Lcom/htc/htccompressviewer/zip/HtcZip$RetValue;->mRetStatus:I

    iget-object v10, v6, Lcom/htc/htccompressviewer/zip/HtcZip$RetValue;->mFileName:Ljava/lang/String;

    invoke-interface {p3, v0, v9, v10}, Lcom/htc/htccompressviewer/zip/HtcZipUpdater;->update(IILjava/lang/String;)V

    .line 404
    iget v9, v6, Lcom/htc/htccompressviewer/zip/HtcZip$RetValue;->mRetStatus:I

    if-eqz v9, :cond_1

    .line 409
    .end local v2           #entry:Lcom/htc/htccompressviewer/zip/ZipEntry;
    .end local v3           #fileName:Ljava/lang/String;
    :cond_2
    invoke-virtual {v7}, Lcom/htc/htccompressviewer/zip/ZipFile;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1

    .line 422
    :try_start_3
    iget v9, v6, Lcom/htc/htccompressviewer/zip/HtcZip$RetValue;->mRetStatus:I

    if-nez v9, :cond_3

    .line 423
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-interface {p3, v0, v9, v10}, Lcom/htc/htccompressviewer/zip/HtcZipUpdater;->update(IILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 426
    :cond_3
    const/4 v9, 0x1

    goto :goto_0

    .line 411
    .end local v5           #srcZipFile:Ljava/io/File;
    .end local v7           #zipFile:Lcom/htc/htccompressviewer/zip/ZipFile;
    .end local v8           #zipFileEntries:Ljava/util/Enumeration;
    :catch_0
    move-exception v4

    .line 414
    .local v4, ioe:Ljava/io/IOException;
    const/4 v9, 0x0

    goto :goto_0

    .line 416
    .end local v4           #ioe:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 419
    .local v1, e:Ljava/lang/ClassCastException;
    const/4 v9, 0x0

    goto :goto_0

    .line 380
    .end local v1           #e:Ljava/lang/ClassCastException;
    .end local v6           #unZipSingleRet:Lcom/htc/htccompressviewer/zip/HtcZip$RetValue;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9
.end method

.method public getInterrupt()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/htc/htccompressviewer/zip/HtcZip;->isInterrupt:Z

    return v0
.end method

.method public getZipFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/htccompressviewer/zip/HtcZip;->zipFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getZipFilesCount()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/htc/htccompressviewer/zip/HtcZip;->zipFilesCount:I

    return v0
.end method

.method public getZipName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/htc/htccompressviewer/zip/HtcZip;->zipName:Ljava/lang/String;

    return-object v0
.end method

.method public getZipTree()Lcom/htc/htccompressviewer/zip/ZipTree;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/htccompressviewer/zip/HtcZip;->mZipTree:Lcom/htc/htccompressviewer/zip/ZipTree;

    return-object v0
.end method

.method public isEncrypt(Ljava/lang/String;)Z
    .locals 4
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .local v1, archive:Ljava/io/RandomAccessFile;
    const-wide/16 v2, 0x6

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 180
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v0

    .line 181
    .local v0, Encrypt_value:B
    and-int/lit8 v2, v0, 0x1

    int-to-byte v0, v2

    .line 182
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 184
    if-nez v0, :cond_0

    .line 185
    const/4 v2, 0x0

    .line 188
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isTargetFilesExist(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .parameter "zipPath"
    .parameter "targetPath"

    .prologue
    const/4 v10, 0x0

    .line 334
    const/4 v0, 0x0

    .line 337
    .local v0, bExist:Z
    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 338
    .local v6, srcZipFile:Ljava/io/File;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 339
    .local v7, targetFile:Ljava/io/File;
    new-instance v8, Lcom/htc/htccompressviewer/zip/ZipFile;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/htc/htccompressviewer/zip/HtcZip;->subEncoding:Ljava/lang/String;

    invoke-direct {v8, v6, v11, v12}, Lcom/htc/htccompressviewer/zip/ZipFile;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    .local v8, zipFile:Lcom/htc/htccompressviewer/zip/ZipFile;
    invoke-virtual {v8}, Lcom/htc/htccompressviewer/zip/ZipFile;->getEntries()Ljava/util/Enumeration;

    move-result-object v9

    .line 345
    .local v9, zipFileEntries:Ljava/util/Enumeration;
    :cond_0
    invoke-interface {v9}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 347
    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/htccompressviewer/zip/ZipEntry;

    .line 349
    .local v3, entry:Lcom/htc/htccompressviewer/zip/ZipEntry;
    invoke-virtual {v3}, Lcom/htc/htccompressviewer/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    .line 350
    .local v1, curEntry:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v7, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 353
    .local v5, outFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 354
    const/4 v0, 0x1

    .line 358
    .end local v1           #curEntry:Ljava/lang/String;
    .end local v3           #entry:Lcom/htc/htccompressviewer/zip/ZipEntry;
    .end local v5           #outFile:Ljava/io/File;
    :cond_1
    invoke-virtual {v8}, Lcom/htc/htccompressviewer/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move v10, v0

    .line 370
    .end local v6           #srcZipFile:Ljava/io/File;
    .end local v7           #targetFile:Ljava/io/File;
    .end local v8           #zipFile:Lcom/htc/htccompressviewer/zip/ZipFile;
    .end local v9           #zipFileEntries:Ljava/util/Enumeration;
    :goto_0
    return v10

    .line 360
    :catch_0
    move-exception v4

    .line 363
    .local v4, ioe:Ljava/io/IOException;
    goto :goto_0

    .line 365
    .end local v4           #ioe:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 368
    .local v2, e:Ljava/lang/ClassCastException;
    goto :goto_0
.end method

.method public isZipFile(Ljava/lang/String;)Z
    .locals 4
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v0, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .local v0, archive:Ljava/io/RandomAccessFile;
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 197
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    .line 198
    .local v1, signature:I
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 200
    const v2, 0x504b0304

    if-eq v1, v2, :cond_0

    .line 201
    const/4 v2, 0x0

    .line 203
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public declared-synchronized listUncompressFile(Ljava/lang/String;)I
    .locals 12
    .parameter "zipPath"

    .prologue
    const/4 v9, -0x7

    const/4 v8, 0x0

    const/4 v7, -0x5

    .line 106
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    .local v2, srcZipFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v10

    if-nez v10, :cond_1

    .line 109
    const/4 v7, -0x6

    .line 171
    :cond_0
    :goto_0
    monitor-exit p0

    return v7

    .line 111
    :cond_1
    const/4 v4, 0x0

    .line 112
    .local v4, zipFile:Lcom/htc/htccompressviewer/zip/ZipFile;
    const/4 v10, 0x0

    :try_start_1
    iput v10, p0, Lcom/htc/htccompressviewer/zip/HtcZip;->zipFilesCount:I

    .line 115
    const-string v10, "/"

    invoke-virtual {p1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 116
    .local v3, token:[Ljava/lang/String;
    array-length v10, v3

    add-int/lit8 v10, v10, -0x1

    aget-object v10, v3, v10

    iput-object v10, p0, Lcom/htc/htccompressviewer/zip/HtcZip;->zipName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 119
    :try_start_2
    new-instance v5, Lcom/htc/htccompressviewer/zip/ZipFile;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/htc/htccompressviewer/zip/HtcZip;->subEncoding:Ljava/lang/String;

    invoke-direct {v5, v2, v10, v11}, Lcom/htc/htccompressviewer/zip/ZipFile;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    .line 120
    .end local v4           #zipFile:Lcom/htc/htccompressviewer/zip/ZipFile;
    .local v5, zipFile:Lcom/htc/htccompressviewer/zip/ZipFile;
    :try_start_3
    iput-object p1, p0, Lcom/htc/htccompressviewer/zip/HtcZip;->zipFilePath:Ljava/lang/String;

    .line 122
    new-instance v10, Lcom/htc/htccompressviewer/zip/ZipTree;

    invoke-direct {v10, p1}, Lcom/htc/htccompressviewer/zip/ZipTree;-><init>(Ljava/lang/String;)V

    iput-object v10, p0, Lcom/htc/htccompressviewer/zip/HtcZip;->mZipTree:Lcom/htc/htccompressviewer/zip/ZipTree;

    .line 124
    invoke-virtual {v5}, Lcom/htc/htccompressviewer/zip/ZipFile;->getEntries()Ljava/util/Enumeration;

    move-result-object v6

    .line 126
    .local v6, zipFileEntries:Ljava/util/Enumeration;
    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 127
    iget-boolean v10, p0, Lcom/htc/htccompressviewer/zip/HtcZip;->isInterrupt:Z

    if-eqz v10, :cond_3

    .line 128
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/htc/htccompressviewer/zip/HtcZip;->isInterrupt:Z

    .line 129
    invoke-virtual {v5}, Lcom/htc/htccompressviewer/zip/ZipFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_9

    .line 161
    if-eqz v5, :cond_0

    .line 162
    :try_start_4
    invoke-virtual {v5}, Lcom/htc/htccompressviewer/zip/ZipFile;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 165
    :catch_0
    move-exception v8

    goto :goto_0

    .line 132
    :cond_3
    :try_start_5
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/htccompressviewer/zip/ZipEntry;

    .line 133
    .local v1, entry:Lcom/htc/htccompressviewer/zip/ZipEntry;
    invoke-virtual {v1}, Lcom/htc/htccompressviewer/zip/ZipEntry;->isDirectory()Z

    move-result v10

    if-nez v10, :cond_2

    .line 134
    iget-object v10, p0, Lcom/htc/htccompressviewer/zip/HtcZip;->mZipTree:Lcom/htc/htccompressviewer/zip/ZipTree;

    invoke-virtual {v1}, Lcom/htc/htccompressviewer/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/htc/htccompressviewer/zip/ZipTree;->addFile(Ljava/lang/String;)V

    .line 135
    iget v10, p0, Lcom/htc/htccompressviewer/zip/HtcZip;->zipFilesCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/htc/htccompressviewer/zip/HtcZip;->zipFilesCount:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_9

    goto :goto_1

    .line 141
    .end local v1           #entry:Lcom/htc/htccompressviewer/zip/ZipEntry;
    .end local v6           #zipFileEntries:Ljava/util/Enumeration;
    :catch_1
    move-exception v0

    move-object v4, v5

    .line 144
    .end local v5           #zipFile:Lcom/htc/htccompressviewer/zip/ZipFile;
    .local v0, e:Ljava/io/IOException;
    .restart local v4       #zipFile:Lcom/htc/htccompressviewer/zip/ZipFile;
    :goto_2
    const/4 v8, 0x0

    :try_start_6
    iput-object v8, p0, Lcom/htc/htccompressviewer/zip/HtcZip;->mZipTree:Lcom/htc/htccompressviewer/zip/ZipTree;

    .line 145
    iget-boolean v8, p0, Lcom/htc/htccompressviewer/zip/HtcZip;->isInterrupt:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v8, :cond_6

    .line 161
    if-eqz v4, :cond_0

    .line 162
    :try_start_7
    invoke-virtual {v4}, Lcom/htc/htccompressviewer/zip/ZipFile;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_0

    .line 165
    :catch_2
    move-exception v8

    goto :goto_0

    .line 161
    .end local v0           #e:Ljava/io/IOException;
    .end local v4           #zipFile:Lcom/htc/htccompressviewer/zip/ZipFile;
    .restart local v5       #zipFile:Lcom/htc/htccompressviewer/zip/ZipFile;
    .restart local v6       #zipFileEntries:Ljava/util/Enumeration;
    :cond_4
    if-eqz v5, :cond_5

    .line 162
    :try_start_8
    invoke-virtual {v5}, Lcom/htc/htccompressviewer/zip/ZipFile;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :cond_5
    :goto_3
    move v7, v8

    .line 171
    goto :goto_0

    .line 161
    .end local v5           #zipFile:Lcom/htc/htccompressviewer/zip/ZipFile;
    .end local v6           #zipFileEntries:Ljava/util/Enumeration;
    .restart local v0       #e:Ljava/io/IOException;
    .restart local v4       #zipFile:Lcom/htc/htccompressviewer/zip/ZipFile;
    :cond_6
    if-eqz v4, :cond_7

    .line 162
    :try_start_9
    invoke-virtual {v4}, Lcom/htc/htccompressviewer/zip/ZipFile;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :cond_7
    :goto_4
    move v7, v9

    .line 168
    goto :goto_0

    .line 150
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 153
    .local v0, e:Ljava/lang/RuntimeException;
    :goto_5
    const/4 v8, 0x0

    :try_start_a
    iput-object v8, p0, Lcom/htc/htccompressviewer/zip/HtcZip;->mZipTree:Lcom/htc/htccompressviewer/zip/ZipTree;

    .line 154
    iget-boolean v8, p0, Lcom/htc/htccompressviewer/zip/HtcZip;->isInterrupt:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v8, :cond_8

    .line 161
    if-eqz v4, :cond_0

    .line 162
    :try_start_b
    invoke-virtual {v4}, Lcom/htc/htccompressviewer/zip/ZipFile;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_0

    .line 165
    :catch_4
    move-exception v8

    goto/16 :goto_0

    .line 161
    :cond_8
    if-eqz v4, :cond_9

    .line 162
    :try_start_c
    invoke-virtual {v4}, Lcom/htc/htccompressviewer/zip/ZipFile;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    :cond_9
    :goto_6
    move v7, v9

    .line 168
    goto/16 :goto_0

    .line 160
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v7

    .line 161
    :goto_7
    if-eqz v4, :cond_a

    .line 162
    :try_start_d
    invoke-virtual {v4}, Lcom/htc/htccompressviewer/zip/ZipFile;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    .line 168
    :cond_a
    :goto_8
    :try_start_e
    throw v7
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 106
    .end local v2           #srcZipFile:Ljava/io/File;
    .end local v3           #token:[Ljava/lang/String;
    .end local v4           #zipFile:Lcom/htc/htccompressviewer/zip/ZipFile;
    :catchall_1
    move-exception v7

    monitor-exit p0

    throw v7

    .line 165
    .restart local v2       #srcZipFile:Ljava/io/File;
    .restart local v3       #token:[Ljava/lang/String;
    .restart local v5       #zipFile:Lcom/htc/htccompressviewer/zip/ZipFile;
    .restart local v6       #zipFileEntries:Ljava/util/Enumeration;
    :catch_5
    move-exception v7

    goto :goto_3

    .end local v5           #zipFile:Lcom/htc/htccompressviewer/zip/ZipFile;
    .end local v6           #zipFileEntries:Ljava/util/Enumeration;
    .local v0, e:Ljava/io/IOException;
    .restart local v4       #zipFile:Lcom/htc/htccompressviewer/zip/ZipFile;
    :catch_6
    move-exception v7

    goto :goto_4

    .local v0, e:Ljava/lang/RuntimeException;
    :catch_7
    move-exception v7

    goto :goto_6

    .end local v0           #e:Ljava/lang/RuntimeException;
    :catch_8
    move-exception v8

    goto :goto_8

    .line 160
    .end local v4           #zipFile:Lcom/htc/htccompressviewer/zip/ZipFile;
    .restart local v5       #zipFile:Lcom/htc/htccompressviewer/zip/ZipFile;
    :catchall_2
    move-exception v7

    move-object v4, v5

    .end local v5           #zipFile:Lcom/htc/htccompressviewer/zip/ZipFile;
    .restart local v4       #zipFile:Lcom/htc/htccompressviewer/zip/ZipFile;
    goto :goto_7

    .line 150
    .end local v4           #zipFile:Lcom/htc/htccompressviewer/zip/ZipFile;
    .restart local v5       #zipFile:Lcom/htc/htccompressviewer/zip/ZipFile;
    :catch_9
    move-exception v0

    move-object v4, v5

    .end local v5           #zipFile:Lcom/htc/htccompressviewer/zip/ZipFile;
    .restart local v4       #zipFile:Lcom/htc/htccompressviewer/zip/ZipFile;
    goto :goto_5

    .line 141
    :catch_a
    move-exception v0

    goto :goto_2
.end method

.method public setInterrupt(Z)V
    .locals 0
    .parameter "isInterrupted"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/htc/htccompressviewer/zip/HtcZip;->isInterrupt:Z

    .line 98
    return-void
.end method
