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

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/htc/app/FilePickerListView;->initListView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/htc/app/FilePickerListView;->initListView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/htc/app/FilePickerListView;->initListView()V

    return-void
.end method

.method private initListView()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/app/FilePickerListView;->setVerticalFadingEdgeEnabled(Z)V

    return-void
.end method


# virtual methods
.method close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/app/FilePickerListView;->mFilePickerListAdapter:Lcom/htc/app/FilePickerListAdapter;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    iget-object v0, p0, Lcom/htc/app/FilePickerListView;->mLayoutChangeListener:Lcom/htc/app/FilePickerListView$LayoutChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/FilePickerListView;->mLayoutChangeListener:Lcom/htc/app/FilePickerListView$LayoutChangeListener;

    invoke-interface {v0}, Lcom/htc/app/FilePickerListView$LayoutChangeListener;->onLayout()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/app/FilePickerListView;->unPressedUnSelectChildren(Landroid/view/View;)V

    invoke-super/range {p0 .. p5}, Lcom/htc/widget/HtcListView;->onLayout(ZIIII)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4

    invoke-virtual {p0}, Lcom/htc/app/FilePickerListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v2, v0, Landroid/widget/Filterable;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    :cond_0
    return-void

    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "You cannot call onTextChanged with a non filterable adapter"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/htc/app/FilePickerListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Lcom/htc/app/FilePickerListAdapter;

    iput-object v0, p0, Lcom/htc/app/FilePickerListView;->mFilePickerListAdapter:Lcom/htc/app/FilePickerListAdapter;

    invoke-super {p0, p1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method protected setLayoutChangedListener(Lcom/htc/app/FilePickerListView$LayoutChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/app/FilePickerListView;->mLayoutChangeListener:Lcom/htc/app/FilePickerListView$LayoutChangeListener;

    return-void
.end method

.method protected shouldDrawSeperatorDivider(I)Z
    .locals 2

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

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListView;->shouldDrawSeperatorDivider(I)Z

    move-result v0

    goto :goto_0
.end method

.method protected unPressedUnSelectChildren(Landroid/view/View;)V
    .locals 4

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/htc/app/FilePickerListView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/htc/app/FilePickerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eq v0, p1, :cond_0

    invoke-virtual {p0, v1}, Lcom/htc/app/FilePickerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setPressed(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
