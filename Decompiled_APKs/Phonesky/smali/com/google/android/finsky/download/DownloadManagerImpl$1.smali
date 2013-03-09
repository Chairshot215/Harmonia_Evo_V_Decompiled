.class Lcom/google/android/finsky/download/DownloadManagerImpl$1;
.super Ljava/lang/Object;
.source "DownloadManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/download/DownloadManagerImpl;->enqueue(Lcom/google/android/finsky/download/DownloadRequest;Lcom/google/android/finsky/utils/ParameterizedRunnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/download/DownloadManagerImpl;

.field final synthetic val$listener:Lcom/google/android/finsky/utils/ParameterizedRunnable;

.field final synthetic val$request:Lcom/google/android/finsky/download/DownloadRequest;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/download/DownloadManagerImpl;Lcom/google/android/finsky/download/DownloadRequest;Lcom/google/android/finsky/utils/ParameterizedRunnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/google/android/finsky/download/DownloadManagerImpl$1;->this$0:Lcom/google/android/finsky/download/DownloadManagerImpl;

    iput-object p2, p0, Lcom/google/android/finsky/download/DownloadManagerImpl$1;->val$request:Lcom/google/android/finsky/download/DownloadRequest;

    iput-object p3, p0, Lcom/google/android/finsky/download/DownloadManagerImpl$1;->val$listener:Lcom/google/android/finsky/utils/ParameterizedRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 42
    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadManagerImpl$1;->this$0:Lcom/google/android/finsky/download/DownloadManagerImpl;

    #getter for: Lcom/google/android/finsky/download/DownloadManagerImpl;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/google/android/finsky/download/DownloadManagerImpl;->access$000(Lcom/google/android/finsky/download/DownloadManagerImpl;)Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/google/android/finsky/download/DownloadManagerConstants;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/download/DownloadManagerImpl$1;->val$request:Lcom/google/android/finsky/download/DownloadRequest;

    invoke-virtual {v3}, Lcom/google/android/finsky/download/DownloadRequest;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 44
    .local v0, uri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/google/android/finsky/download/DownloadManagerConstants;->sniffDownloadManagerVersion(Landroid/net/Uri;)V

    .line 45
    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadManagerImpl$1;->val$listener:Lcom/google/android/finsky/utils/ParameterizedRunnable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadManagerImpl$1;->val$listener:Lcom/google/android/finsky/utils/ParameterizedRunnable;

    invoke-interface {v1, v0}, Lcom/google/android/finsky/utils/ParameterizedRunnable;->run(Ljava/lang/Object;)V

    .line 46
    :cond_0
    return-void
.end method
