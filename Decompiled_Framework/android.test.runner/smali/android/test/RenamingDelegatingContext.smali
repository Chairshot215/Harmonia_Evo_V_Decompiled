.class public Landroid/test/RenamingDelegatingContext;
.super Landroid/content/ContextWrapper;
.source "RenamingDelegatingContext.java"


# instance fields
.field private mCacheDir:Ljava/io/File;

.field private mDatabaseNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFileContext:Landroid/content/Context;

.field private mFileNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFilePrefix:Ljava/lang/String;

.field private final mSync:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/test/RenamingDelegatingContext;->mFilePrefix:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/test/RenamingDelegatingContext;->mSync:Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Landroid/test/RenamingDelegatingContext;->mDatabaseNames:Ljava/util/Set;

    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Landroid/test/RenamingDelegatingContext;->mFileNames:Ljava/util/Set;

    iput-object p2, p0, Landroid/test/RenamingDelegatingContext;->mFileContext:Landroid/content/Context;

    iput-object p3, p0, Landroid/test/RenamingDelegatingContext;->mFilePrefix:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/test/RenamingDelegatingContext;->mFilePrefix:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/test/RenamingDelegatingContext;->mSync:Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Landroid/test/RenamingDelegatingContext;->mDatabaseNames:Ljava/util/Set;

    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Landroid/test/RenamingDelegatingContext;->mFileNames:Ljava/util/Set;

    iput-object p1, p0, Landroid/test/RenamingDelegatingContext;->mFileContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/test/RenamingDelegatingContext;->mFilePrefix:Ljava/lang/String;

    return-void
.end method

.method public static providerWithRenamedContext(Ljava/lang/Class;Landroid/content/Context;Ljava/lang/String;)Landroid/content/ContentProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/ContentProvider;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/test/RenamingDelegatingContext;->providerWithRenamedContext(Ljava/lang/Class;Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/ContentProvider;

    move-result-object v0

    return-object v0
.end method

.method public static providerWithRenamedContext(Ljava/lang/Class;Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/ContentProvider;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/ContentProvider;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    move-object v2, p0

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentProvider;

    new-instance v0, Landroid/test/RenamingDelegatingContext;

    invoke-direct {v0, p1, p2}, Landroid/test/RenamingDelegatingContext;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    invoke-virtual {v0}, Landroid/test/RenamingDelegatingContext;->makeExistingFilesAndDbsAccessible()V

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    return-object v1
.end method

.method private renamedFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/test/RenamingDelegatingContext;->mFilePrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public databaseList()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroid/test/RenamingDelegatingContext;->mDatabaseNames:Ljava/util/Set;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public deleteDatabase(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Landroid/test/RenamingDelegatingContext;->mDatabaseNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/test/RenamingDelegatingContext;->mDatabaseNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/test/RenamingDelegatingContext;->mFileContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/test/RenamingDelegatingContext;->renamedFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deleteFile(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Landroid/test/RenamingDelegatingContext;->mFileNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/test/RenamingDelegatingContext;->mFileNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/test/RenamingDelegatingContext;->mFileContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/test/RenamingDelegatingContext;->renamedFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public fileList()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroid/test/RenamingDelegatingContext;->mFileNames:Ljava/util/Set;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getCacheDir()Ljava/io/File;
    .locals 5

    iget-object v1, p0, Landroid/test/RenamingDelegatingContext;->mSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/test/RenamingDelegatingContext;->mCacheDir:Ljava/io/File;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Landroid/test/RenamingDelegatingContext;->mFileContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "cache"

    invoke-direct {p0, v3}, Landroid/test/RenamingDelegatingContext;->renamedFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/test/RenamingDelegatingContext;->mCacheDir:Ljava/io/File;

    :cond_0
    iget-object v0, p0, Landroid/test/RenamingDelegatingContext;->mCacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/test/RenamingDelegatingContext;->mCacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "RenamingDelegatingContext"

    const-string v2, "Unable to create cache directory"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/test/RenamingDelegatingContext;->mCacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1f9

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-static {v0, v2, v3, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/test/RenamingDelegatingContext;->mCacheDir:Ljava/io/File;

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getDatabasePath(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    iget-object v0, p0, Landroid/test/RenamingDelegatingContext;->mFileContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/test/RenamingDelegatingContext;->renamedFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getDatabasePrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/test/RenamingDelegatingContext;->mFilePrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getFileStreamPath(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    iget-object v0, p0, Landroid/test/RenamingDelegatingContext;->mFileContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/test/RenamingDelegatingContext;->renamedFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public makeExistingFilesAndDbsAccessible()V
    .locals 8

    iget-object v6, p0, Landroid/test/RenamingDelegatingContext;->mFileContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->databaseList()[Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    array-length v5, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v0, v4

    invoke-virtual {p0, v2}, Landroid/test/RenamingDelegatingContext;->shouldDiskNameBeVisible(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/test/RenamingDelegatingContext;->mDatabaseNames:Ljava/util/Set;

    invoke-virtual {p0, v2}, Landroid/test/RenamingDelegatingContext;->publicNameFromDiskName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v6, p0, Landroid/test/RenamingDelegatingContext;->mFileContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->fileList()[Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    array-length v5, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v2, v0, v4

    invoke-virtual {p0, v2}, Landroid/test/RenamingDelegatingContext;->shouldDiskNameBeVisible(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/test/RenamingDelegatingContext;->mFileNames:Ljava/util/Set;

    invoke-virtual {p0, v2}, Landroid/test/RenamingDelegatingContext;->publicNameFromDiskName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/test/RenamingDelegatingContext;->renamedFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/test/RenamingDelegatingContext;->mFileNames:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/test/RenamingDelegatingContext;->mFileContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Landroid/test/RenamingDelegatingContext;->mFileNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/test/RenamingDelegatingContext;->mFileContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/test/RenamingDelegatingContext;->renamedFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    invoke-direct {p0, p1}, Landroid/test/RenamingDelegatingContext;->renamedFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/test/RenamingDelegatingContext;->mDatabaseNames:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/test/RenamingDelegatingContext;->mDatabaseNames:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/test/RenamingDelegatingContext;->mFileContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    :cond_0
    iget-object v1, p0, Landroid/test/RenamingDelegatingContext;->mFileContext:Landroid/content/Context;

    invoke-virtual {v1, v0, p2, p3}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    return-object v1
.end method

.method public openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    invoke-direct {p0, p1}, Landroid/test/RenamingDelegatingContext;->renamedFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/test/RenamingDelegatingContext;->mDatabaseNames:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/test/RenamingDelegatingContext;->mDatabaseNames:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/test/RenamingDelegatingContext;->mFileContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    :cond_0
    iget-object v1, p0, Landroid/test/RenamingDelegatingContext;->mFileContext:Landroid/content/Context;

    invoke-virtual {v1, v0, p2, p3, p4}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    return-object v1
.end method

.method publicNameFromDiskName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0, p1}, Landroid/test/RenamingDelegatingContext;->shouldDiskNameBeVisible(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disk file should not be visible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/test/RenamingDelegatingContext;->mFilePrefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method shouldDiskNameBeVisible(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroid/test/RenamingDelegatingContext;->mFilePrefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
