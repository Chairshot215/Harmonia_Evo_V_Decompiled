.class Lcom/google/android/finsky/providers/AppIconProvider$1;
.super Ljava/lang/Thread;
.source "AppIconProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/providers/AppIconProvider;->onCreate()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/providers/AppIconProvider;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/providers/AppIconProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/google/android/finsky/providers/AppIconProvider$1;->this$0:Lcom/google/android/finsky/providers/AppIconProvider;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/finsky/providers/AppIconProvider$1;->this$0:Lcom/google/android/finsky/providers/AppIconProvider;

    invoke-virtual {v0}, Lcom/google/android/finsky/providers/AppIconProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/providers/AppIconProvider$AppIconLoader;->initialize([Ljava/io/File;)V

    .line 55
    iget-object v0, p0, Lcom/google/android/finsky/providers/AppIconProvider$1;->this$0:Lcom/google/android/finsky/providers/AppIconProvider;

    #getter for: Lcom/google/android/finsky/providers/AppIconProvider;->mIoSemaphore:Ljava/util/concurrent/Semaphore;
    invoke-static {v0}, Lcom/google/android/finsky/providers/AppIconProvider;->access$000(Lcom/google/android/finsky/providers/AppIconProvider;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 56
    return-void
.end method
