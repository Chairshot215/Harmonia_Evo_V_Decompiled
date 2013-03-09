.class Lcom/android/browser/view/BookmarkExpandableView$3;
.super Ljava/lang/Object;
.source "BookmarkExpandableView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/view/BookmarkExpandableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/view/BookmarkExpandableView;


# direct methods
.method constructor <init>(Lcom/android/browser/view/BookmarkExpandableView;)V
    .locals 0
    .parameter

    .prologue
    .line 283
    iput-object p1, p0, Lcom/android/browser/view/BookmarkExpandableView$3;->this$0:Lcom/android/browser/view/BookmarkExpandableView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 287
    const/high16 v1, 0x7f0d

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 288
    .local v0, groupPosition:I
    iget-object v1, p0, Lcom/android/browser/view/BookmarkExpandableView$3;->this$0:Lcom/android/browser/view/BookmarkExpandableView;

    invoke-virtual {v1, v0}, Lcom/android/browser/view/BookmarkExpandableView;->isGroupExpanded(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 289
    iget-object v1, p0, Lcom/android/browser/view/BookmarkExpandableView$3;->this$0:Lcom/android/browser/view/BookmarkExpandableView;

    invoke-virtual {v1, v0}, Lcom/android/browser/view/BookmarkExpandableView;->collapseGroup(I)Z

    .line 293
    :goto_0
    return-void

    .line 291
    :cond_0
    iget-object v1, p0, Lcom/android/browser/view/BookmarkExpandableView$3;->this$0:Lcom/android/browser/view/BookmarkExpandableView;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/browser/view/BookmarkExpandableView;->expandGroup(IZ)Z

    goto :goto_0
.end method
