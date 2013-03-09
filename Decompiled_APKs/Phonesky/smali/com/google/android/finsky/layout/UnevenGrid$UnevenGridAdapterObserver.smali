.class Lcom/google/android/finsky/layout/UnevenGrid$UnevenGridAdapterObserver;
.super Landroid/database/DataSetObserver;
.source "UnevenGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/layout/UnevenGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnevenGridAdapterObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/UnevenGrid;


# direct methods
.method private constructor <init>(Lcom/google/android/finsky/layout/UnevenGrid;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/android/finsky/layout/UnevenGrid$UnevenGridAdapterObserver;->this$0:Lcom/google/android/finsky/layout/UnevenGrid;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/layout/UnevenGrid;Lcom/google/android/finsky/layout/UnevenGrid$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/UnevenGrid$UnevenGridAdapterObserver;-><init>(Lcom/google/android/finsky/layout/UnevenGrid;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/finsky/layout/UnevenGrid$UnevenGridAdapterObserver;->this$0:Lcom/google/android/finsky/layout/UnevenGrid;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/finsky/layout/UnevenGrid;->mRebindNecessary:Z
    invoke-static {v0, v1}, Lcom/google/android/finsky/layout/UnevenGrid;->access$002(Lcom/google/android/finsky/layout/UnevenGrid;Z)Z

    .line 53
    iget-object v0, p0, Lcom/google/android/finsky/layout/UnevenGrid$UnevenGridAdapterObserver;->this$0:Lcom/google/android/finsky/layout/UnevenGrid;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/UnevenGrid;->requestLayout()V

    .line 54
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/UnevenGrid$UnevenGridAdapterObserver;->onChanged()V

    .line 59
    return-void
.end method
