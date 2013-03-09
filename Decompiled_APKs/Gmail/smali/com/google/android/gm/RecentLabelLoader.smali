.class public Lcom/google/android/gm/RecentLabelLoader;
.super Landroid/content/AsyncTaskLoader;
.source "RecentLabelLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAccount:Ljava/lang/String;

.field private mDefaultTouchHandler:Lcom/google/android/gm/UiHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/UiHandler;)V
    .locals 0
    .parameter "context"
    .parameter "account"
    .parameter "uiHandler"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 20
    iput-object p2, p0, Lcom/google/android/gm/RecentLabelLoader;->mAccount:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/google/android/gm/RecentLabelLoader;->mDefaultTouchHandler:Lcom/google/android/gm/UiHandler;

    .line 22
    return-void
.end method


# virtual methods
.method public loadInBackground()Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;
    .locals 3

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/google/android/gm/RecentLabelLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gm/RecentLabelsCache;->getInstance(Landroid/content/Context;)Lcom/google/android/gm/RecentLabelsCache;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/RecentLabelLoader;->mAccount:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gm/RecentLabelLoader;->mDefaultTouchHandler:Lcom/google/android/gm/UiHandler;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/RecentLabelsCache;->getRecentLabelNames(Ljava/lang/String;Lcom/google/android/gm/UiHandler;)Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/android/gm/RecentLabelLoader;->loadInBackground()Lcom/google/android/gm/RecentLabelsCache$RecentLabelList;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 0

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/google/android/gm/RecentLabelLoader;->stopLoading()V

    .line 33
    return-void
.end method

.method protected onStartLoading()V
    .locals 0

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/google/android/gm/RecentLabelLoader;->forceLoad()V

    .line 38
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/google/android/gm/RecentLabelLoader;->cancelLoad()Z

    .line 43
    return-void
.end method
