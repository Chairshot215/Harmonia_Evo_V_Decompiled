.class public Lcom/android/browser/addbookmark/FolderSpinner;
.super Landroid/widget/Spinner;
.source "FolderSpinner.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/addbookmark/FolderSpinner$OnSetSelectionListener;
    }
.end annotation


# instance fields
.field private mFireSetSelection:Z

.field private mOnSetSelectionListener:Lcom/android/browser/addbookmark/FolderSpinner$OnSetSelectionListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    invoke-super {p0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 45
    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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
    .line 83
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-boolean v0, p0, Lcom/android/browser/addbookmark/FolderSpinner;->mFireSetSelection:Z

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/browser/addbookmark/FolderSpinner;->mOnSetSelectionListener:Lcom/android/browser/addbookmark/FolderSpinner$OnSetSelectionListener;

    invoke-interface {v0, p4, p5}, Lcom/android/browser/addbookmark/FolderSpinner$OnSetSelectionListener;->onSetSelection(J)V

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/addbookmark/FolderSpinner;->mFireSetSelection:Z

    .line 87
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 51
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot set an OnItemSelectedListener on a FolderSpinner"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnSetSelectionListener(Lcom/android/browser/addbookmark/FolderSpinner$OnSetSelectionListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/browser/addbookmark/FolderSpinner;->mOnSetSelectionListener:Lcom/android/browser/addbookmark/FolderSpinner$OnSetSelectionListener;

    .line 56
    return-void
.end method

.method public setSelection(I)V
    .locals 7
    .parameter "position"

    .prologue
    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/addbookmark/FolderSpinner;->mFireSetSelection:Z

    .line 69
    invoke-virtual {p0}, Lcom/android/browser/addbookmark/FolderSpinner;->getSelectedItemPosition()I

    move-result v6

    .line 70
    .local v6, oldPosition:I
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 71
    iget-object v0, p0, Lcom/android/browser/addbookmark/FolderSpinner;->mOnSetSelectionListener:Lcom/android/browser/addbookmark/FolderSpinner$OnSetSelectionListener;

    if-eqz v0, :cond_0

    .line 72
    if-ne v6, p1, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/android/browser/addbookmark/FolderSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v4

    .line 76
    .local v4, id:J
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/browser/addbookmark/FolderSpinner;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 79
    .end local v4           #id:J
    :cond_0
    return-void
.end method

.method public setSelectionIgnoringSelectionChange(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 64
    return-void
.end method
