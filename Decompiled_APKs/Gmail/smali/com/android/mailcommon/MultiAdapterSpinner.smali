.class public Lcom/android/mailcommon/MultiAdapterSpinner;
.super Landroid/widget/FrameLayout;
.source "MultiAdapterSpinner.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mailcommon/MultiAdapterSpinner$MergedSpinnerAdapter;,
        Lcom/android/mailcommon/MultiAdapterSpinner$FancySpinnerAdapter;
    }
.end annotation


# instance fields
.field protected mAdapter:Lcom/android/mailcommon/MergedAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/mailcommon/MergedAdapter",
            "<",
            "Lcom/android/mailcommon/MultiAdapterSpinner$FancySpinnerAdapter;",
            ">;"
        }
    .end annotation
.end field

.field protected mPopup:Landroid/widget/ListPopupWindow;

.field private mSelectedPosition:I

.field private mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/mailcommon/MultiAdapterSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mailcommon/MultiAdapterSpinner;->mSelectedPosition:I

    .line 62
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/mailcommon/MultiAdapterSpinner;->mTempRect:Landroid/graphics/Rect;

    .line 100
    new-instance v0, Lcom/android/mailcommon/MultiAdapterSpinner$MergedSpinnerAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/mailcommon/MultiAdapterSpinner$MergedSpinnerAdapter;-><init>(Lcom/android/mailcommon/MultiAdapterSpinner$1;)V

    iput-object v0, p0, Lcom/android/mailcommon/MultiAdapterSpinner;->mAdapter:Lcom/android/mailcommon/MergedAdapter;

    .line 101
    new-instance v0, Landroid/widget/ListPopupWindow;

    invoke-direct {v0, p1, p2}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/mailcommon/MultiAdapterSpinner;->mPopup:Landroid/widget/ListPopupWindow;

    .line 102
    iget-object v0, p0, Lcom/android/mailcommon/MultiAdapterSpinner;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 103
    iget-object v0, p0, Lcom/android/mailcommon/MultiAdapterSpinner;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/android/mailcommon/MultiAdapterSpinner;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 105
    iget-object v0, p0, Lcom/android/mailcommon/MultiAdapterSpinner;->mPopup:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/android/mailcommon/MultiAdapterSpinner;->mAdapter:Lcom/android/mailcommon/MergedAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 106
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 142
    iget-object v5, p0, Lcom/android/mailcommon/MultiAdapterSpinner;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v5}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v5

    if-nez v5, :cond_2

    .line 144
    const/4 v3, 0x0

    .local v3, i:I
    iget-object v5, p0, Lcom/android/mailcommon/MultiAdapterSpinner;->mAdapter:Lcom/android/mailcommon/MergedAdapter;

    invoke-virtual {v5}, Lcom/android/mailcommon/MergedAdapter;->getSubAdapterCount()I

    move-result v2

    .local v2, count:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 145
    iget-object v5, p0, Lcom/android/mailcommon/MultiAdapterSpinner;->mAdapter:Lcom/android/mailcommon/MergedAdapter;

    invoke-virtual {v5, v3}, Lcom/android/mailcommon/MergedAdapter;->getSubAdapter(I)Lcom/android/mailcommon/MergedAdapter$ListSpinnerAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/mailcommon/MultiAdapterSpinner$FancySpinnerAdapter;

    invoke-interface {v5}, Lcom/android/mailcommon/MultiAdapterSpinner$FancySpinnerAdapter;->onShowPopup()V

    .line 144
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/android/mailcommon/MultiAdapterSpinner;->getPaddingLeft()I

    move-result v4

    .line 149
    .local v4, spinnerPaddingLeft:I
    iget-object v5, p0, Lcom/android/mailcommon/MultiAdapterSpinner;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v5}, Landroid/widget/ListPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 150
    .local v0, background:Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .line 151
    .local v1, bgOffset:I
    if-eqz v0, :cond_1

    .line 152
    iget-object v5, p0, Lcom/android/mailcommon/MultiAdapterSpinner;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 153
    iget-object v5, p0, Lcom/android/mailcommon/MultiAdapterSpinner;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    neg-int v1, v5

    .line 155
    :cond_1
    iget-object v5, p0, Lcom/android/mailcommon/MultiAdapterSpinner;->mPopup:Landroid/widget/ListPopupWindow;

    add-int v6, v1, v4

    invoke-virtual {v5, v6}, Landroid/widget/ListPopupWindow;->setHorizontalOffset(I)V

    .line 156
    iget-object v5, p0, Lcom/android/mailcommon/MultiAdapterSpinner;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v5}, Landroid/widget/ListPopupWindow;->show()V

    .line 157
    iget-object v5, p0, Lcom/android/mailcommon/MultiAdapterSpinner;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v5}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 158
    iget-object v5, p0, Lcom/android/mailcommon/MultiAdapterSpinner;->mPopup:Landroid/widget/ListPopupWindow;

    iget v6, p0, Lcom/android/mailcommon/MultiAdapterSpinner;->mSelectedPosition:I

    invoke-virtual {v5, v6}, Landroid/widget/ListPopupWindow;->setSelection(I)V

    .line 160
    .end local v0           #background:Landroid/graphics/drawable/Drawable;
    .end local v1           #bgOffset:I
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v4           #spinnerPaddingLeft:I
    :cond_2
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget v1, p0, Lcom/android/mailcommon/MultiAdapterSpinner;->mSelectedPosition:I

    if-eq p3, v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/android/mailcommon/MultiAdapterSpinner;->mAdapter:Lcom/android/mailcommon/MergedAdapter;

    invoke-virtual {v1, p3}, Lcom/android/mailcommon/MergedAdapter;->getAdapterOffsetForItem(I)Lcom/android/mailcommon/MergedAdapter$LocalAdapterPosition;

    move-result-object v0

    .line 169
    .local v0, result:Lcom/android/mailcommon/MergedAdapter$LocalAdapterPosition;,"Lcom/android/mailcommon/MergedAdapter$LocalAdapterPosition<Lcom/android/mailcommon/MultiAdapterSpinner$FancySpinnerAdapter;>;"
    iget-object v1, v0, Lcom/android/mailcommon/MergedAdapter$LocalAdapterPosition;->mAdapter:Lcom/android/mailcommon/MergedAdapter$ListSpinnerAdapter;

    check-cast v1, Lcom/android/mailcommon/MultiAdapterSpinner$FancySpinnerAdapter;

    iget v2, v0, Lcom/android/mailcommon/MergedAdapter$LocalAdapterPosition;->mLocalPosition:I

    invoke-interface {v1, v2}, Lcom/android/mailcommon/MultiAdapterSpinner$FancySpinnerAdapter;->canSelect(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    iput p3, p0, Lcom/android/mailcommon/MultiAdapterSpinner;->mSelectedPosition:I

    .line 175
    :goto_0
    new-instance v1, Lcom/android/mailcommon/MultiAdapterSpinner$1;

    invoke-direct {v1, p0, v0}, Lcom/android/mailcommon/MultiAdapterSpinner$1;-><init>(Lcom/android/mailcommon/MultiAdapterSpinner;Lcom/android/mailcommon/MergedAdapter$LocalAdapterPosition;)V

    invoke-virtual {p0, v1}, Lcom/android/mailcommon/MultiAdapterSpinner;->post(Ljava/lang/Runnable;)Z

    .line 183
    .end local v0           #result:Lcom/android/mailcommon/MergedAdapter$LocalAdapterPosition;,"Lcom/android/mailcommon/MergedAdapter$LocalAdapterPosition<Lcom/android/mailcommon/MultiAdapterSpinner$FancySpinnerAdapter;>;"
    :cond_0
    iget-object v1, p0, Lcom/android/mailcommon/MultiAdapterSpinner;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 184
    return-void

    .line 172
    .restart local v0       #result:Lcom/android/mailcommon/MergedAdapter$LocalAdapterPosition;,"Lcom/android/mailcommon/MergedAdapter$LocalAdapterPosition<Lcom/android/mailcommon/MultiAdapterSpinner$FancySpinnerAdapter;>;"
    :cond_1
    iget-object v1, p0, Lcom/android/mailcommon/MultiAdapterSpinner;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->clearListSelection()V

    goto :goto_0
.end method

.method public varargs setAdapters([Lcom/android/mailcommon/MultiAdapterSpinner$FancySpinnerAdapter;)V
    .locals 1
    .parameter "adapters"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/mailcommon/MultiAdapterSpinner;->mAdapter:Lcom/android/mailcommon/MergedAdapter;

    invoke-virtual {v0, p1}, Lcom/android/mailcommon/MergedAdapter;->setAdapters([Lcom/android/mailcommon/MergedAdapter$ListSpinnerAdapter;)V

    .line 110
    return-void
.end method
