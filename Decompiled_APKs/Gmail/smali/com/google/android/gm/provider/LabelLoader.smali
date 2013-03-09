.class public Lcom/google/android/gm/provider/LabelLoader;
.super Landroid/content/AsyncTaskLoader;
.source "LabelLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Lcom/google/android/gm/provider/LabelList;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAccount:Ljava/lang/String;

.field private final mAutoRefresh:Z

.field private mLabelList:Lcom/google/android/gm/provider/LabelList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0
    .parameter "context"
    .parameter "account"
    .parameter "autoRefresh"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 23
    iput-object p2, p0, Lcom/google/android/gm/provider/LabelLoader;->mAccount:Ljava/lang/String;

    .line 24
    iput-boolean p3, p0, Lcom/google/android/gm/provider/LabelLoader;->mAutoRefresh:Z

    .line 25
    return-void
.end method


# virtual methods
.method public deliverResult(Lcom/google/android/gm/provider/LabelList;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 42
    iget-boolean v0, p0, Lcom/google/android/gm/provider/LabelLoader;->mAutoRefresh:Z

    if-eqz v0, :cond_1

    .line 43
    iget-object v0, p0, Lcom/google/android/gm/provider/LabelLoader;->mLabelList:Lcom/google/android/gm/provider/LabelList;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/google/android/gm/provider/LabelLoader;->mLabelList:Lcom/google/android/gm/provider/LabelList;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/LabelList;->unregisterForLabelChanges()V

    .line 46
    :cond_0
    iput-object p1, p0, Lcom/google/android/gm/provider/LabelLoader;->mLabelList:Lcom/google/android/gm/provider/LabelList;

    .line 47
    iget-object v0, p0, Lcom/google/android/gm/provider/LabelLoader;->mLabelList:Lcom/google/android/gm/provider/LabelList;

    if-eqz v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/google/android/gm/provider/LabelLoader;->mLabelList:Lcom/google/android/gm/provider/LabelList;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/LabelList;->registerForLabelChanges()V

    .line 51
    :cond_1
    return-void
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 12
    check-cast p1, Lcom/google/android/gm/provider/LabelList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/gm/provider/LabelLoader;->deliverResult(Lcom/google/android/gm/provider/LabelList;)V

    return-void
.end method

.method public loadInBackground()Lcom/google/android/gm/provider/LabelList;
    .locals 5

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/android/gm/provider/LabelLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/provider/LabelLoader;->mAccount:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/gm/provider/LabelManager;->getLabelList(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Z)Lcom/google/android/gm/provider/LabelList;

    move-result-object v0

    .line 35
    .local v0, labels:Lcom/google/android/gm/provider/LabelList;
    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/google/android/gm/provider/LabelLoader;->loadInBackground()Lcom/google/android/gm/provider/LabelList;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 0

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/google/android/gm/provider/LabelLoader;->stopLoading()V

    .line 56
    return-void
.end method

.method protected onStartLoading()V
    .locals 0

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/google/android/gm/provider/LabelLoader;->forceLoad()V

    .line 61
    return-void
.end method

.method protected onStopLoading()V
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/google/android/gm/provider/LabelLoader;->mAutoRefresh:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/provider/LabelLoader;->mLabelList:Lcom/google/android/gm/provider/LabelList;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/google/android/gm/provider/LabelLoader;->mLabelList:Lcom/google/android/gm/provider/LabelList;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/LabelList;->unregisterForLabelChanges()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/provider/LabelLoader;->mLabelList:Lcom/google/android/gm/provider/LabelList;

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gm/provider/LabelLoader;->cancelLoad()Z

    .line 70
    return-void
.end method
