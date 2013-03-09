.class public Lcom/htc/sie/tool/ZipDecompress;
.super Ljava/lang/Object;
.source "ZipDecompress.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x2000

.field private static final TAG:Ljava/lang/String; = "RunX_ZipDecompress"


# instance fields
.field private mZipPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "zipPath"

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/htc/sie/tool/ZipDecompress;->mZipPath:Ljava/lang/String;

    .line 19
    return-void
.end method

.method private checkDirectory(Ljava/lang/String;)V
    .locals 4
    .parameter "dirPath"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 23
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 24
    invoke-virtual {v0, v3, v2}, Ljava/io/File;->setReadable(ZZ)Z

    .line 25
    invoke-virtual {v0, v3, v2}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 27
    :cond_0
    return-void
.end method


# virtual methods
.method public Unzip(Ljava/lang/String;)Z
    .locals 14
    .parameter "unzipPath"

    .prologue
    const/4 v13, 0x1

    .line 91
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    iget-object v10, p0, Lcom/htc/sie/tool/ZipDecompress;->mZipPath:Ljava/lang/String;

    invoke-direct {v4, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 92
    .local v4, fi:Ljava/io/FileInputStream;
    new-instance v9, Ljava/util/zip/ZipInputStream;

    invoke-direct {v9, v4}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 93
    .local v9, zis:Ljava/util/zip/ZipInputStream;
    const/4 v8, 0x0

    .line 94
    .local v8, ze:Ljava/util/zip/ZipEntry;
    const/4 v1, 0x0

    .line 95
    .local v1, bytezero:B
    const/16 v10, 0x2000

    new-array v0, v10, [B

    .line 96
    .local v0, buffer:[B
    :goto_0
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 97
    const-string v10, "RunX_ZipDecompress"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unzipping "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->isDirectory()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v10

    if-eqz v10, :cond_0

    .line 100
    :try_start_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/htc/sie/tool/ZipDecompress;->checkDirectory(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 101
    :catch_0
    move-exception v2

    .line 102
    .local v2, e:Ljava/lang/Exception;
    :try_start_2
    const-string v10, "RunX_ZipDecompress"

    const-string v11, "Unzipping failed."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 123
    .end local v0           #buffer:[B
    .end local v1           #bytezero:B
    .end local v2           #e:Ljava/lang/Exception;
    .end local v4           #fi:Ljava/io/FileInputStream;
    .end local v8           #ze:Ljava/util/zip/ZipEntry;
    .end local v9           #zis:Ljava/util/zip/ZipInputStream;
    :catch_1
    move-exception v2

    .line 124
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v10, "RunX_ZipDecompress"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unzip exception: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .end local v2           #e:Ljava/lang/Exception;
    :goto_1
    return v13

    .line 105
    .restart local v0       #buffer:[B
    .restart local v1       #bytezero:B
    .restart local v4       #fi:Ljava/io/FileInputStream;
    .restart local v8       #ze:Ljava/util/zip/ZipEntry;
    .restart local v9       #zis:Ljava/util/zip/ZipInputStream;
    :cond_0
    :try_start_3
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 106
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 107
    .local v6, fullPath:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    .local v3, f:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 109
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 110
    .local v5, fo:Ljava/io/FileOutputStream;
    const/4 v7, 0x0

    .line 111
    .local v7, length:I
    :goto_2
    invoke-virtual {v9, v0}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v7

    if-lez v7, :cond_1

    .line 112
    const/4 v10, 0x0

    invoke-virtual {v5, v0, v10, v7}, Ljava/io/FileOutputStream;->write([BII)V

    .line 113
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    goto :goto_2

    .line 115
    :cond_1
    const-string v10, "RunX_ZipDecompress"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unzipping "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " OK"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 117
    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Ljava/io/File;->setReadable(ZZ)Z

    .line 118
    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 119
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    goto/16 :goto_0

    .line 122
    .end local v3           #f:Ljava/io/File;
    .end local v5           #fo:Ljava/io/FileOutputStream;
    .end local v6           #fullPath:Ljava/lang/String;
    .end local v7           #length:I
    :cond_2
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method

.method public Unzip2(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .parameter "skuid"
    .parameter "unzipPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 50
    new-instance v7, Ljava/util/zip/ZipFile;

    iget-object v8, p0, Lcom/htc/sie/tool/ZipDecompress;->mZipPath:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 51
    .local v7, zip:Ljava/util/zip/ZipFile;
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 52
    .local v1, entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 53
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    .line 54
    .local v2, entry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_0

    .line 57
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 61
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 62
    .local v3, entryFullName:Ljava/lang/String;
    const-string v8, "/"

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 63
    .local v5, parentIdx:I
    move-object v4, v3

    .line 64
    .local v4, entryName:Ljava/lang/String;
    const/4 v8, -0x1

    if-eq v5, v8, :cond_1

    .line 65
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 67
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .local v0, destination:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 74
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    .line 75
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    .line 76
    .local v6, parentfile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 77
    invoke-virtual {v6, v11, v12}, Ljava/io/File;->setReadable(ZZ)Z

    .line 78
    invoke-virtual {v6, v11, v12}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 80
    .end local v6           #parentfile:Ljava/io/File;
    :cond_2
    const-string v8, "RunX_ZipDecompress"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unzipping "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {v7, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v8

    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v8, v9}, Lcom/htc/sie/tool/FileUtility;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 82
    const-string v8, "RunX_ZipDecompress"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unzipping "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " OK"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {v0, v11, v12}, Ljava/io/File;->setReadable(ZZ)Z

    .line 84
    invoke-virtual {v0, v11, v12}, Ljava/io/File;->setExecutable(ZZ)Z

    goto/16 :goto_0

    .line 86
    .end local v0           #destination:Ljava/io/File;
    .end local v2           #entry:Ljava/util/zip/ZipEntry;
    .end local v3           #entryFullName:Ljava/lang/String;
    .end local v4           #entryName:Ljava/lang/String;
    .end local v5           #parentIdx:I
    :cond_3
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->close()V

    .line 87
    return v11
.end method

.method public UnzipFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "filename"
    .parameter "unzipPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 29
    new-instance v3, Ljava/util/zip/ZipFile;

    iget-object v4, p0, Lcom/htc/sie/tool/ZipDecompress;->mZipPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 30
    .local v3, zip:Ljava/util/zip/ZipFile;
    invoke-virtual {v3, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 31
    .local v1, entry:Ljava/util/zip/ZipEntry;
    if-eqz v1, :cond_1

    .line 32
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, p2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .local v0, destination:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 34
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 35
    .local v2, parentfile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 36
    invoke-virtual {v2, v7, v8}, Ljava/io/File;->setReadable(ZZ)Z

    .line 37
    invoke-virtual {v2, v7, v8}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 39
    .end local v2           #parentfile:Ljava/io/File;
    :cond_0
    const-string v4, "RunX_ZipDecompress"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unzipping "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-virtual {v3, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v4, v5}, Lcom/htc/sie/tool/FileUtility;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 41
    const-string v4, "RunX_ZipDecompress"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unzipping "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " OK"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-virtual {v0, v7, v8}, Ljava/io/File;->setReadable(ZZ)Z

    .line 43
    invoke-virtual {v0, v7, v8}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 45
    .end local v0           #destination:Ljava/io/File;
    :cond_1
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V

    .line 46
    return v7
.end method
