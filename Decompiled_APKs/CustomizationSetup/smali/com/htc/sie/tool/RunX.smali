.class public Lcom/htc/sie/tool/RunX;
.super Ljava/lang/Object;
.source "RunX.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sie/tool/RunX$APKFilter;
    }
.end annotation


# static fields
.field private static final COTA_CWPKGSRC_PATH:Ljava/lang/String; = "/data/data/cwtemp/cwpkg.zip"

.field private static final CWDATA_FOLDERPATH:Ljava/lang/String; = "/data/data/cw/"

.field private static final CWINFO_FILENAME:Ljava/lang/String; = "cwinfo.sqlite"

.field private static final LOG_TAG:Ljava/lang/String; = "Customization_RunX"

.field private static final SDCard_CWPKGSRC_PATH:Ljava/lang/String; = "/data/cwpkg.zip"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mVerifiedCWPkgSrc_Path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v3, "/data/cwpkg.zip"

    iput-object v3, p0, Lcom/htc/sie/tool/RunX;->mVerifiedCWPkgSrc_Path:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/htc/sie/tool/RunX;->mContext:Landroid/content/Context;

    .line 38
    :try_start_0
    const-string v1, "/data/data/cwtemp/cwpkg.zip"

    .line 39
    .local v1, strxpkgpath_COTA:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    .local v2, xpkgfile_COTA:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 41
    const-string v3, "/data/data/cwtemp/cwpkg.zip"

    iput-object v3, p0, Lcom/htc/sie/tool/RunX;->mVerifiedCWPkgSrc_Path:Ljava/lang/String;

    .line 42
    const-string v3, "Customization_RunX"

    const-string v4, "COTA cwpkg.zip found. Set mVerifiedCWPkgSrc_Path to COTA_CWPKGSRC_PATH(/data/data/cwtemp/cwpkg.zip)"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .end local v1           #strxpkgpath_COTA:Ljava/lang/String;
    .end local v2           #xpkgfile_COTA:Ljava/io/File;
    :goto_0
    return-void

    .line 45
    .restart local v1       #strxpkgpath_COTA:Ljava/lang/String;
    .restart local v2       #xpkgfile_COTA:Ljava/io/File;
    :cond_0
    const-string v3, "/data/cwpkg.zip"

    iput-object v3, p0, Lcom/htc/sie/tool/RunX;->mVerifiedCWPkgSrc_Path:Ljava/lang/String;

    .line 46
    const-string v3, "Customization_RunX"

    const-string v4, "COTA cwpkg.zip(/data/data/cwtemp/cwpkg.zip) not found. Set mVerifiedCWPkgSrc_Path to SDCard_CWPKGSRC_PATH(/data/cwpkg.zip)"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 49
    .end local v1           #strxpkgpath_COTA:Ljava/lang/String;
    .end local v2           #xpkgfile_COTA:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 50
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "Customization_RunX"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RunX check cwpkg.zip from COTA or SDCard. exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private CreateCWFolder()V
    .locals 6

    .prologue
    .line 58
    const-string v3, "Customization_RunX"

    const-string v4, "CreateCWFolder+"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/data/cw/"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    .local v1, customizeDir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 64
    :try_start_0
    const-string v3, "Customization_RunX"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete folder "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/htc/sie/tool/FileUtility;->deleteFolder(Ljava/io/File;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :cond_0
    :goto_0
    :try_start_1
    const-string v3, "Customization_RunX"

    const-string v4, "make /data/data/cw/"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 73
    const-string v3, "Customization_RunX"

    const-string v4, "setReadable /data/data/cw/"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v0

    .line 75
    .local v0, bSet:Z
    const-string v3, "Customization_RunX"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setReadable /data/data/cw/, bSet="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, v0}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v5}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/io/File;->setExecutable(ZZ)Z

    move-result v0

    .line 77
    const-string v3, "Customization_RunX"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setWritable /data/data/cw/, bSet="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, v0}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v5}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 81
    .end local v0           #bSet:Z
    :goto_1
    const-string v3, "Customization_RunX"

    const-string v4, "CreateCWFolder-"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-void

    .line 66
    :catch_0
    move-exception v2

    .line 67
    .local v2, e:Ljava/lang/Exception;
    const-string v3, "Customization_RunX"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete folder "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 78
    .end local v2           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 79
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v3, "Customization_RunX"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mkdirs() /data/data/cw/ exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private ExtractCWPackage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .parameter "cid"
    .parameter "mns"

    .prologue
    .line 84
    const-string v8, "Customization_RunX"

    const-string v9, "ExtractCWPackage+"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v6, p0, Lcom/htc/sie/tool/RunX;->mVerifiedCWPkgSrc_Path:Ljava/lang/String;

    .line 86
    .local v6, strxpkgpath:Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    .local v7, xpkgfile:Ljava/io/File;
    const/4 v0, 0x0

    .line 88
    .local v0, bDecompress:Z
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 89
    const-string v8, "Customization_RunX"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "decompress "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    new-instance v2, Lcom/htc/sie/tool/ZipDecompress;

    invoke-direct {v2, v6}, Lcom/htc/sie/tool/ZipDecompress;-><init>(Ljava/lang/String;)V

    .line 93
    .local v2, decompress:Lcom/htc/sie/tool/ZipDecompress;
    :try_start_0
    const-string v8, "Customization_RunX"

    const-string v9, "try to unzip cwinfo.sqlite."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const-string v8, "cwinfo.sqlite"

    const-string v9, "/data/data/cw/"

    invoke-virtual {v2, v8, v9}, Lcom/htc/sie/tool/ZipDecompress;->UnzipFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 95
    new-instance v4, Lcom/htc/sie/tool/RunXMappingSku;

    const-string v8, "/data/data/cw/cwinfo.sqlite"

    invoke-direct {v4, v8}, Lcom/htc/sie/tool/RunXMappingSku;-><init>(Ljava/lang/String;)V

    .line 96
    .local v4, mappingsku:Lcom/htc/sie/tool/RunXMappingSku;
    invoke-virtual {v4, p1, p2}, Lcom/htc/sie/tool/RunXMappingSku;->getSkuIdByCIDMNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 99
    .local v5, skuid:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    const-string v8, "/data/data/cw/"

    const-string v9, "cwinfo.sqlite"

    invoke-direct {v1, v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .local v1, cwinfo:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 103
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_0

    .line 104
    const-string v8, "Customization_RunX"

    const-string v9, "cw skuid is empty."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/4 v8, 0x0

    .line 119
    .end local v1           #cwinfo:Ljava/io/File;
    .end local v2           #decompress:Lcom/htc/sie/tool/ZipDecompress;
    .end local v4           #mappingsku:Lcom/htc/sie/tool/RunXMappingSku;
    .end local v5           #skuid:Ljava/lang/String;
    :goto_0
    return v8

    .line 108
    .restart local v1       #cwinfo:Ljava/io/File;
    .restart local v2       #decompress:Lcom/htc/sie/tool/ZipDecompress;
    .restart local v4       #mappingsku:Lcom/htc/sie/tool/RunXMappingSku;
    .restart local v5       #skuid:Ljava/lang/String;
    :cond_0
    const-string v8, "Customization_RunX"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "skuid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const-string v8, "Customization_RunX"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unzip item that starts with "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const-string v8, "/data/data/cw/"

    invoke-virtual {v2, v5, v8}, Lcom/htc/sie/tool/ZipDecompress;->Unzip2(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 116
    .end local v1           #cwinfo:Ljava/io/File;
    .end local v4           #mappingsku:Lcom/htc/sie/tool/RunXMappingSku;
    .end local v5           #skuid:Ljava/lang/String;
    :goto_1
    const-string v8, "Customization_RunX"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "decompress "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/sie/tool/RunX;->mVerifiedCWPkgSrc_Path:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " result="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v10, Ljava/lang/Boolean;

    invoke-direct {v10, v0}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v10}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .end local v2           #decompress:Lcom/htc/sie/tool/ZipDecompress;
    :cond_1
    const-string v8, "Customization_RunX"

    const-string v9, "ExtractCWPackage-"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v0

    .line 119
    goto :goto_0

    .line 111
    .restart local v2       #decompress:Lcom/htc/sie/tool/ZipDecompress;
    :catch_0
    move-exception v3

    .line 112
    .local v3, e:Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 113
    const-string v8, "Customization_RunX"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "decompress "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/sie/tool/RunX;->mVerifiedCWPkgSrc_Path:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " exception:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private applyApnsXml()V
    .locals 7

    .prologue
    .line 154
    const-string v4, "Customization_RunX"

    const-string v5, "applyApnsXml+"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const-string v1, "/data/data/cw/apns.xml"

    .line 156
    .local v1, apnsxmlpath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 157
    .local v0, apnsxmlfile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 158
    new-instance v3, Lcom/htc/sie/tool/RunXLoadAPN;

    iget-object v4, p0, Lcom/htc/sie/tool/RunX;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/htc/sie/tool/RunXLoadAPN;-><init>(Landroid/content/Context;)V

    .line 160
    .local v3, loadapn:Lcom/htc/sie/tool/RunXLoadAPN;
    :try_start_0
    invoke-virtual {v3, v1}, Lcom/htc/sie/tool/RunXLoadAPN;->LoadApnXml(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .end local v3           #loadapn:Lcom/htc/sie/tool/RunXLoadAPN;
    :cond_0
    :goto_0
    const-string v4, "Customization_RunX"

    const-string v5, "applyApnsXml-"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-void

    .line 161
    .restart local v3       #loadapn:Lcom/htc/sie/tool/RunXLoadAPN;
    :catch_0
    move-exception v2

    .line 162
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "Customization_RunX"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "load apn xml exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private applyXml(Z)V
    .locals 14
    .parameter "bSIMChanged"

    .prologue
    .line 168
    const-string v11, "Customization_RunX"

    const-string v12, "applyXml+"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const-string v11, "Customization_RunX"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SIMChanged:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    new-instance v13, Ljava/lang/Boolean;

    invoke-direct {v13, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v13}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    new-instance v7, Lcom/htc/sie/tool/ParseTargetXml;

    iget-object v11, p0, Lcom/htc/sie/tool/RunX;->mContext:Landroid/content/Context;

    invoke-direct {v7, v11}, Lcom/htc/sie/tool/ParseTargetXml;-><init>(Landroid/content/Context;)V

    .line 172
    .local v7, parseTargetXml:Lcom/htc/sie/tool/ParseTargetXml;
    if-nez p1, :cond_1

    .line 174
    const-string v2, "/data/data/cw/cw.xml"

    .line 175
    .local v2, cwxmlpath:Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 176
    .local v10, targetXMLFile:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 178
    :try_start_0
    const-string v11, "Customization_RunX"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "start parse "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const/4 v11, 0x1

    invoke-virtual {v7, v2, v11}, Lcom/htc/sie/tool/ParseTargetXml;->parse(Ljava/lang/String;Z)Z

    .line 180
    const-string v11, "Customization_RunX"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "end parse "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :cond_0
    :goto_0
    const-string v1, "/data/data/cw/cid.xml"

    .line 188
    .local v1, cidxmlpath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 189
    .local v0, cidXmlFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 191
    :try_start_1
    const-string v11, "Customization_RunX"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "start parse "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 v11, 0x1

    invoke-virtual {v7, v1, v11}, Lcom/htc/sie/tool/ParseTargetXml;->parse(Ljava/lang/String;Z)Z

    .line 193
    const-string v11, "Customization_RunX"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "end parse "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 201
    .end local v0           #cidXmlFile:Ljava/io/File;
    .end local v1           #cidxmlpath:Ljava/lang/String;
    .end local v2           #cwxmlpath:Ljava/lang/String;
    .end local v10           #targetXMLFile:Ljava/io/File;
    :cond_1
    :goto_1
    const-string v5, "/data/data/cw/mns.xml"

    .line 202
    .local v5, mnsxmlpath:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 203
    .local v4, mnsXmlFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 205
    :try_start_2
    const-string v11, "Customization_RunX"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "start parse "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/4 v11, 0x1

    invoke-virtual {v7, v5, v11}, Lcom/htc/sie/tool/ParseTargetXml;->parse(Ljava/lang/String;Z)Z

    .line 207
    const-string v11, "Customization_RunX"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "end parse "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 214
    :cond_2
    :goto_2
    const-string v9, "/data/data/cw/rosie.xml"

    .line 215
    .local v9, rosiexmlpath:Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 216
    .local v8, rosietargetXmlFile:Ljava/io/File;
    new-instance v6, Lcom/htc/sie/tool/ParseRosieTargetXml;

    iget-object v11, p0, Lcom/htc/sie/tool/RunX;->mContext:Landroid/content/Context;

    invoke-direct {v6, v11}, Lcom/htc/sie/tool/ParseRosieTargetXml;-><init>(Landroid/content/Context;)V

    .line 217
    .local v6, parseRosie:Lcom/htc/sie/tool/ParseRosieTargetXml;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 219
    :try_start_3
    const-string v11, "Customization_RunX"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "start parse "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/4 v11, 0x1

    invoke-virtual {v6, v9, v11}, Lcom/htc/sie/tool/ParseRosieTargetXml;->parse(Ljava/lang/String;Z)Z

    .line 221
    const-string v11, "Customization_RunX"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "end parse "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 226
    :cond_3
    :goto_3
    const-string v11, "Customization_RunX"

    const-string v12, "applyXml-"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    return-void

    .line 181
    .end local v4           #mnsXmlFile:Ljava/io/File;
    .end local v5           #mnsxmlpath:Ljava/lang/String;
    .end local v6           #parseRosie:Lcom/htc/sie/tool/ParseRosieTargetXml;
    .end local v8           #rosietargetXmlFile:Ljava/io/File;
    .end local v9           #rosiexmlpath:Ljava/lang/String;
    .restart local v2       #cwxmlpath:Ljava/lang/String;
    .restart local v10       #targetXMLFile:Ljava/io/File;
    :catch_0
    move-exception v3

    .line 182
    .local v3, e:Ljava/lang/Exception;
    const-string v11, "Customization_RunX"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "parse "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " exception:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 194
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v0       #cidXmlFile:Ljava/io/File;
    .restart local v1       #cidxmlpath:Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 195
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v11, "Customization_RunX"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "parse "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " exception:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 208
    .end local v0           #cidXmlFile:Ljava/io/File;
    .end local v1           #cidxmlpath:Ljava/lang/String;
    .end local v2           #cwxmlpath:Ljava/lang/String;
    .end local v3           #e:Ljava/lang/Exception;
    .end local v10           #targetXMLFile:Ljava/io/File;
    .restart local v4       #mnsXmlFile:Ljava/io/File;
    .restart local v5       #mnsxmlpath:Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 209
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v11, "Customization_RunX"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "parse "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " exception:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 222
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v6       #parseRosie:Lcom/htc/sie/tool/ParseRosieTargetXml;
    .restart local v8       #rosietargetXmlFile:Ljava/io/File;
    .restart local v9       #rosiexmlpath:Ljava/lang/String;
    :catch_3
    move-exception v3

    .line 223
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v11, "Customization_RunX"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "parse "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " exception:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private installAppPackages()V
    .locals 13

    .prologue
    .line 123
    const-string v10, "Customization_RunX"

    const-string v11, "installPackages+"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-instance v4, Ljava/io/File;

    const-string v10, "/data/data/cw/resource"

    invoke-direct {v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    .local v4, cwresourcehome:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 127
    const/4 v1, 0x0

    .line 129
    .local v1, apklist:[Ljava/io/File;
    :try_start_0
    new-instance v10, Lcom/htc/sie/tool/RunX$APKFilter;

    invoke-direct {v10, p0}, Lcom/htc/sie/tool/RunX$APKFilter;-><init>(Lcom/htc/sie/tool/RunX;)V

    invoke-virtual {v4, v10}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 133
    :goto_0
    if-eqz v1, :cond_0

    array-length v10, v1

    if-lez v10, :cond_0

    .line 134
    move-object v2, v1

    .local v2, arr$:[Ljava/io/File;
    array-length v7, v2

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_1
    if-ge v6, v7, :cond_0

    aget-object v0, v2, v6

    .line 135
    .local v0, apkfile:Ljava/io/File;
    const-string v10, "Customization_RunX"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Install apk "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    new-instance v9, Lcom/htc/sie/tool/RunXUtility;

    iget-object v10, p0, Lcom/htc/sie/tool/RunX;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Lcom/htc/sie/tool/RunXUtility;-><init>(Landroid/content/Context;)V

    .line 138
    .local v9, util:Lcom/htc/sie/tool/RunXUtility;
    :try_start_1
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    .line 139
    .local v8, packageuri:Landroid/net/Uri;
    invoke-virtual {v9, v8}, Lcom/htc/sie/tool/RunXUtility;->installAPK(Landroid/net/Uri;)Ljava/lang/Boolean;

    move-result-object v3

    .line 140
    .local v3, bInstall:Ljava/lang/Boolean;
    const-string v10, "Customization_RunX"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "install "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const-string v10, "Customization_RunX"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "delete "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 134
    .end local v3           #bInstall:Ljava/lang/Boolean;
    .end local v8           #packageuri:Landroid/net/Uri;
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 130
    .end local v0           #apkfile:Ljava/io/File;
    .end local v2           #arr$:[Ljava/io/File;
    .end local v6           #i$:I
    .end local v7           #len$:I
    .end local v9           #util:Lcom/htc/sie/tool/RunXUtility;
    :catch_0
    move-exception v5

    .line 131
    .local v5, e:Ljava/lang/Exception;
    const-string v10, "Customization_RunX"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "insallPackage, listFiles exception:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 143
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v0       #apkfile:Ljava/io/File;
    .restart local v2       #arr$:[Ljava/io/File;
    .restart local v6       #i$:I
    .restart local v7       #len$:I
    .restart local v9       #util:Lcom/htc/sie/tool/RunXUtility;
    :catch_1
    move-exception v5

    .line 144
    .restart local v5       #e:Ljava/lang/Exception;
    const-string v10, "Customization_RunX"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "installPackage, installAPK exception:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 150
    .end local v0           #apkfile:Ljava/io/File;
    .end local v1           #apklist:[Ljava/io/File;
    .end local v2           #arr$:[Ljava/io/File;
    .end local v5           #e:Ljava/lang/Exception;
    .end local v6           #i$:I
    .end local v7           #len$:I
    .end local v9           #util:Lcom/htc/sie/tool/RunXUtility;
    :cond_0
    const-string v10, "Customization_RunX"

    const-string v11, "installPackages-"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-void
.end method

.method private verifyCWPackage()Z
    .locals 7

    .prologue
    .line 229
    iget-object v2, p0, Lcom/htc/sie/tool/RunX;->mVerifiedCWPkgSrc_Path:Ljava/lang/String;

    .line 230
    .local v2, strxpkgpath:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 231
    .local v3, xpkgfile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 232
    const-string v4, "Customization_RunX"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cwpkg.zip("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") does not exist."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const/4 v0, 0x0

    .line 249
    :goto_0
    return v0

    .line 236
    :cond_0
    const/4 v0, 0x0

    .line 238
    .local v0, bVerified:Z
    :try_start_0
    const-string v4, "Customization_RunX"

    const-string v5, "try to verify /data/cwpkg.zip"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-static {v3}, Lcom/htc/sie/tool/CWZipVerifier;->verifyPackage(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 240
    const/4 v0, 0x1

    goto :goto_0

    .line 241
    :catch_0
    move-exception v1

    .line 242
    .local v1, e:Ljava/util/zip/ZipException;
    const-string v4, "Customization_RunX"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "verifyCWPackage ZipException."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/zip/ZipException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 243
    .end local v1           #e:Ljava/util/zip/ZipException;
    :catch_1
    move-exception v1

    .line 244
    .local v1, e:Ljava/io/IOException;
    const-string v4, "Customization_RunX"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "verifyCWPackage IOException."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 245
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 246
    .local v1, e:Ljava/security/GeneralSecurityException;
    const-string v4, "Customization_RunX"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "verifyCWPackage GeneralSecurityException."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public applyCWData(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .parameter "cid"
    .parameter "mns"
    .parameter "bSIMChanged"

    .prologue
    .line 252
    const-string v1, "Customization_RunX"

    const-string v2, "applyCWData+"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-direct {p0}, Lcom/htc/sie/tool/RunX;->verifyCWPackage()Z

    move-result v1

    if-nez v1, :cond_0

    .line 254
    const-string v1, "Customization_RunX"

    const-string v2, "CW Pakcage is not exist or invalid."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :goto_0
    return-void

    .line 259
    :cond_0
    if-nez p3, :cond_2

    .line 260
    invoke-direct {p0}, Lcom/htc/sie/tool/RunX;->CreateCWFolder()V

    .line 261
    invoke-direct {p0, p1, p2}, Lcom/htc/sie/tool/RunX;->ExtractCWPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 262
    .local v0, bExtract:Z
    if-nez v0, :cond_1

    .line 263
    const-string v1, "Customization_RunX"

    const-string v2, "Extract cw package failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 266
    :cond_1
    invoke-direct {p0}, Lcom/htc/sie/tool/RunX;->installAppPackages()V

    .line 268
    .end local v0           #bExtract:Z
    :cond_2
    invoke-direct {p0, p3}, Lcom/htc/sie/tool/RunX;->applyXml(Z)V

    .line 269
    if-nez p3, :cond_3

    .line 270
    invoke-direct {p0}, Lcom/htc/sie/tool/RunX;->applyApnsXml()V

    .line 272
    :cond_3
    const-string v1, "Customization_RunX"

    const-string v2, "applyCWData-"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
