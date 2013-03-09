.class Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;
.super Ljava/lang/Object;
.source "AppPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/clockwidget/lpsense/AppPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppInfoCache"
.end annotation


# static fields
.field private static final FILE_BUFFER_SIZE:I = 0x400

.field static final FILE_CACHE:Z = true

.field public static final mFileCacheName:Ljava/lang/String; = "AppListInfo.txt"


# instance fields
.field private mAppPropCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lfr/clockwidget/lpsense/AppPickerActivity$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lfr/clockwidget/lpsense/AppPickerActivity;


# direct methods
.method constructor <init>(Lfr/clockwidget/lpsense/AppPickerActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 693
    iput-object p1, p0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;->this$0:Lfr/clockwidget/lpsense/AppPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 697
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;->mAppPropCache:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$0(Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;)Z
    .locals 1
    .parameter

    .prologue
    .line 699
    invoke-direct {p0}, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;->isEmpty()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;Ljava/lang/String;)Lfr/clockwidget/lpsense/AppPickerActivity$AppInfo;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 703
    invoke-direct {p0, p1}, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;->getEntry(Ljava/lang/String;)Lfr/clockwidget/lpsense/AppPickerActivity$AppInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 707
    invoke-direct {p0}, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;->getPkgList()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;)V
    .locals 0
    .parameter

    .prologue
    .line 818
    invoke-direct {p0}, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;->loadCache()V

    return-void
.end method

.method static synthetic access$4(Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;)V
    .locals 0
    .parameter

    .prologue
    .line 834
    invoke-direct {p0}, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;->updateCache()V

    return-void
.end method

.method private getEntry(Ljava/lang/String;)Lfr/clockwidget/lpsense/AppPickerActivity$AppInfo;
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 704
    iget-object v0, p0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;->mAppPropCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfo;

    return-object p0
.end method

.method private getPkgList()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 708
    iget-object v0, p0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;->mAppPropCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private isEmpty()Z
    .locals 1

    .prologue
    .line 700
    iget-object v0, p0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;->mAppPropCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadCache()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v5, "disableCache"

    .line 820
    iget-object v3, p0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;->this$0:Lfr/clockwidget/lpsense/AppPickerActivity;

    const-string v4, "AppListInfo.prefs"

    invoke-virtual {v3, v4, v6}, Lfr/clockwidget/lpsense/AppPickerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 821
    .local v2, settings:Landroid/content/SharedPreferences;
    const-string v3, "disableCache"

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 823
    .local v0, disable:Z
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 824
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "disableCache"

    invoke-interface {v1, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 825
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 826
    if-nez v0, :cond_0

    .line 827
    invoke-direct {p0}, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;->readFromFile()V

    .line 829
    const-string v3, "disableCache"

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 830
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 832
    :cond_0
    return-void
.end method

.method private readFromFile()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    .line 724
    new-instance v4, Ljava/io/File;

    iget-object v10, p0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;->this$0:Lfr/clockwidget/lpsense/AppPickerActivity;

    invoke-virtual {v10}, Lfr/clockwidget/lpsense/AppPickerActivity;->getFilesDir()Ljava/io/File;

    move-result-object v10

    const-string v11, "AppListInfo.txt"

    invoke-direct {v4, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 725
    .local v4, cacheFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_1

    .line 774
    :cond_0
    :goto_0
    return-void

    .line 728
    :cond_1
    const/4 v7, 0x0

    .line 729
    .local v7, fis:Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 731
    .local v6, err:Z
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    .end local v7           #fis:Ljava/io/FileInputStream;
    invoke-direct {v7, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 736
    .restart local v7       #fis:Ljava/io/FileInputStream;
    const/16 v10, 0x400

    :try_start_1
    new-array v3, v10, [B

    .line 737
    .local v3, byteBuff:[B
    const/4 v10, 0x2

    new-array v8, v10, [B

    .line 738
    .local v8, lenBytes:[B
    iget-object v10, p0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;->mAppPropCache:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->clear()V

    .line 739
    :goto_1
    invoke-virtual {v7}, Ljava/io/FileInputStream;->available()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v10

    if-gtz v10, :cond_3

    .line 762
    :goto_2
    if-eqz v7, :cond_2

    .line 764
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 769
    :cond_2
    :goto_3
    if-eqz v6, :cond_0

    .line 771
    iget-object v10, p0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;->mAppPropCache:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->clear()V

    goto :goto_0

    .line 732
    .end local v3           #byteBuff:[B
    .end local v7           #fis:Ljava/io/FileInputStream;
    .end local v8           #lenBytes:[B
    :catch_0
    move-exception v10

    move-object v5, v10

    .line 733
    .local v5, e:Ljava/io/FileNotFoundException;
    goto :goto_0

    .line 740
    .end local v5           #e:Ljava/io/FileNotFoundException;
    .restart local v3       #byteBuff:[B
    .restart local v7       #fis:Ljava/io/FileInputStream;
    .restart local v8       #lenBytes:[B
    :cond_3
    const/4 v10, 0x0

    const/4 v11, 0x2

    :try_start_3
    invoke-virtual {v7, v8, v10, v11}, Ljava/io/FileInputStream;->read([BII)I

    .line 741
    const/4 v10, 0x0

    aget-byte v10, v8, v10

    shl-int/lit8 v10, v10, 0x8

    const/4 v11, 0x1

    aget-byte v11, v8, v11

    or-int v1, v10, v11

    .line 742
    .local v1, buffLen:I
    if-lez v1, :cond_4

    array-length v10, v3

    if-le v1, v10, :cond_5

    .line 743
    :cond_4
    const/4 v6, 0x1

    .line 744
    goto :goto_2

    .line 747
    :cond_5
    const/4 v10, 0x0

    invoke-virtual {v7, v3, v10, v1}, Ljava/io/FileInputStream;->read([BII)I

    .line 748
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 750
    .local v2, buffStr:Ljava/lang/String;
    const-string v10, ","

    invoke-virtual {v2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 751
    .local v9, substrs:[Ljava/lang/String;
    array-length v10, v9

    if-ge v10, v13, :cond_6

    .line 753
    const/4 v6, 0x1

    .line 754
    goto :goto_2

    .line 756
    :cond_6
    new-instance v0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfo;

    const/4 v10, 0x0

    aget-object v10, v9, v10

    const/4 v11, -0x1

    const/4 v12, 0x1

    aget-object v12, v9, v12

    invoke-direct {v0, v10, v11, v12}, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfo;-><init>(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 757
    .local v0, aInfo:Lfr/clockwidget/lpsense/AppPickerActivity$AppInfo;
    iget-object v10, p0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;->mAppPropCache:Ljava/util/Map;

    iget-object v11, v0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfo;->pkgName:Ljava/lang/String;

    invoke-interface {v10, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 759
    .end local v0           #aInfo:Lfr/clockwidget/lpsense/AppPickerActivity$AppInfo;
    .end local v1           #buffLen:I
    .end local v2           #buffStr:Ljava/lang/String;
    .end local v3           #byteBuff:[B
    .end local v8           #lenBytes:[B
    .end local v9           #substrs:[Ljava/lang/String;
    :catch_1
    move-exception v10

    move-object v5, v10

    .line 760
    .local v5, e:Ljava/io/IOException;
    const/4 v6, 0x1

    .line 762
    if-eqz v7, :cond_7

    .line 764
    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 769
    :cond_7
    :goto_4
    if-eqz v6, :cond_0

    .line 771
    iget-object v10, p0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;->mAppPropCache:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->clear()V

    goto :goto_0

    .line 765
    :catch_2
    move-exception v5

    .line 766
    const/4 v6, 0x1

    goto :goto_4

    .line 761
    .end local v5           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 762
    if-eqz v7, :cond_8

    .line 764
    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 769
    :cond_8
    :goto_5
    if-eqz v6, :cond_9

    .line 771
    iget-object v11, p0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;->mAppPropCache:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->clear()V

    .line 773
    :cond_9
    throw v10

    .line 765
    :catch_3
    move-exception v5

    .line 766
    .restart local v5       #e:Ljava/io/IOException;
    const/4 v6, 0x1

    goto :goto_5

    .line 765
    .end local v5           #e:Ljava/io/IOException;
    .restart local v3       #byteBuff:[B
    .restart local v8       #lenBytes:[B
    :catch_4
    move-exception v5

    .line 766
    .restart local v5       #e:Ljava/io/IOException;
    const/4 v6, 0x1

    goto :goto_3
.end method

.method private updateCache()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const-string v6, "disableCache"

    .line 835
    iget-object v3, p0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;->this$0:Lfr/clockwidget/lpsense/AppPickerActivity;

    const-string v4, "AppListInfo.prefs"

    invoke-virtual {v3, v4, v5}, Lfr/clockwidget/lpsense/AppPickerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 836
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 837
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "disableCache"

    const/4 v3, 0x1

    invoke-interface {v0, v6, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 838
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 840
    invoke-virtual {p0}, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;->writeToFile()Z

    move-result v2

    .line 841
    .local v2, writeStatus:Z
    iget-object v3, p0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;->mAppPropCache:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 842
    if-eqz v2, :cond_0

    .line 844
    const-string v3, "disableCache"

    invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 845
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 848
    :cond_0
    return-void
.end method


# virtual methods
.method public addEntry(Lfr/clockwidget/lpsense/AppPickerActivity$AppInfo;)V
    .locals 2
    .parameter "aInfo"

    .prologue
    .line 712
    if-eqz p1, :cond_0

    iget-object v0, p1, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfo;->pkgName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 713
    iget-object v0, p0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;->mAppPropCache:Ljava/util/Map;

    iget-object v1, p1, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfo;->pkgName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    :cond_0
    return-void
.end method

.method public removeEntry(Ljava/lang/String;)V
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 718
    if-eqz p1, :cond_0

    .line 719
    iget-object v0, p0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;->mAppPropCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    :cond_0
    return-void
.end method

.method writeToFile()Z
    .locals 14

    .prologue
    .line 777
    new-instance v3, Ljava/io/File;

    iget-object v11, p0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;->this$0:Lfr/clockwidget/lpsense/AppPickerActivity;

    invoke-virtual {v11}, Lfr/clockwidget/lpsense/AppPickerActivity;->getFilesDir()Ljava/io/File;

    move-result-object v11

    const-string v12, "AppListInfo.txt"

    invoke-direct {v3, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 778
    .local v3, cacheFile:Ljava/io/File;
    const/4 v5, 0x0

    .line 780
    .local v5, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    .line 781
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .local v6, fos:Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v11, p0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;->mAppPropCache:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    .line 782
    .local v8, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v11, 0x2

    new-array v10, v11, [B

    .line 783
    .local v10, lenBytes:[B
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6

    move-result v12

    if-nez v12, :cond_1

    .line 808
    if-eqz v6, :cond_0

    .line 810
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 804
    :cond_0
    const/4 v11, 0x1

    move-object v5, v6

    .line 812
    .end local v6           #fos:Ljava/io/FileOutputStream;
    .end local v8           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v10           #lenBytes:[B
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :goto_1
    return v11

    .line 783
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    .restart local v8       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v10       #lenBytes:[B
    :cond_1
    :try_start_3
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 784
    .local v7, key:Ljava/lang/String;
    iget-object v12, p0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;->mAppPropCache:Ljava/util/Map;

    invoke-interface {v12, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfo;

    .line 785
    .local v0, aInfo:Lfr/clockwidget/lpsense/AppPickerActivity$AppInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v12, v0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfo;->pkgName:Ljava/lang/String;

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 786
    .local v1, buff:Ljava/lang/StringBuilder;
    const-string v12, ","

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 787
    iget-object v12, v0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfo;->appName:Ljava/lang/CharSequence;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_6

    .line 789
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 790
    .local v2, byteBuff:[B
    array-length v9, v2

    .line 791
    .local v9, len:I
    array-length v12, v2

    const/16 v13, 0x400

    if-lt v12, v13, :cond_2

    .line 793
    const/16 v9, 0x400

    .line 796
    :cond_2
    const/4 v12, 0x1

    and-int/lit16 v13, v9, 0xff

    int-to-byte v13, v13

    aput-byte v13, v10, v12

    .line 797
    const/4 v12, 0x0

    const v13, 0xff00

    and-int/2addr v13, v9

    shr-int/lit8 v13, v13, 0x8

    int-to-byte v13, v13

    aput-byte v13, v10, v12

    .line 798
    const/4 v12, 0x0

    const/4 v13, 0x2

    invoke-virtual {v6, v10, v12, v13}, Ljava/io/FileOutputStream;->write([BII)V

    .line 799
    const/4 v12, 0x0

    invoke-virtual {v6, v2, v12, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_0

    .line 800
    .end local v2           #byteBuff:[B
    .end local v9           #len:I
    :catch_0
    move-exception v11

    move-object v4, v11

    .line 808
    .local v4, e:Ljava/io/IOException;
    if-eqz v6, :cond_3

    .line 810
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 801
    :cond_3
    const/4 v11, 0x0

    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto :goto_1

    .line 811
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v4

    .line 812
    const/4 v11, 0x0

    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto :goto_1

    .line 811
    .end local v0           #aInfo:Lfr/clockwidget/lpsense/AppPickerActivity$AppInfo;
    .end local v1           #buff:Ljava/lang/StringBuilder;
    .end local v4           #e:Ljava/io/IOException;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .end local v7           #key:Ljava/lang/String;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v4

    .line 812
    .restart local v4       #e:Ljava/io/IOException;
    const/4 v11, 0x0

    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto :goto_1

    .line 805
    .end local v4           #e:Ljava/io/IOException;
    .end local v8           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v10           #lenBytes:[B
    :catch_3
    move-exception v11

    move-object v4, v11

    .line 808
    .local v4, e:Ljava/io/FileNotFoundException;
    :goto_2
    if-eqz v5, :cond_4

    .line 810
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 806
    :cond_4
    const/4 v11, 0x0

    goto :goto_1

    .line 811
    :catch_4
    move-exception v4

    .line 812
    .local v4, e:Ljava/io/IOException;
    const/4 v11, 0x0

    goto :goto_1

    .line 807
    .end local v4           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 808
    :goto_3
    if-eqz v5, :cond_5

    .line 810
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 815
    :cond_5
    throw v11

    .line 811
    :catch_5
    move-exception v4

    .line 812
    .restart local v4       #e:Ljava/io/IOException;
    const/4 v11, 0x0

    goto :goto_1

    .line 807
    .end local v4           #e:Ljava/io/IOException;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v11

    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 805
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    :catch_6
    move-exception v11

    move-object v4, v11

    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto :goto_2
.end method
