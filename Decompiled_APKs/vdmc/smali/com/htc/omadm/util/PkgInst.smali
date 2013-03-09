.class public Lcom/htc/omadm/util/PkgInst;
.super Ljava/lang/Object;
.source "PkgInst.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PkgInst"

.field private static final Src_RB_Config:Ljava/lang/String; = "config.txt"

.field private static final Src_RB_Lib1:Ljava/lang/String; = "libvdmengine.so"

.field private static final Src_RB_Lib2:Ljava/lang/String; = "libvdmfumo.so"

.field private static final Src_RB_Tree:Ljava/lang/String; = "tree.xml"

.field private static final Tar_RB_Config:Ljava/lang/String; = "config.txt"

.field private static final Tar_RB_Lib1:Ljava/lang/String; = "libvdmengine.so"

.field private static final Tar_RB_Lib2:Ljava/lang/String; = "libvdmfumo.so"

.field private static final Tar_RB_Lib_Path:Ljava/lang/String; = "/data/data/com.redbend.vdmc/ext/"

.field private static final Tar_RB_Tree:Ljava/lang/String; = "tree.xml"

.field private static final Tar_RB_Tree_Path:Ljava/lang/String; = "/data/data/com.redbend.vdmc/files/"

.field private static mContext:Landroid/content/Context;

.field private static mInstalled:Z

.field private static mInstance:Lcom/htc/omadm/util/PkgInst;

.field private static m_nPID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/omadm/util/PkgInst;->mInstance:Lcom/htc/omadm/util/PkgInst;

    .line 22
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/omadm/util/PkgInst;->mInstalled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/os/Process;

    invoke-direct {v0}, Landroid/os/Process;-><init>()V

    .line 39
    .local v0, myProcess:Landroid/os/Process;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    sput v1, Lcom/htc/omadm/util/PkgInst;->m_nPID:I

    .line 40
    sput-object p1, Lcom/htc/omadm/util/PkgInst;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method

.method private ExtractFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 13
    .parameter "path"
    .parameter "file"
    .parameter "srcfile"
    .parameter "bOverwrite"

    .prologue
    .line 72
    const/4 v8, 0x0

    .line 74
    .local v8, success:Z
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    .local v1, FilePath:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 76
    const/16 v4, 0x1f9

    .line 77
    .local v4, Permissions:I
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 78
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Lcom/htc/omadm/util/PkgInst;->m_nPID:I

    sget v11, Lcom/htc/omadm/util/PkgInst;->m_nPID:I

    invoke-static {v9, v4, v10, v11}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 81
    .end local v4           #Permissions:I
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, InstFile:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    .local v3, Install:Ljava/io/File;
    const-string v9, "PkgInst"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Install:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const/4 v6, 0x0

    .line 86
    .local v6, is:Ljava/io/InputStream;
    :try_start_0
    const-string v9, "PkgInst"

    const-string v10, "Go AssetManager."

    invoke-static {v9, v10}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    sget-object v9, Lcom/htc/omadm/util/PkgInst;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    .line 88
    .local v7, manager:Landroid/content/res/AssetManager;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    if-nez p4, :cond_2

    .line 89
    const-string v9, "PkgInst"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is exist."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 90
    const/4 v8, 0x1

    .line 106
    :goto_0
    if-eqz v6, :cond_1

    :try_start_1
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 111
    .end local v7           #manager:Landroid/content/res/AssetManager;
    :cond_1
    :goto_1
    return-void

    .line 92
    .restart local v7       #manager:Landroid/content/res/AssetManager;
    :cond_2
    const/4 v9, 0x1

    move/from16 v0, p4

    if-ne v0, v9, :cond_3

    .line 93
    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 94
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 96
    :cond_3
    const-string v9, "PkgInst"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is not exist."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 98
    invoke-direct {p0, v3, v6}, Lcom/htc/omadm/util/PkgInst;->copyFile(Ljava/io/File;Ljava/io/InputStream;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v8

    goto :goto_0

    .line 107
    :catch_0
    move-exception v5

    .line 108
    .local v5, e:Ljava/io/IOException;
    const-string v9, "PkgInst"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "problem while trying to ExtractFile the io streams "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 101
    .end local v5           #e:Ljava/io/IOException;
    .end local v7           #manager:Landroid/content/res/AssetManager;
    :catch_1
    move-exception v5

    .line 102
    .restart local v5       #e:Ljava/io/IOException;
    :try_start_3
    const-string v9, "PkgInst"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "openOrCreateDatabase io exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 103
    const/4 v8, 0x0

    .line 106
    if-eqz v6, :cond_1

    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 107
    :catch_2
    move-exception v5

    .line 108
    const-string v9, "PkgInst"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "problem while trying to ExtractFile the io streams "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 105
    .end local v5           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 106
    if-eqz v6, :cond_4

    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 109
    :cond_4
    :goto_2
    throw v9

    .line 107
    :catch_3
    move-exception v5

    .line 108
    .restart local v5       #e:Ljava/io/IOException;
    const-string v10, "PkgInst"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "problem while trying to ExtractFile the io streams "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private copyFile(Ljava/io/File;Ljava/io/InputStream;)Z
    .locals 10
    .parameter "outfile"
    .parameter "is"

    .prologue
    .line 114
    const-string v6, "PkgInst"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Copy: file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to the user data directory"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const/4 v5, 0x1

    .line 117
    .local v5, success:Z
    const/4 v3, 0x0

    .line 119
    .local v3, os:Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 120
    const-string v6, "PkgInst"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " already exists, copy cancelled."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9

    .line 121
    const/4 v6, 0x1

    .line 136
    if-eqz p2, :cond_0

    :try_start_1
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 142
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 148
    :cond_1
    :goto_1
    return v6

    .line 137
    :catch_0
    move-exception v1

    .line 138
    .local v1, e:Ljava/io/IOException;
    const-string v7, "PkgInst"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "problem while trying to close the io streams during the copy of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v5, 0x0

    goto :goto_0

    .line 143
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 144
    .restart local v1       #e:Ljava/io/IOException;
    const-string v7, "PkgInst"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "problem while trying to close the io streams during the copy of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v5, 0x0

    goto :goto_1

    .line 123
    .end local v1           #e:Ljava/io/IOException;
    :cond_2
    :try_start_3
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9

    .line 124
    .end local v3           #os:Ljava/io/FileOutputStream;
    .local v4, os:Ljava/io/FileOutputStream;
    const/16 v6, 0x400

    :try_start_4
    new-array v0, v6, [B

    .line 125
    .local v0, buf:[B
    if-eqz p2, :cond_5

    if-eqz v4, :cond_5

    .line 127
    :goto_2
    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, len:I
    if-ltz v2, :cond_5

    .line 128
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 131
    .end local v0           #buf:[B
    .end local v2           #len:I
    :catch_2
    move-exception v1

    move-object v3, v4

    .line 132
    .end local v4           #os:Ljava/io/FileOutputStream;
    .restart local v1       #e:Ljava/io/IOException;
    .restart local v3       #os:Ljava/io/FileOutputStream;
    :goto_3
    :try_start_5
    const-string v6, "PkgInst"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exception in copying the file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 133
    const/4 v5, 0x0

    .line 136
    if-eqz p2, :cond_3

    :try_start_6
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 142
    :cond_3
    :goto_4
    if-eqz v3, :cond_4

    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .end local v1           #e:Ljava/io/IOException;
    :cond_4
    :goto_5
    move v6, v5

    .line 148
    goto/16 :goto_1

    .line 136
    .end local v3           #os:Ljava/io/FileOutputStream;
    .restart local v0       #buf:[B
    .restart local v4       #os:Ljava/io/FileOutputStream;
    :cond_5
    if-eqz p2, :cond_6

    :try_start_8
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 142
    :cond_6
    :goto_6
    if-eqz v4, :cond_7

    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    :cond_7
    move-object v3, v4

    .line 146
    .end local v4           #os:Ljava/io/FileOutputStream;
    .restart local v3       #os:Ljava/io/FileOutputStream;
    goto :goto_5

    .line 137
    .end local v3           #os:Ljava/io/FileOutputStream;
    .restart local v4       #os:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v1

    .line 138
    .restart local v1       #e:Ljava/io/IOException;
    const-string v6, "PkgInst"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "problem while trying to close the io streams during the copy of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v5, 0x0

    goto :goto_6

    .line 143
    .end local v1           #e:Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 144
    .restart local v1       #e:Ljava/io/IOException;
    const-string v6, "PkgInst"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "problem while trying to close the io streams during the copy of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v5, 0x0

    move-object v3, v4

    .line 147
    .end local v4           #os:Ljava/io/FileOutputStream;
    .restart local v3       #os:Ljava/io/FileOutputStream;
    goto :goto_5

    .line 137
    .end local v0           #buf:[B
    :catch_5
    move-exception v1

    .line 138
    const-string v6, "PkgInst"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "problem while trying to close the io streams during the copy of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 143
    :catch_6
    move-exception v1

    .line 144
    const-string v6, "PkgInst"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "problem while trying to close the io streams during the copy of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v5, 0x0

    .line 147
    goto/16 :goto_5

    .line 135
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 136
    :goto_7
    if-eqz p2, :cond_8

    :try_start_a
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 142
    :cond_8
    :goto_8
    if-eqz v3, :cond_9

    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 146
    :cond_9
    :goto_9
    throw v6

    .line 137
    :catch_7
    move-exception v1

    .line 138
    .restart local v1       #e:Ljava/io/IOException;
    const-string v7, "PkgInst"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "problem while trying to close the io streams during the copy of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v5, 0x0

    goto :goto_8

    .line 143
    .end local v1           #e:Ljava/io/IOException;
    :catch_8
    move-exception v1

    .line 144
    .restart local v1       #e:Ljava/io/IOException;
    const-string v7, "PkgInst"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "problem while trying to close the io streams during the copy of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v5, 0x0

    goto :goto_9

    .line 135
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #os:Ljava/io/FileOutputStream;
    .restart local v4       #os:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #os:Ljava/io/FileOutputStream;
    .restart local v3       #os:Ljava/io/FileOutputStream;
    goto :goto_7

    .line 131
    :catch_9
    move-exception v1

    goto/16 :goto_3
.end method

.method public static getSingleton(Landroid/content/Context;)Lcom/htc/omadm/util/PkgInst;
    .locals 1
    .parameter "context"

    .prologue
    .line 44
    sget-object v0, Lcom/htc/omadm/util/PkgInst;->mInstance:Lcom/htc/omadm/util/PkgInst;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/htc/omadm/util/PkgInst;

    invoke-direct {v0, p0}, Lcom/htc/omadm/util/PkgInst;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/omadm/util/PkgInst;->mInstance:Lcom/htc/omadm/util/PkgInst;

    .line 47
    :cond_0
    sget-object v0, Lcom/htc/omadm/util/PkgInst;->mInstance:Lcom/htc/omadm/util/PkgInst;

    return-object v0
.end method


# virtual methods
.method public Install()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/omadm/util/PkgInst;->InstallPKG(Z)V

    .line 56
    return-void
.end method

.method public Install(Z)V
    .locals 0
    .parameter "bOverwrite"

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/htc/omadm/util/PkgInst;->InstallPKG(Z)V

    .line 52
    return-void
.end method

.method public InstallPKG(Z)V
    .locals 4
    .parameter "bOverwrite"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 59
    sget-boolean v0, Lcom/htc/omadm/util/PkgInst;->mInstalled:Z

    if-ne v0, v1, :cond_0

    .line 60
    const-string v0, "PkgInst"

    const-string v1, "Package installed."

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :goto_0
    return-void

    .line 63
    :cond_0
    sput-boolean v1, Lcom/htc/omadm/util/PkgInst;->mInstalled:Z

    .line 65
    const-string v0, "/data/data/com.redbend.vdmc/ext/"

    const-string v1, "libvdmengine.so"

    const-string v2, "libvdmengine.so"

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/htc/omadm/util/PkgInst;->ExtractFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 66
    const-string v0, "/data/data/com.redbend.vdmc/ext/"

    const-string v1, "libvdmfumo.so"

    const-string v2, "libvdmfumo.so"

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/htc/omadm/util/PkgInst;->ExtractFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 67
    const-string v0, "/data/data/com.redbend.vdmc/files/"

    const-string v1, "tree.xml"

    const-string v2, "tree.xml"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/htc/omadm/util/PkgInst;->ExtractFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 68
    const-string v0, "/data/data/com.redbend.vdmc/files/"

    const-string v1, "config.txt"

    const-string v2, "config.txt"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/htc/omadm/util/PkgInst;->ExtractFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method
