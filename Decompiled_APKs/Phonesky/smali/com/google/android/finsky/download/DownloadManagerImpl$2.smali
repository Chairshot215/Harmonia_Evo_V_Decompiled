.class Lcom/google/android/finsky/download/DownloadManagerImpl$2;
.super Ljava/lang/Object;
.source "DownloadManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/download/DownloadManagerImpl;->remove(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/download/DownloadManagerImpl;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/download/DownloadManagerImpl;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/google/android/finsky/download/DownloadManagerImpl$2;->this$0:Lcom/google/android/finsky/download/DownloadManagerImpl;

    iput-object p2, p0, Lcom/google/android/finsky/download/DownloadManagerImpl$2;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadManagerImpl$2;->this$0:Lcom/google/android/finsky/download/DownloadManagerImpl;

    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadManagerImpl$2;->val$uri:Landroid/net/Uri;

    #calls: Lcom/google/android/finsky/download/DownloadManagerImpl;->synchronousRemove(Landroid/net/Uri;)V
    invoke-static {v0, v1}, Lcom/google/android/finsky/download/DownloadManagerImpl;->access$100(Lcom/google/android/finsky/download/DownloadManagerImpl;Landroid/net/Uri;)V

    .line 56
    return-void
.end method
