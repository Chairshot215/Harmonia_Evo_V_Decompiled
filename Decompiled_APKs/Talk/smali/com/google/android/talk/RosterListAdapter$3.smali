.class Lcom/google/android/talk/RosterListAdapter$3;
.super Lcom/google/android/talk/RosterListAdapter$Bind;
.source "RosterListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/RosterListAdapter;->makeSpacerMergeItem(III)Lcom/google/android/talk/RosterListAdapter$MergeItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/RosterListAdapter;

.field final synthetic val$height:I


# direct methods
.method constructor <init>(Lcom/google/android/talk/RosterListAdapter;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 414
    iput-object p1, p0, Lcom/google/android/talk/RosterListAdapter$3;->this$0:Lcom/google/android/talk/RosterListAdapter;

    iput p2, p0, Lcom/google/android/talk/RosterListAdapter$3;->val$height:I

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/talk/RosterListAdapter$Bind;-><init>(Lcom/google/android/talk/RosterListAdapter;Lcom/google/android/talk/RosterListAdapter$1;)V

    return-void
.end method


# virtual methods
.method public bind(Lcom/google/android/talk/RosterListAdapter$MergeItem;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 418
    return-void
.end method

.method public onInflate(Lcom/google/android/talk/RosterListAdapter$MergeItem;)V
    .locals 3
    .parameter "item"

    .prologue
    .line 422
    #getter for: Lcom/google/android/talk/RosterListAdapter$MergeItem;->mView:Landroid/view/View;
    invoke-static {p1}, Lcom/google/android/talk/RosterListAdapter$MergeItem;->access$1500(Lcom/google/android/talk/RosterListAdapter$MergeItem;)Landroid/view/View;

    move-result-object v0

    .line 423
    .local v0, v:Landroid/view/View;
    instance-of v1, v0, Lcom/google/android/talk/DividerDrawingListItem;

    if-eqz v1, :cond_0

    .line 424
    check-cast v0, Lcom/google/android/talk/DividerDrawingListItem;

    .end local v0           #v:Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/talk/DividerDrawingListItem;->setShoverEnabled(Z)V

    .line 426
    :cond_0
    iget v1, p0, Lcom/google/android/talk/RosterListAdapter$3;->val$height:I

    if-ltz v1, :cond_1

    .line 427
    #getter for: Lcom/google/android/talk/RosterListAdapter$MergeItem;->mView:Landroid/view/View;
    invoke-static {p1}, Lcom/google/android/talk/RosterListAdapter$MergeItem;->access$1500(Lcom/google/android/talk/RosterListAdapter$MergeItem;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/google/android/talk/RosterListAdapter$3;->val$height:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 429
    :cond_1
    return-void
.end method
