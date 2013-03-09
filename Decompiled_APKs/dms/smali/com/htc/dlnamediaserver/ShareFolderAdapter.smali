.class public Lcom/htc/dlnamediaserver/ShareFolderAdapter;
.super Landroid/widget/BaseAdapter;
.source "ShareFolderAdapter.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/dlnamediaserver/ShareFolderItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mSelectedItem:I

.field protected mTotalItem:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "aContext"

    .prologue
    const/4 v1, -0x1

    .line 36
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/dlnamediaserver/ShareFolderAdapter;->mItem:Ljava/util/ArrayList;

    .line 30
    iput v1, p0, Lcom/htc/dlnamediaserver/ShareFolderAdapter;->mTotalItem:I

    .line 31
    iput v1, p0, Lcom/htc/dlnamediaserver/ShareFolderAdapter;->mSelectedItem:I

    .line 37
    iput-object p1, p0, Lcom/htc/dlnamediaserver/ShareFolderAdapter;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method


# virtual methods
.method public add(Lcom/htc/dlnamediaserver/ShareFolderItem;)V
    .locals 1
    .parameter "anItem"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/dlnamediaserver/ShareFolderAdapter;->mItem:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/dlnamediaserver/ShareFolderAdapter;->mTotalItem:I

    .line 74
    iget-object v0, p0, Lcom/htc/dlnamediaserver/ShareFolderAdapter;->mItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 75
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 88
    iget v0, p0, Lcom/htc/dlnamediaserver/ShareFolderAdapter;->mTotalItem:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 89
    iget v0, p0, Lcom/htc/dlnamediaserver/ShareFolderAdapter;->mTotalItem:I

    iget-object v1, p0, Lcom/htc/dlnamediaserver/ShareFolderAdapter;->mItem:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 90
    iget v0, p0, Lcom/htc/dlnamediaserver/ShareFolderAdapter;->mTotalItem:I

    .line 92
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/dlnamediaserver/ShareFolderAdapter;->mItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Lcom/htc/dlnamediaserver/ShareFolderItem;
    .locals 1
    .parameter "aPosition"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/dlnamediaserver/ShareFolderAdapter;->mItem:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/htc/dlnamediaserver/ShareFolderItem;

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/htc/dlnamediaserver/ShareFolderAdapter;->getItem(I)Lcom/htc/dlnamediaserver/ShareFolderItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "aPosition"

    .prologue
    .line 106
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "aPosition"
    .parameter "aConvertView"
    .parameter "aParent"

    .prologue
    const v7, 0x7f070013

    .line 119
    move-object v4, p2

    .line 121
    .local v4, view:Landroid/view/View;
    if-nez p2, :cond_0

    .line 123
    iget-object v5, p0, Lcom/htc/dlnamediaserver/ShareFolderAdapter;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 124
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030003

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 127
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    new-instance v6, Lcom/htc/dlnamediaserver/ShareFolderAdapter$1;

    invoke-direct {v6, p0}, Lcom/htc/dlnamediaserver/ShareFolderAdapter$1;-><init>(Lcom/htc/dlnamediaserver/ShareFolderAdapter;)V

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/dlnamediaserver/ShareFolderAdapter;->getItem(I)Lcom/htc/dlnamediaserver/ShareFolderItem;

    move-result-object v3

    .line 149
    .local v3, theItem:Lcom/htc/dlnamediaserver/ShareFolderItem;
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 150
    .local v0, c:Landroid/widget/CheckBox;
    iget-boolean v5, v3, Lcom/htc/dlnamediaserver/ShareFolderItem;->mChecked:Z

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 152
    const v5, 0x7f070012

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 153
    .local v2, t:Landroid/widget/TextView;
    iget-object v5, v3, Lcom/htc/dlnamediaserver/ShareFolderItem;->mDisplayedName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    return-object v4
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "aPosition"

    .prologue
    .line 113
    const/4 v0, 0x1

    return v0
.end method

.method public remove(I)V
    .locals 2
    .parameter "anIndex"

    .prologue
    .line 61
    iget v0, p0, Lcom/htc/dlnamediaserver/ShareFolderAdapter;->mSelectedItem:I

    if-ge p1, v0, :cond_1

    .line 62
    iget v0, p0, Lcom/htc/dlnamediaserver/ShareFolderAdapter;->mSelectedItem:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/dlnamediaserver/ShareFolderAdapter;->mSelectedItem:I

    .line 66
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/dlnamediaserver/ShareFolderAdapter;->mItem:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 67
    return-void

    .line 63
    :cond_1
    iget v0, p0, Lcom/htc/dlnamediaserver/ShareFolderAdapter;->mSelectedItem:I

    if-ne p1, v0, :cond_0

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/dlnamediaserver/ShareFolderAdapter;->mSelectedItem:I

    goto :goto_0
.end method

.method public set(Lcom/htc/dlnamediaserver/ShareFolderItem;I)V
    .locals 4
    .parameter "anItem"
    .parameter "anIndex"

    .prologue
    .line 51
    :goto_0
    iget-object v0, p0, Lcom/htc/dlnamediaserver/ShareFolderAdapter;->mItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    .line 52
    new-instance v0, Lcom/htc/dlnamediaserver/ShareFolderItem;

    const-string v1, "..."

    const-string v2, "..."

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/dlnamediaserver/ShareFolderItem;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/htc/dlnamediaserver/ShareFolderAdapter;->add(Lcom/htc/dlnamediaserver/ShareFolderItem;)V

    goto :goto_0

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/htc/dlnamediaserver/ShareFolderAdapter;->mItem:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 55
    return-void
.end method

.method public size(I)V
    .locals 0
    .parameter "aTotalItem"

    .prologue
    .line 81
    iput p1, p0, Lcom/htc/dlnamediaserver/ShareFolderAdapter;->mTotalItem:I

    .line 82
    return-void
.end method
