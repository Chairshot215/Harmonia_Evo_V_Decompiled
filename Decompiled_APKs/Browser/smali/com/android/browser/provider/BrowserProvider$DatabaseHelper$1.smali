.class Lcom/android/browser/provider/BrowserProvider$DatabaseHelper$1;
.super Ljava/lang/Thread;
.source "BrowserProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/provider/BrowserProvider$DatabaseHelper;->removeGears()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/provider/BrowserProvider$DatabaseHelper;


# direct methods
.method constructor <init>(Lcom/android/browser/provider/BrowserProvider$DatabaseHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 343
    iput-object p1, p0, Lcom/android/browser/provider/BrowserProvider$DatabaseHelper$1;->this$0:Lcom/android/browser/provider/BrowserProvider$DatabaseHelper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method private deleteDirectory(Ljava/io/File;)V
    .locals 3
    .parameter "currentDir"

    .prologue
    .line 378
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 379
    .local v0, files:[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 380
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 381
    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Lcom/android/browser/provider/BrowserProvider$DatabaseHelper$1;->deleteDirectory(Ljava/io/File;)V

    .line 383
    :cond_0
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 379
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 385
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 386
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 346
    const/16 v7, 0xa

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 347
    iget-object v7, p0, Lcom/android/browser/provider/BrowserProvider$DatabaseHelper$1;->this$0:Lcom/android/browser/provider/BrowserProvider$DatabaseHelper;

    #getter for: Lcom/android/browser/provider/BrowserProvider$DatabaseHelper;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/browser/provider/BrowserProvider$DatabaseHelper;->access$100(Lcom/android/browser/provider/BrowserProvider$DatabaseHelper;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v2, v7, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 348
    .local v2, browserDataDirString:Ljava/lang/String;
    const-string v1, "app_plugins"

    .line 349
    .local v1, appPluginsDirString:Ljava/lang/String;
    const-string v5, "gears"

    .line 350
    .local v5, gearsPrefix:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "app_plugins"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 352
    .local v0, appPluginsDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    new-instance v7, Lcom/android/browser/provider/BrowserProvider$DatabaseHelper$1$1;

    invoke-direct {v7, p0}, Lcom/android/browser/provider/BrowserProvider$DatabaseHelper$1$1;-><init>(Lcom/android/browser/provider/BrowserProvider$DatabaseHelper$1;)V

    invoke-virtual {v0, v7}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v4

    .line 361
    .local v4, gearsFiles:[Ljava/io/File;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    array-length v7, v4

    if-ge v6, v7, :cond_3

    .line 362
    aget-object v7, v4, v6

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 363
    aget-object v7, v4, v6

    invoke-direct {p0, v7}, Lcom/android/browser/provider/BrowserProvider$DatabaseHelper$1;->deleteDirectory(Ljava/io/File;)V

    .line 361
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 365
    :cond_2
    aget-object v7, v4, v6

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 369
    :cond_3
    new-instance v3, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "gears"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 371
    .local v3, gearsDataDir:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 374
    invoke-direct {p0, v3}, Lcom/android/browser/provider/BrowserProvider$DatabaseHelper$1;->deleteDirectory(Ljava/io/File;)V

    goto :goto_0
.end method
