.class public Lcom/google/android/gm/LoaderManagerFragment;
.super Landroid/app/Fragment;
.source "LoaderManagerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/LoaderManagerFragment$CachedLoaderManager;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

.field private mCachedLoaderManager:Landroid/app/LoaderManager;

.field private mCachedLoaders:I

.field private mLoaderManager:Landroid/app/LoaderManager;

.field private mLoaders:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/content/Loader;",
            ">;"
        }
    .end annotation
.end field

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 39
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/LoaderManagerFragment;->mLoaders:Ljava/util/Queue;

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gm/LoaderManagerFragment;)Ljava/util/Queue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/gm/LoaderManagerFragment;->mLoaders:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/gm/LoaderManagerFragment;)Landroid/app/LoaderManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/gm/LoaderManagerFragment;->mLoaderManager:Landroid/app/LoaderManager;

    return-object v0
.end method


# virtual methods
.method public getLoaderManager()Landroid/app/LoaderManager;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/gm/LoaderManagerFragment;->mCachedLoaderManager:Landroid/app/LoaderManager;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/google/android/gm/LoaderManagerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/ActivityController$ControllableActivity;

    iput-object v0, p0, Lcom/google/android/gm/LoaderManagerFragment;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    .line 54
    iget-object v0, p0, Lcom/google/android/gm/LoaderManagerFragment;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v0}, Lcom/google/android/gm/ActivityController$ControllableActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/LoaderManagerFragment;->mResolver:Landroid/content/ContentResolver;

    .line 55
    invoke-super {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/LoaderManagerFragment;->mLoaderManager:Landroid/app/LoaderManager;

    .line 56
    new-instance v0, Lcom/google/android/gm/LoaderManagerFragment$CachedLoaderManager;

    invoke-direct {v0, p0}, Lcom/google/android/gm/LoaderManagerFragment$CachedLoaderManager;-><init>(Lcom/google/android/gm/LoaderManagerFragment;)V

    iput-object v0, p0, Lcom/google/android/gm/LoaderManagerFragment;->mCachedLoaderManager:Landroid/app/LoaderManager;

    .line 57
    iget-object v0, p0, Lcom/google/android/gm/LoaderManagerFragment;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "gmail-cached-loaders"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/LoaderManagerFragment;->mCachedLoaders:I

    .line 59
    iget-object v0, p0, Lcom/google/android/gm/LoaderManagerFragment;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    invoke-interface {v0, p0}, Lcom/google/android/gm/ActivityController$ControllableActivity;->attachLoaderManagerFragment(Lcom/google/android/gm/LoaderManagerFragment;)V

    .line 60
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gm/LoaderManagerFragment;->setRetainInstance(Z)V

    .line 47
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 64
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 66
    iget-object v0, p0, Lcom/google/android/gm/LoaderManagerFragment;->mActivity:Lcom/google/android/gm/ActivityController$ControllableActivity;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gm/ActivityController$ControllableActivity;->attachLoaderManagerFragment(Lcom/google/android/gm/LoaderManagerFragment;)V

    .line 67
    return-void
.end method

.method public removeLoader(Landroid/content/Loader;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Loader",
            "<TD;>;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<TD;>;"
    iget-object v0, p0, Lcom/google/android/gm/LoaderManagerFragment;->mLoaders:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Lcom/google/android/gm/LoaderManagerFragment;->mLoaderManager:Landroid/app/LoaderManager;

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 77
    return-void
.end method
