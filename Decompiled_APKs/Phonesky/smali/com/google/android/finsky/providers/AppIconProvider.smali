.class public Lcom/google/android/finsky/providers/AppIconProvider;
.super Landroid/content/ContentProvider;
.source "AppIconProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/providers/AppIconProvider$FetchToFileRequest;,
        Lcom/google/android/finsky/providers/AppIconProvider$AppIconLoader;,
        Lcom/google/android/finsky/providers/AppIconProvider$IconCache;,
        Lcom/google/android/finsky/providers/AppIconProvider$TimedOnCompleteListener;
    }
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# instance fields
.field private mIoSemaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "content://com.google.android.finsky.AppIconProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/providers/AppIconProvider;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 46
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/finsky/providers/AppIconProvider;->mIoSemaphore:Ljava/util/concurrent/Semaphore;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/providers/AppIconProvider;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/finsky/providers/AppIconProvider;->mIoSemaphore:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 91
    const-string v0, "image/png"

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 101
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/google/android/finsky/providers/AppIconProvider$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/providers/AppIconProvider$1;-><init>(Lcom/google/android/finsky/providers/AppIconProvider;)V

    invoke-virtual {v0}, Lcom/google/android/finsky/providers/AppIconProvider$1;->start()V

    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 8
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 65
    .local v1, callingId:J
    :try_start_0
    iget-object v5, p0, Lcom/google/android/finsky/providers/AppIconProvider;->mIoSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 66
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 67
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 68
    .local v0, appPackage:Ljava/lang/String;
    new-instance v3, Lcom/google/android/finsky/providers/AppIconProvider$AppIconLoader;

    invoke-virtual {p0}, Lcom/google/android/finsky/providers/AppIconProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5, v0}, Lcom/google/android/finsky/providers/AppIconProvider$AppIconLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 69
    .local v3, iconLoader:Lcom/google/android/finsky/providers/AppIconProvider$AppIconLoader;
    invoke-virtual {v3}, Lcom/google/android/finsky/providers/AppIconProvider$AppIconLoader;->getIconFile()Ljava/io/File;

    move-result-object v5

    const/high16 v6, 0x1000

    invoke-static {v5, v6}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 78
    iget-object v6, p0, Lcom/google/android/finsky/providers/AppIconProvider;->mIoSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v6}, Ljava/util/concurrent/Semaphore;->release()V

    .line 79
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v0           #appPackage:Ljava/lang/String;
    .end local v3           #iconLoader:Lcom/google/android/finsky/providers/AppIconProvider$AppIconLoader;
    :goto_0
    return-object v5

    .line 72
    :cond_0
    :try_start_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid URI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 74
    :catch_0
    move-exception v4

    .line 75
    .local v4, ie:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v5, "Opening file interrupted while waiting for IO."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    const/4 v5, 0x0

    .line 78
    iget-object v6, p0, Lcom/google/android/finsky/providers/AppIconProvider;->mIoSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v6}, Ljava/util/concurrent/Semaphore;->release()V

    .line 79
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 78
    .end local v4           #ie:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/google/android/finsky/providers/AppIconProvider;->mIoSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v6}, Ljava/util/concurrent/Semaphore;->release()V

    .line 79
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method
