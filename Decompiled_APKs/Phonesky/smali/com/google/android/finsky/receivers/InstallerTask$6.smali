.class Lcom/google/android/finsky/receivers/InstallerTask$6;
.super Landroid/os/AsyncTask;
.source "InstallerTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/receivers/InstallerTask;->startApplyingPatch(Lcom/google/android/finsky/appstate/AppStates$AppState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/receivers/InstallerTask;

.field final synthetic val$downloadUri:Landroid/net/Uri;

.field final synthetic val$downloadUriString:Ljava/lang/String;

.field final synthetic val$installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/receivers/InstallerTask;Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1682
    iput-object p1, p0, Lcom/google/android/finsky/receivers/InstallerTask$6;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    iput-object p2, p0, Lcom/google/android/finsky/receivers/InstallerTask$6;->val$installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    iput-object p3, p0, Lcom/google/android/finsky/receivers/InstallerTask$6;->val$downloadUri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/google/android/finsky/receivers/InstallerTask$6;->val$downloadUriString:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/io/File;
    .locals 27
    .parameter "params"

    .prologue
    .line 1686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/receivers/InstallerTask$6;->val$installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getPackageName()Ljava/lang/String;

    move-result-object v20

    .line 1687
    .local v20, packageName:Ljava/lang/String;
    const/4 v9, 0x0

    .line 1688
    .local v9, inputFile:Ljava/io/RandomAccessFile;
    const/16 v21, 0x0

    .line 1689
    .local v21, patchStream:Ljava/io/InputStream;
    const/16 v17, 0x0

    .line 1691
    .local v17, outputStream:Ljava/io/OutputStream;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    .line 1692
    .local v3, appContext:Landroid/content/Context;
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    .line 1695
    .local v22, resolver:Landroid/content/ContentResolver;
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    .line 1697
    .local v19, packageManager:Landroid/content/pm/PackageManager;
    const/16 v24, 0x0

    :try_start_0
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 1699
    .local v4, applicationInfo:Landroid/content/pm/ApplicationInfo;
    new-instance v10, Ljava/io/RandomAccessFile;

    new-instance v24, Ljava/io/File;

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-direct/range {v24 .. v25}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v25, "r"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v10, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1709
    .end local v9           #inputFile:Ljava/io/RandomAccessFile;
    .local v10, inputFile:Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/receivers/InstallerTask$6;->val$downloadUri:Landroid/net/Uri;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v21

    .line 1715
    const/16 v16, 0x0

    .line 1721
    .local v16, outputFile:Ljava/io/File;
    :try_start_2
    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    .line 1722
    .local v5, cacheDir:Ljava/io/File;
    const/16 v24, 0x1

    const/16 v25, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    move-result v24

    if-nez v24, :cond_0

    .line 1723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/receivers/InstallerTask$6;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    move-object/from16 v24, v0

    const-string v25, "cache-dir-executable"

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move-object/from16 v2, v25

    #calls: Lcom/google/android/finsky/receivers/InstallerTask;->reportPatchFailure(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/receivers/InstallerTask;->access$1100(Lcom/google/android/finsky/receivers/InstallerTask;Ljava/lang/String;Ljava/lang/String;)V

    .line 1724
    const-string v24, "Could not make executable %s"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v5, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1725
    const/16 v16, 0x0

    .end local v16           #outputFile:Ljava/io/File;
    move-object v9, v10

    .line 1791
    .end local v4           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .end local v5           #cacheDir:Ljava/io/File;
    .end local v10           #inputFile:Ljava/io/RandomAccessFile;
    .restart local v9       #inputFile:Ljava/io/RandomAccessFile;
    :goto_0
    return-object v16

    .line 1700
    :catch_0
    move-exception v7

    .line 1701
    .local v7, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/receivers/InstallerTask$6;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    move-object/from16 v24, v0

    const-string v25, "source-NameNotFoundException"

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move-object/from16 v2, v25

    #calls: Lcom/google/android/finsky/receivers/InstallerTask;->reportPatchFailure(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/receivers/InstallerTask;->access$1100(Lcom/google/android/finsky/receivers/InstallerTask;Ljava/lang/String;Ljava/lang/String;)V

    .line 1702
    const/16 v16, 0x0

    goto :goto_0

    .line 1703
    .end local v7           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v7

    .line 1704
    .local v7, e:Ljava/io/FileNotFoundException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/receivers/InstallerTask$6;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    move-object/from16 v24, v0

    const-string v25, "source-FileNotFoundException"

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move-object/from16 v2, v25

    #calls: Lcom/google/android/finsky/receivers/InstallerTask;->reportPatchFailure(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/receivers/InstallerTask;->access$1100(Lcom/google/android/finsky/receivers/InstallerTask;Ljava/lang/String;Ljava/lang/String;)V

    .line 1705
    const/16 v16, 0x0

    goto :goto_0

    .line 1710
    .end local v7           #e:Ljava/io/FileNotFoundException;
    .end local v9           #inputFile:Ljava/io/RandomAccessFile;
    .restart local v4       #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .restart local v10       #inputFile:Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v8

    .line 1711
    .local v8, e1:Ljava/io/FileNotFoundException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/receivers/InstallerTask$6;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    move-object/from16 v24, v0

    const-string v25, "patch-FileNotFoundException"

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move-object/from16 v2, v25

    #calls: Lcom/google/android/finsky/receivers/InstallerTask;->reportPatchFailure(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/receivers/InstallerTask;->access$1100(Lcom/google/android/finsky/receivers/InstallerTask;Ljava/lang/String;Ljava/lang/String;)V

    .line 1712
    const/16 v16, 0x0

    move-object v9, v10

    .end local v10           #inputFile:Ljava/io/RandomAccessFile;
    .restart local v9       #inputFile:Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 1728
    .end local v8           #e1:Ljava/io/FileNotFoundException;
    .end local v9           #inputFile:Ljava/io/RandomAccessFile;
    .restart local v5       #cacheDir:Ljava/io/File;
    .restart local v10       #inputFile:Ljava/io/RandomAccessFile;
    .restart local v16       #outputFile:Ljava/io/File;
    :cond_0
    :try_start_3
    new-instance v15, Ljava/io/File;

    const-string v24, "patches"

    move-object/from16 v0, v24

    invoke-direct {v15, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1729
    .local v15, outputDirectory:Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->mkdirs()Z

    .line 1731
    const/16 v24, 0x1

    const/16 v25, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    move-result v24

    if-eqz v24, :cond_1

    const/16 v24, 0x1

    const/16 v25, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v24

    if-eqz v24, :cond_1

    const/4 v12, 0x1

    .line 1733
    .local v12, madeReadable:Z
    :goto_1
    if-nez v12, :cond_2

    .line 1734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/receivers/InstallerTask$6;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    move-object/from16 v24, v0

    const-string v25, "out-dir-readable"

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move-object/from16 v2, v25

    #calls: Lcom/google/android/finsky/receivers/InstallerTask;->reportPatchFailure(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/receivers/InstallerTask;->access$1100(Lcom/google/android/finsky/receivers/InstallerTask;Ljava/lang/String;Ljava/lang/String;)V

    .line 1735
    const-string v24, "Could not make readable %s"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v15, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1736
    const/16 v16, 0x0

    .end local v16           #outputFile:Ljava/io/File;
    move-object v9, v10

    .end local v10           #inputFile:Ljava/io/RandomAccessFile;
    .restart local v9       #inputFile:Ljava/io/RandomAccessFile;
    goto/16 :goto_0

    .line 1731
    .end local v9           #inputFile:Ljava/io/RandomAccessFile;
    .end local v12           #madeReadable:Z
    .restart local v10       #inputFile:Ljava/io/RandomAccessFile;
    .restart local v16       #outputFile:Ljava/io/File;
    :cond_1
    const/4 v12, 0x0

    goto :goto_1

    .line 1738
    .restart local v12       #madeReadable:Z
    :cond_2
    const-string v24, ".apk"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-static {v0, v1, v15}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v16

    .line 1739
    new-instance v18, Ljava/io/FileOutputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1741
    .end local v17           #outputStream:Ljava/io/OutputStream;
    .local v18, outputStream:Ljava/io/OutputStream;
    const/16 v24, 0x1

    const/16 v25, 0x0

    :try_start_4
    move-object/from16 v0, v16

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v24

    if-nez v24, :cond_3

    .line 1742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/receivers/InstallerTask$6;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    move-object/from16 v24, v0

    const-string v25, "out-file-readable"

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move-object/from16 v2, v25

    #calls: Lcom/google/android/finsky/receivers/InstallerTask;->reportPatchFailure(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/receivers/InstallerTask;->access$1100(Lcom/google/android/finsky/receivers/InstallerTask;Ljava/lang/String;Ljava/lang/String;)V

    .line 1743
    const-string v24, "Could not make readable %s"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v16, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1744
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_16

    .line 1745
    const/16 v16, 0x0

    .end local v16           #outputFile:Ljava/io/File;
    move-object/from16 v17, v18

    .end local v18           #outputStream:Ljava/io/OutputStream;
    .restart local v17       #outputStream:Ljava/io/OutputStream;
    move-object v9, v10

    .end local v10           #inputFile:Ljava/io/RandomAccessFile;
    .restart local v9       #inputFile:Ljava/io/RandomAccessFile;
    goto/16 :goto_0

    .line 1747
    .end local v5           #cacheDir:Ljava/io/File;
    .end local v9           #inputFile:Ljava/io/RandomAccessFile;
    .end local v12           #madeReadable:Z
    .end local v15           #outputDirectory:Ljava/io/File;
    .restart local v10       #inputFile:Ljava/io/RandomAccessFile;
    .restart local v16       #outputFile:Ljava/io/File;
    :catch_3
    move-exception v8

    .line 1748
    .local v8, e1:Ljava/io/IOException;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/receivers/InstallerTask$6;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    move-object/from16 v24, v0

    const-string v25, "out-dir-IOException"

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move-object/from16 v2, v25

    #calls: Lcom/google/android/finsky/receivers/InstallerTask;->reportPatchFailure(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/receivers/InstallerTask;->access$1100(Lcom/google/android/finsky/receivers/InstallerTask;Ljava/lang/String;Ljava/lang/String;)V

    .line 1749
    const/16 v16, 0x0

    move-object v9, v10

    .end local v10           #inputFile:Ljava/io/RandomAccessFile;
    .restart local v9       #inputFile:Ljava/io/RandomAccessFile;
    goto/16 :goto_0

    .line 1752
    .end local v8           #e1:Ljava/io/IOException;
    .end local v9           #inputFile:Ljava/io/RandomAccessFile;
    .end local v17           #outputStream:Ljava/io/OutputStream;
    .restart local v5       #cacheDir:Ljava/io/File;
    .restart local v10       #inputFile:Ljava/io/RandomAccessFile;
    .restart local v12       #madeReadable:Z
    .restart local v15       #outputDirectory:Ljava/io/File;
    .restart local v18       #outputStream:Ljava/io/OutputStream;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/receivers/InstallerTask$6;->val$installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDeliveryData()Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getDownloadSize()J

    move-result-wide v13

    .line 1753
    .local v13, maxOutputLength:J
    const/4 v11, 0x0

    .line 1755
    .local v11, keepOutputFile:Z
    :try_start_5
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-static {v10, v0, v1, v13, v14}, Lcom/google/android/finsky/installer/Gdiff;->patch(Ljava/io/RandomAccessFile;Ljava/io/InputStream;Ljava/io/OutputStream;J)J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lcom/google/android/finsky/installer/Gdiff$FileFormatException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 1756
    const/4 v11, 0x1

    .line 1782
    :try_start_6
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    .line 1785
    :goto_3
    :try_start_7
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    .line 1788
    :goto_4
    :try_start_8
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9

    .line 1790
    :goto_5
    if-nez v11, :cond_4

    .line 1791
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    :cond_4
    move-object/from16 v17, v18

    .end local v18           #outputStream:Ljava/io/OutputStream;
    .restart local v17       #outputStream:Ljava/io/OutputStream;
    move-object v9, v10

    .end local v10           #inputFile:Ljava/io/RandomAccessFile;
    .restart local v9       #inputFile:Ljava/io/RandomAccessFile;
    goto/16 :goto_0

    .line 1758
    .end local v9           #inputFile:Ljava/io/RandomAccessFile;
    .end local v17           #outputStream:Ljava/io/OutputStream;
    .restart local v10       #inputFile:Ljava/io/RandomAccessFile;
    .restart local v18       #outputStream:Ljava/io/OutputStream;
    :catch_4
    move-exception v7

    .line 1759
    .local v7, e:Lcom/google/android/finsky/installer/Gdiff$FileFormatException;
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/receivers/InstallerTask$6;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    move-object/from16 v24, v0

    const-string v25, "gdiff-FileFormatException"

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move-object/from16 v2, v25

    #calls: Lcom/google/android/finsky/receivers/InstallerTask;->reportPatchFailure(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/receivers/InstallerTask;->access$1100(Lcom/google/android/finsky/receivers/InstallerTask;Ljava/lang/String;Ljava/lang/String;)V

    .line 1763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/receivers/InstallerTask$6;->val$downloadUriString:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v23

    .line 1764
    .local v23, uriString:Ljava/lang/String;
    const-string v24, "my_downloads"

    const-string v25, "public_downloads"

    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1765
    invoke-static/range {v23 .. v23}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    .line 1766
    .local v6, contentType:Ljava/lang/String;
    const-string v24, "Patch %s (content-type \'%s\') is not Gdiff, will install as APK"

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v20, v25, v26

    const/16 v26, 0x1

    aput-object v6, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1770
    new-instance v24, Ljava/io/File;

    const-string v25, ""

    invoke-direct/range {v24 .. v25}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1782
    :try_start_a
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a

    .line 1785
    :goto_6
    :try_start_b
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b

    .line 1788
    :goto_7
    :try_start_c
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_c

    .line 1790
    :goto_8
    if-nez v11, :cond_5

    .line 1791
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    :cond_5
    move-object/from16 v17, v18

    .end local v18           #outputStream:Ljava/io/OutputStream;
    .restart local v17       #outputStream:Ljava/io/OutputStream;
    move-object v9, v10

    .end local v10           #inputFile:Ljava/io/RandomAccessFile;
    .restart local v9       #inputFile:Ljava/io/RandomAccessFile;
    move-object/from16 v16, v24

    goto/16 :goto_0

    .line 1771
    .end local v6           #contentType:Ljava/lang/String;
    .end local v7           #e:Lcom/google/android/finsky/installer/Gdiff$FileFormatException;
    .end local v9           #inputFile:Ljava/io/RandomAccessFile;
    .end local v17           #outputStream:Ljava/io/OutputStream;
    .end local v23           #uriString:Ljava/lang/String;
    .restart local v10       #inputFile:Ljava/io/RandomAccessFile;
    .restart local v18       #outputStream:Ljava/io/OutputStream;
    :catch_5
    move-exception v7

    .line 1772
    .local v7, e:Ljava/io/IOException;
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/receivers/InstallerTask$6;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    move-object/from16 v24, v0

    const-string v25, "gdiff-IOException"

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move-object/from16 v2, v25

    #calls: Lcom/google/android/finsky/receivers/InstallerTask;->reportPatchFailure(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/receivers/InstallerTask;->access$1100(Lcom/google/android/finsky/receivers/InstallerTask;Ljava/lang/String;Ljava/lang/String;)V

    .line 1773
    const-string v24, "Patch %s failed with exception "

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v20, v25, v26

    const/16 v26, 0x1

    aput-object v7, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 1774
    const/16 v24, 0x0

    .line 1782
    :try_start_e
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_d

    .line 1785
    :goto_9
    :try_start_f
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_e

    .line 1788
    :goto_a
    :try_start_10
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_f

    .line 1790
    :goto_b
    if-nez v11, :cond_6

    .line 1791
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    :cond_6
    move-object/from16 v17, v18

    .end local v18           #outputStream:Ljava/io/OutputStream;
    .restart local v17       #outputStream:Ljava/io/OutputStream;
    move-object v9, v10

    .end local v10           #inputFile:Ljava/io/RandomAccessFile;
    .restart local v9       #inputFile:Ljava/io/RandomAccessFile;
    move-object/from16 v16, v24

    goto/16 :goto_0

    .line 1775
    .end local v7           #e:Ljava/io/IOException;
    .end local v9           #inputFile:Ljava/io/RandomAccessFile;
    .end local v17           #outputStream:Ljava/io/OutputStream;
    .restart local v10       #inputFile:Ljava/io/RandomAccessFile;
    .restart local v18       #outputStream:Ljava/io/OutputStream;
    :catch_6
    move-exception v7

    .line 1776
    .local v7, e:Ljava/lang/Exception;
    :try_start_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/receivers/InstallerTask$6;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    move-object/from16 v24, v0

    const-string v25, "gdiff-Exception"

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move-object/from16 v2, v25

    #calls: Lcom/google/android/finsky/receivers/InstallerTask;->reportPatchFailure(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/receivers/InstallerTask;->access$1100(Lcom/google/android/finsky/receivers/InstallerTask;Ljava/lang/String;Ljava/lang/String;)V

    .line 1777
    const-string v24, "Patch %s failed with exception "

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v20, v25, v26

    const/16 v26, 0x1

    aput-object v7, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 1778
    const/16 v24, 0x0

    .line 1782
    :try_start_12
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_10

    .line 1785
    :goto_c
    :try_start_13
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_11

    .line 1788
    :goto_d
    :try_start_14
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_12

    .line 1790
    :goto_e
    if-nez v11, :cond_7

    .line 1791
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    :cond_7
    move-object/from16 v17, v18

    .end local v18           #outputStream:Ljava/io/OutputStream;
    .restart local v17       #outputStream:Ljava/io/OutputStream;
    move-object v9, v10

    .end local v10           #inputFile:Ljava/io/RandomAccessFile;
    .restart local v9       #inputFile:Ljava/io/RandomAccessFile;
    move-object/from16 v16, v24

    goto/16 :goto_0

    .line 1781
    .end local v7           #e:Ljava/lang/Exception;
    .end local v9           #inputFile:Ljava/io/RandomAccessFile;
    .end local v17           #outputStream:Ljava/io/OutputStream;
    .restart local v10       #inputFile:Ljava/io/RandomAccessFile;
    .restart local v18       #outputStream:Ljava/io/OutputStream;
    :catchall_0
    move-exception v24

    .line 1782
    :try_start_15
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_13

    .line 1785
    :goto_f
    :try_start_16
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_14

    .line 1788
    :goto_10
    :try_start_17
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_15

    .line 1790
    :goto_11
    if-nez v11, :cond_8

    .line 1791
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    :cond_8
    throw v24

    .line 1783
    :catch_7
    move-exception v24

    goto/16 :goto_3

    .line 1786
    :catch_8
    move-exception v24

    goto/16 :goto_4

    .line 1789
    :catch_9
    move-exception v24

    goto/16 :goto_5

    .line 1783
    .restart local v6       #contentType:Ljava/lang/String;
    .local v7, e:Lcom/google/android/finsky/installer/Gdiff$FileFormatException;
    .restart local v23       #uriString:Ljava/lang/String;
    :catch_a
    move-exception v25

    goto/16 :goto_6

    .line 1786
    :catch_b
    move-exception v25

    goto/16 :goto_7

    .line 1789
    :catch_c
    move-exception v25

    goto/16 :goto_8

    .line 1783
    .end local v6           #contentType:Ljava/lang/String;
    .end local v23           #uriString:Ljava/lang/String;
    .local v7, e:Ljava/io/IOException;
    :catch_d
    move-exception v25

    goto :goto_9

    .line 1786
    :catch_e
    move-exception v25

    goto :goto_a

    .line 1789
    :catch_f
    move-exception v25

    goto :goto_b

    .line 1783
    .local v7, e:Ljava/lang/Exception;
    :catch_10
    move-exception v25

    goto :goto_c

    .line 1786
    :catch_11
    move-exception v25

    goto :goto_d

    .line 1789
    :catch_12
    move-exception v25

    goto :goto_e

    .line 1783
    .end local v7           #e:Ljava/lang/Exception;
    :catch_13
    move-exception v25

    goto :goto_f

    .line 1786
    :catch_14
    move-exception v25

    goto :goto_10

    .line 1789
    :catch_15
    move-exception v25

    goto :goto_11

    .line 1747
    .end local v11           #keepOutputFile:Z
    .end local v13           #maxOutputLength:J
    :catch_16
    move-exception v8

    move-object/from16 v17, v18

    .end local v18           #outputStream:Ljava/io/OutputStream;
    .restart local v17       #outputStream:Ljava/io/OutputStream;
    goto/16 :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1682
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/receivers/InstallerTask$6;->doInBackground([Ljava/lang/Void;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/io/File;)V
    .locals 7
    .parameter "patchedFile"

    .prologue
    const/16 v6, 0x3c

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1804
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1806
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerTask$6;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerTask$6;->val$downloadUri:Landroid/net/Uri;

    #calls: Lcom/google/android/finsky/receivers/InstallerTask;->setInstallerState(ILandroid/net/Uri;)V
    invoke-static {v0, v6, v1}, Lcom/google/android/finsky/receivers/InstallerTask;->access$1200(Lcom/google/android/finsky/receivers/InstallerTask;ILandroid/net/Uri;)V

    .line 1807
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerTask$6;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    #calls: Lcom/google/android/finsky/receivers/InstallerTask;->advanceState()V
    invoke-static {v0}, Lcom/google/android/finsky/receivers/InstallerTask;->access$900(Lcom/google/android/finsky/receivers/InstallerTask;)V

    .line 1833
    :goto_0
    return-void

    .line 1812
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerTask$6;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    #getter for: Lcom/google/android/finsky/receivers/InstallerTask;->mDownloadQueue:Lcom/google/android/finsky/download/DownloadQueue;
    invoke-static {v0}, Lcom/google/android/finsky/receivers/InstallerTask;->access$1300(Lcom/google/android/finsky/receivers/InstallerTask;)Lcom/google/android/finsky/download/DownloadQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerTask$6;->val$downloadUri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/download/DownloadQueue;->release(Landroid/net/Uri;)V

    .line 1815
    if-nez p1, :cond_1

    .line 1816
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerTask$6;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    #calls: Lcom/google/android/finsky/receivers/InstallerTask;->tryRestartWithoutPatch()Z
    invoke-static {v0}, Lcom/google/android/finsky/receivers/InstallerTask;->access$1400(Lcom/google/android/finsky/receivers/InstallerTask;)Z

    goto :goto_0

    .line 1821
    :cond_1
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v0

    const-string v1, "install.applyPatch"

    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask$6;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    iget-object v2, v2, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/finsky/analytics/Analytics;->logTagAndPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1823
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v0

    const-string v1, "install.applyPatch"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "cidi"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask$6;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    iget-object v3, v3, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1825
    const-string v0, "Successfully applied patch to update %s"

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask$6;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    iget-object v2, v2, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1828
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerTask$6;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/google/android/finsky/receivers/InstallerTask;->setInstallerState(ILjava/lang/String;)V
    invoke-static {v0, v6, v1}, Lcom/google/android/finsky/receivers/InstallerTask;->access$800(Lcom/google/android/finsky/receivers/InstallerTask;ILjava/lang/String;)V

    .line 1832
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerTask$6;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    #calls: Lcom/google/android/finsky/receivers/InstallerTask;->advanceState()V
    invoke-static {v0}, Lcom/google/android/finsky/receivers/InstallerTask;->access$900(Lcom/google/android/finsky/receivers/InstallerTask;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1682
    check-cast p1, Ljava/io/File;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/receivers/InstallerTask$6;->onPostExecute(Ljava/io/File;)V

    return-void
.end method
