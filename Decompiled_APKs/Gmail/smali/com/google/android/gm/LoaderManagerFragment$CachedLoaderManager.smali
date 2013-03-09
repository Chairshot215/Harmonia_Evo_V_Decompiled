.class public Lcom/google/android/gm/LoaderManagerFragment$CachedLoaderManager;
.super Landroid/app/LoaderManager;
.source "LoaderManagerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/LoaderManagerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CachedLoaderManager"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/LoaderManagerFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/LoaderManagerFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/google/android/gm/LoaderManagerFragment$CachedLoaderManager;->this$0:Lcom/google/android/gm/LoaderManagerFragment;

    invoke-direct {p0}, Landroid/app/LoaderManager;-><init>()V

    return-void
.end method

.method private isLoaderCached(I)Z
    .locals 3
    .parameter "id"

    .prologue
    .line 102
    iget-object v2, p0, Lcom/google/android/gm/LoaderManagerFragment$CachedLoaderManager;->this$0:Lcom/google/android/gm/LoaderManagerFragment;

    #getter for: Lcom/google/android/gm/LoaderManagerFragment;->mLoaders:Ljava/util/Queue;
    invoke-static {v2}, Lcom/google/android/gm/LoaderManagerFragment;->access$000(Lcom/google/android/gm/LoaderManagerFragment;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/Loader;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 103
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Loader;

    .line 104
    .local v1, loader:Landroid/content/Loader;
    invoke-virtual {v1}, Landroid/content/Loader;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 105
    const/4 v2, 0x1

    .line 108
    .end local v1           #loader:Landroid/content/Loader;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public destroyLoader(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/google/android/gm/LoaderManagerFragment$CachedLoaderManager;->isLoaderCached(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/google/android/gm/LoaderManagerFragment$CachedLoaderManager;->this$0:Lcom/google/android/gm/LoaderManagerFragment;

    #getter for: Lcom/google/android/gm/LoaderManagerFragment;->mLoaderManager:Landroid/app/LoaderManager;
    invoke-static {v0}, Lcom/google/android/gm/LoaderManagerFragment;->access$200(Lcom/google/android/gm/LoaderManagerFragment;)Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 138
    :cond_0
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .parameter "prefix"
    .parameter "fd"
    .parameter "writer"
    .parameter "args"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/gm/LoaderManagerFragment$CachedLoaderManager;->this$0:Lcom/google/android/gm/LoaderManagerFragment;

    #getter for: Lcom/google/android/gm/LoaderManagerFragment;->mLoaderManager:Landroid/app/LoaderManager;
    invoke-static {v0}, Lcom/google/android/gm/LoaderManagerFragment;->access$200(Lcom/google/android/gm/LoaderManagerFragment;)Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/LoaderManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public getLoader(I)Landroid/content/Loader;
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I)",
            "Landroid/content/Loader",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/gm/LoaderManagerFragment$CachedLoaderManager;->this$0:Lcom/google/android/gm/LoaderManagerFragment;

    #getter for: Lcom/google/android/gm/LoaderManagerFragment;->mLoaderManager:Landroid/app/LoaderManager;
    invoke-static {v0}, Lcom/google/android/gm/LoaderManagerFragment;->access$200(Lcom/google/android/gm/LoaderManagerFragment;)Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v0

    return-object v0
.end method

.method public initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;
    .locals 1
    .parameter "id"
    .parameter "args"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<TD;>;)",
            "Landroid/content/Loader",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 113
    .local p3, callback:Landroid/app/LoaderManager$LoaderCallbacks;,"Landroid/app/LoaderManager$LoaderCallbacks<TD;>;"
    iget-object v0, p0, Lcom/google/android/gm/LoaderManagerFragment$CachedLoaderManager;->this$0:Lcom/google/android/gm/LoaderManagerFragment;

    #getter for: Lcom/google/android/gm/LoaderManagerFragment;->mLoaderManager:Landroid/app/LoaderManager;
    invoke-static {v0}, Lcom/google/android/gm/LoaderManagerFragment;->access$200(Lcom/google/android/gm/LoaderManagerFragment;)Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    move-result-object v0

    return-object v0
.end method

.method public restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;
    .locals 1
    .parameter "id"
    .parameter "args"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<TD;>;)",
            "Landroid/content/Loader",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 127
    .local p3, callback:Landroid/app/LoaderManager$LoaderCallbacks;,"Landroid/app/LoaderManager$LoaderCallbacks<TD;>;"
    iget-object v0, p0, Lcom/google/android/gm/LoaderManagerFragment$CachedLoaderManager;->this$0:Lcom/google/android/gm/LoaderManagerFragment;

    #getter for: Lcom/google/android/gm/LoaderManagerFragment;->mLoaderManager:Landroid/app/LoaderManager;
    invoke-static {v0}, Lcom/google/android/gm/LoaderManagerFragment;->access$200(Lcom/google/android/gm/LoaderManagerFragment;)Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    move-result-object v0

    return-object v0
.end method
