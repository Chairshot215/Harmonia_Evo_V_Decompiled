.class Lcom/google/android/finsky/layout/LayoutSwitcher$1;
.super Ljava/lang/Object;
.source "LayoutSwitcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/layout/LayoutSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/LayoutSwitcher;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/LayoutSwitcher;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/android/finsky/layout/LayoutSwitcher$1;->this$0:Lcom/google/android/finsky/layout/LayoutSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/finsky/layout/LayoutSwitcher$1;->this$0:Lcom/google/android/finsky/layout/LayoutSwitcher;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToLoadingMode()V

    .line 65
    iget-object v0, p0, Lcom/google/android/finsky/layout/LayoutSwitcher$1;->this$0:Lcom/google/android/finsky/layout/LayoutSwitcher;

    #getter for: Lcom/google/android/finsky/layout/LayoutSwitcher;->mRetryListener:Lcom/google/android/finsky/layout/LayoutSwitcher$RetryButtonListener;
    invoke-static {v0}, Lcom/google/android/finsky/layout/LayoutSwitcher;->access$000(Lcom/google/android/finsky/layout/LayoutSwitcher;)Lcom/google/android/finsky/layout/LayoutSwitcher$RetryButtonListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/finsky/layout/LayoutSwitcher$RetryButtonListener;->onRetry()V

    .line 66
    return-void
.end method
