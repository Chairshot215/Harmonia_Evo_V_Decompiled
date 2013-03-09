.class Lcom/android/browser/view/BookmarkExpandableView$2;
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
    .line 262
    iput-object p1, p0, Lcom/android/browser/view/BookmarkExpandableView$2;->this$0:Lcom/android/browser/view/BookmarkExpandableView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 266
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    const/high16 v0, 0x7f0d

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 270
    .local v3, groupPosition:I
    const v0, 0x7f0d0001

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 271
    .local v4, childPosition:I
    iget-object v0, p0, Lcom/android/browser/view/BookmarkExpandableView$2;->this$0:Lcom/android/browser/view/BookmarkExpandableView;

    #getter for: Lcom/android/browser/view/BookmarkExpandableView;->mAdapter:Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;
    invoke-static {v0}, Lcom/android/browser/view/BookmarkExpandableView;->access$200(Lcom/android/browser/view/BookmarkExpandableView;)Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->getGroupCount()I

    move-result v0

    if-le v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/browser/view/BookmarkExpandableView$2;->this$0:Lcom/android/browser/view/BookmarkExpandableView;

    #getter for: Lcom/android/browser/view/BookmarkExpandableView;->mAdapter:Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;
    invoke-static {v0}, Lcom/android/browser/view/BookmarkExpandableView;->access$200(Lcom/android/browser/view/BookmarkExpandableView;)Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v0}, Lcom/android/browser/BrowserBookmarksAdapter;->getCount()I

    move-result v0

    if-le v0, v4, :cond_0

    .line 275
    const v0, 0x7f0d0002

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 276
    .local v5, id:J
    iget-object v0, p0, Lcom/android/browser/view/BookmarkExpandableView$2;->this$0:Lcom/android/browser/view/BookmarkExpandableView;

    #getter for: Lcom/android/browser/view/BookmarkExpandableView;->mOnChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;
    invoke-static {v0}, Lcom/android/browser/view/BookmarkExpandableView;->access$300(Lcom/android/browser/view/BookmarkExpandableView;)Landroid/widget/ExpandableListView$OnChildClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/android/browser/view/BookmarkExpandableView$2;->this$0:Lcom/android/browser/view/BookmarkExpandableView;

    #getter for: Lcom/android/browser/view/BookmarkExpandableView;->mOnChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;
    invoke-static {v0}, Lcom/android/browser/view/BookmarkExpandableView;->access$300(Lcom/android/browser/view/BookmarkExpandableView;)Landroid/widget/ExpandableListView$OnChildClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/view/BookmarkExpandableView$2;->this$0:Lcom/android/browser/view/BookmarkExpandableView;

    move-object v2, p1

    invoke-interface/range {v0 .. v6}, Landroid/widget/ExpandableListView$OnChildClickListener;->onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z

    goto :goto_0
.end method
