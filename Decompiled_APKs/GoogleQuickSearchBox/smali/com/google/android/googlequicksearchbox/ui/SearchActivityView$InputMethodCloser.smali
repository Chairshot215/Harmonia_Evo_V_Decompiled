.class public Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$InputMethodCloser;
.super Ljava/lang/Object;
.source "SearchActivityView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "InputMethodCloser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;


# direct methods
.method protected constructor <init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;)V
    .locals 0
    .parameter

    .prologue
    .line 829
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$InputMethodCloser;->this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 834
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 841
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 842
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$InputMethodCloser;->this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    new-instance v1, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$InputMethodCloser$1;

    invoke-direct {v1, p0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$InputMethodCloser$1;-><init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$InputMethodCloser;)V

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->post(Ljava/lang/Runnable;)Z

    .line 848
    :cond_0
    return-void
.end method
