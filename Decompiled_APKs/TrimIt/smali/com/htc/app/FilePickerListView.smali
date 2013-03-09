.class public Lcom/htc/app/FilePickerListView;
.super Lcom/htc/widget/HtcListView;
.source "FilePickerListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/app/FilePickerListView$LayoutChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FilePickerListView"

.field private static final localLOGV:Z


# instance fields
.field private mFilePickerListAdapter:Lcom/htc/app/FilePickerListAdapter;

.field private mLayoutChangeListener:Lcom/htc/app/FilePickerListView$LayoutChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListView;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-direct {p0}, Lcom/htc/app/FilePickerListView;->initListView()V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-direct {p0}, Lcom/htc/app/FilePickerListView;->initListView()V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    invoke-direct {p0}, Lcom/htc/app/FilePickerListView;->initListView()V

    .line 34
    return-void
.end method

.method private initListView()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/app/FilePickerListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 38
    return-void
.end method


# virtual methods
.method close()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/app/FilePickerListView;->mFilePickerListAdapter:Lcom/htc/app/FilePickerListAdapter;

    .line 104
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/app/FilePickerListView;->mLayoutChangeListener:Lcom/htc/app/FilePickerListView$LayoutChangeListener;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/htc/app/FilePickerListView;->mLayoutChangeListener:Lcom/htc/app/FilePickerListView$LayoutChangeListener;

    invoke-interface {v0}, Lcom/htc/app/FilePickerListView$LayoutChangeListener;->onLayout()V

    .line 61
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/app/FilePickerListView;->unPressedUnSelectChildren(Landroid/view/View;)V

    .line 62
    invoke-super/range {p0 .. p5}, Lcom/htc/widget/HtcListView;->onLayout(ZIIII)V

    .line 63
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/htc/app/FilePickerListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 45
    .local v0, adapter:Landroid/widget/Adapter;
    instance-of v2, v0, Landroid/widget/Filterable;

    if-eqz v2, :cond_0

    .line 46
    check-cast v0, Landroid/widget/Filterable;

    .end local v0           #adapter:Landroid/widget/Adapter;
    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    .line 48
    .local v1, f:Landroid/widget/Filter;
    if-eqz v1, :cond_1

    .line 49
    invoke-virtual {v1, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 55
    .end local v1           #f:Landroid/widget/Filter;
    :cond_0
    return-void

    .line 51
    .restart local v1       #f:Landroid/widget/Filter;
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "You cannot call onTextChanged with a non filterable adapter"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 16
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/app/FilePickerListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 68
    move-object v0, p1

    check-cast v0, Lcom/htc/app/FilePickerListAdapter;

    iput-object v0, p0, Lcom/htc/app/FilePickerListView;->mFilePickerListAdapter:Lcom/htc/app/FilePickerListAdapter;

    .line 69
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 70
    return-void
.end method

.method protected setLayoutChangedListener(Lcom/htc/app/FilePickerListView$LayoutChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/htc/app/FilePickerListView;->mLayoutChangeListener:Lcom/htc/app/FilePickerListView$LayoutChangeListener;

    .line 88
    return-void
.end method

.method protected shouldDrawSeperatorDivider(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/htc/app/FilePickerListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/app/FilePickerListView;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/app/FilePickerListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 77
    :cond_0
    const/4 v0, 0x0

    .line 80
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListView;->shouldDrawSeperatorDivider(I)Z

    move-result v0

    goto :goto_0
.end method

.method protected unPressedUnSelectChildren(Landroid/view/View;)V
    .locals 4
    .parameter "sel"

    .prologue
    .line 95
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/app/FilePickerListView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 96
    invoke-virtual {p0, v1}, Lcom/htc/app/FilePickerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 97
    .local v0, child:Landroid/view/View;
    if-eq v0, p1, :cond_0

    .line 98
    invoke-virtual {p0, v1}, Lcom/htc/app/FilePickerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setPressed(Z)V

    .line 95
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method
