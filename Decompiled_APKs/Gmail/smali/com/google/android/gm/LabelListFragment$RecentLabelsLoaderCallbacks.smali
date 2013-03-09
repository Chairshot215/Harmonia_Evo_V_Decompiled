.class Lcom/google/android/gm/LabelListFragment$RecentLabelsLoaderCallbacks;
.super Ljava/lang/Object;
.source "LabelListFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/LabelListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecentLabelsLoaderCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/LabelListFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/gm/LabelListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 527
    iput-object p1, p0, Lcom/google/android/gm/LabelListFragment$RecentLabelsLoaderCallbacks;->this$0:Lcom/google/android/gm/LabelListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gm/LabelListFragment;Lcom/google/android/gm/LabelListFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 527
    invoke-direct {p0, p1}, Lcom/google/android/gm/LabelListFragment$RecentLabelsLoaderCallbacks;-><init>(Lcom/google/android/gm/LabelListFragment;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 4
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 532
    new-instance v0, Lcom/google/android/gm/RecentLabelLoader;

    iget-object v1, p0, Lcom/google/android/gm/LabelListFragment$RecentLabelsLoaderCallbacks;->this$0:Lcom/google/android/gm/LabelListFragment;

    #getter for: Lcom/google/android/gm/LabelListFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/gm/LabelListFragment;->access$400(Lcom/google/android/gm/LabelListFragment;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/LabelListFragment$RecentLabelsLoaderCallbacks;->this$0:Lcom/google/android/gm/LabelListFragment;

    #getter for: Lcom/google/android/gm/LabelListFragment;->mAccount:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/gm/LabelListFragment;->access$700(Lcom/google/android/gm/LabelListFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gm/LabelListFragment$RecentLabelsLoaderCallbacks;->this$0:Lcom/google/android/gm/LabelListFragment;

    #getter for: Lcom/google/android/gm/LabelListFragment;->mUiHandler:Lcom/google/android/gm/UiHandler;
    invoke-static {v3}, Lcom/google/android/gm/LabelListFragment;->access$1000(Lcom/google/android/gm/LabelListFragment;)Lcom/google/android/gm/UiHandler;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gm/RecentLabelLoader;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/UiHandler;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;)V
    .locals 1
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;",
            ">;",
            "Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;",
            ")V"
        }
    .end annotation

    .prologue
    .line 537
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;>;"
    iget-object v0, p0, Lcom/google/android/gm/LabelListFragment$RecentLabelsLoaderCallbacks;->this$0:Lcom/google/android/gm/LabelListFragment;

    #getter for: Lcom/google/android/gm/LabelListFragment;->mAdapter:Lcom/google/android/gm/LabelListFragment$LabelsAdapter;
    invoke-static {v0}, Lcom/google/android/gm/LabelListFragment;->access$1100(Lcom/google/android/gm/LabelListFragment;)Lcom/google/android/gm/LabelListFragment$LabelsAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->setRecentLabels(Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;)V

    .line 538
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 527
    check-cast p2, Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gm/LabelListFragment$RecentLabelsLoaderCallbacks;->onLoadFinished(Landroid/content/Loader;Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 543
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;>;"
    return-void
.end method
