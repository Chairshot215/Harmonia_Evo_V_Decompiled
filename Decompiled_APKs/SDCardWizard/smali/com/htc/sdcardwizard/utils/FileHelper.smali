.class public final Lcom/htc/sdcardwizard/utils/FileHelper;
.super Ljava/lang/Object;
.source "FileHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LSCW/FileHelper"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static copyFile(Ljava/io/FileInputStream;Ljava/lang/String;)V
    .locals 5
    .parameter "input"
    .parameter "destPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    .local v1, destFile:Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 63
    .local v3, output:Ljava/io/FileOutputStream;
    const/16 v4, 0x400

    new-array v0, v4, [B

    .line 65
    .local v0, buffer:[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    .local v2, len:I
    if-lez v2, :cond_0

    .line 66
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    .line 69
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 70
    return-void
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "sourcePath"
    .parameter "destPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    .local v5, srcFile:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    .local v1, destFile:Ljava/io/File;
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 50
    .local v2, input:Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 51
    .local v4, output:Ljava/io/FileOutputStream;
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 53
    .local v0, buffer:[B
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .local v3, len:I
    if-lez v3, :cond_0

    .line 54
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v3}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 57
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 58
    return-void
.end method

.method public static deleteDirectory(Ljava/lang/String;Ljava/io/FileFilter;)V
    .locals 6
    .parameter "directoryPath"
    .parameter "filter"

    .prologue
    .line 20
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    .local v1, directory:Ljava/io/File;
    if-nez p1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 22
    .local v3, files:[Ljava/io/File;
    :goto_0
    if-eqz v3, :cond_1

    .line 23
    move-object v0, v3

    .local v0, arr$:[Ljava/io/File;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v2, v0, v4

    .line 24
    .local v2, file:Ljava/io/File;
    invoke-static {v2, p1}, Lcom/htc/sdcardwizard/utils/FileHelper;->deleteRecursively(Ljava/io/File;Ljava/io/FileFilter;)V

    .line 23
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 21
    .end local v0           #arr$:[Ljava/io/File;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #files:[Ljava/io/File;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_0
    invoke-virtual {v1, p1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v3

    goto :goto_0

    .line 27
    .restart local v3       #files:[Ljava/io/File;
    :cond_1
    return-void
.end method

.method private static deleteRecursively(Ljava/io/File;Ljava/io/FileFilter;)V
    .locals 3
    .parameter "file"
    .parameter "filter"

    .prologue
    .line 73
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/htc/sdcardwizard/utils/FileHelper;->deleteDirectory(Ljava/lang/String;Ljava/io/FileFilter;)V

    .line 77
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 78
    const-string v0, "LSCW/FileHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_1
    return-void
.end method

.method private static getAllFiles(Ljava/io/File;Ljava/io/FileFilter;)Lcom/htc/sdcardwizard/utils/FileList;
    .locals 8
    .parameter "startingDirectory"
    .parameter "filter"

    .prologue
    .line 83
    new-instance v7, Lcom/htc/sdcardwizard/utils/FileList;

    invoke-direct {v7}, Lcom/htc/sdcardwizard/utils/FileList;-><init>()V

    .line 84
    .local v7, result:Lcom/htc/sdcardwizard/utils/FileList;
    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 85
    .local v3, filesAndDirs:[Ljava/io/File;
    :goto_0
    if-eqz v3, :cond_2

    .line 86
    move-object v0, v3

    .local v0, arr$:[Ljava/io/File;
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v6, :cond_2

    aget-object v2, v0, v4

    .line 87
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v5

    .line 88
    .local v5, isFile:Z
    if-eqz v5, :cond_1

    .line 89
    invoke-virtual {v7, v2}, Lcom/htc/sdcardwizard/utils/FileList;->add(Ljava/io/File;)Z

    .line 86
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 84
    .end local v0           #arr$:[Ljava/io/File;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #filesAndDirs:[Ljava/io/File;
    .end local v4           #i$:I
    .end local v5           #isFile:Z
    .end local v6           #len$:I
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v3

    goto :goto_0

    .line 91
    .restart local v0       #arr$:[Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    .restart local v3       #filesAndDirs:[Ljava/io/File;
    .restart local v4       #i$:I
    .restart local v5       #isFile:Z
    .restart local v6       #len$:I
    :cond_1
    invoke-static {v2, p1}, Lcom/htc/sdcardwizard/utils/FileHelper;->getAllFiles(Ljava/io/File;Ljava/io/FileFilter;)Lcom/htc/sdcardwizard/utils/FileList;

    move-result-object v1

    .line 92
    .local v1, deeperList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    invoke-virtual {v7, v1}, Lcom/htc/sdcardwizard/utils/FileList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 96
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #deeperList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    .end local v2           #file:Ljava/io/File;
    .end local v4           #i$:I
    .end local v5           #isFile:Z
    .end local v6           #len$:I
    :cond_2
    return-object v7
.end method

.method public static getFileList(Ljava/lang/String;Ljava/io/FileFilter;)Lcom/htc/sdcardwizard/utils/FileList;
    .locals 2
    .parameter "startDirectory"
    .parameter "filter"

    .prologue
    .line 30
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 31
    .local v1, startingDirectory:Ljava/io/File;
    invoke-static {v1, p1}, Lcom/htc/sdcardwizard/utils/FileHelper;->getAllFiles(Ljava/io/File;Ljava/io/FileFilter;)Lcom/htc/sdcardwizard/utils/FileList;

    move-result-object v0

    .line 32
    .local v0, files:Lcom/htc/sdcardwizard/utils/FileList;
    return-object v0
.end method
