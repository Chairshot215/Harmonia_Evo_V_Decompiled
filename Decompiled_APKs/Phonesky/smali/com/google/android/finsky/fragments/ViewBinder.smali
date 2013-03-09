.class public abstract Lcom/google/android/finsky/fragments/ViewBinder;
.super Ljava/lang/Object;
.source "ViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field protected mContext:Landroid/content/Context;

.field protected mData:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected mNavManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    .local p0, this:Lcom/google/android/finsky/fragments/ViewBinder;,"Lcom/google/android/finsky/fragments/ViewBinder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;)V
    .locals 1
    .parameter "context"
    .parameter "nm"
    .parameter "bitmapLoader"

    .prologue
    .line 28
    .local p0, this:Lcom/google/android/finsky/fragments/ViewBinder;,"Lcom/google/android/finsky/fragments/ViewBinder<TT;>;"
    iget-object v0, p0, Lcom/google/android/finsky/fragments/ViewBinder;->mContext:Landroid/content/Context;

    if-ne v0, p1, :cond_0

    .line 35
    :goto_0
    return-void

    .line 31
    :cond_0
    iput-object p1, p0, Lcom/google/android/finsky/fragments/ViewBinder;->mContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/google/android/finsky/fragments/ViewBinder;->mNavManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    .line 33
    iput-object p3, p0, Lcom/google/android/finsky/fragments/ViewBinder;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/fragments/ViewBinder;->mData:Ljava/lang/Object;

    goto :goto_0
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, this:Lcom/google/android/finsky/fragments/ViewBinder;,"Lcom/google/android/finsky/fragments/ViewBinder<TT;>;"
    .local p1, data:Ljava/lang/Object;,"TT;"
    iput-object p1, p0, Lcom/google/android/finsky/fragments/ViewBinder;->mData:Ljava/lang/Object;

    .line 43
    return-void
.end method
