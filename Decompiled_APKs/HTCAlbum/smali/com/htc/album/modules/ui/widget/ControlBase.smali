.class public Lcom/htc/album/modules/ui/widget/ControlBase;
.super Ljava/lang/Object;
.source "ControlBase.java"


# instance fields
.field protected mClickListener:Landroid/view/View$OnClickListener;

.field protected mContext:Landroid/content/Context;

.field protected mID:I

.field protected mLayoutId:I

.field protected mRoot:Landroid/view/View;


# direct methods
.method public constructor <init>(ILandroid/content/Context;I)V
    .locals 3
    .parameter "nID"
    .parameter "context"
    .parameter "layout"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v1, p0, Lcom/htc/album/modules/ui/widget/ControlBase;->mID:I

    .line 22
    iput-object v2, p0, Lcom/htc/album/modules/ui/widget/ControlBase;->mRoot:Landroid/view/View;

    .line 26
    iput v1, p0, Lcom/htc/album/modules/ui/widget/ControlBase;->mLayoutId:I

    .line 30
    iput-object v2, p0, Lcom/htc/album/modules/ui/widget/ControlBase;->mContext:Landroid/content/Context;

    .line 34
    iput-object v2, p0, Lcom/htc/album/modules/ui/widget/ControlBase;->mClickListener:Landroid/view/View$OnClickListener;

    .line 44
    iput-object p2, p0, Lcom/htc/album/modules/ui/widget/ControlBase;->mContext:Landroid/content/Context;

    .line 45
    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 46
    .local v0, inflater:Landroid/view/LayoutInflater;
    iput p1, p0, Lcom/htc/album/modules/ui/widget/ControlBase;->mID:I

    .line 47
    invoke-virtual {v0, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlBase;->mRoot:Landroid/view/View;

    .line 48
    iput p3, p0, Lcom/htc/album/modules/ui/widget/ControlBase;->mLayoutId:I

    .line 49
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 2

    .prologue
    .line 145
    const/4 v0, 0x0

    .line 147
    .local v0, nValue:I
    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlBase;->mRoot:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlBase;->mRoot:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 150
    :cond_0
    return v0
.end method

.method public getID()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/htc/album/modules/ui/widget/ControlBase;->mID:I

    return v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlBase;->mRoot:Landroid/view/View;

    return-object v0
.end method

.method public getView(I)Landroid/view/View;
    .locals 3
    .parameter "nID"

    .prologue
    .line 93
    const/4 v0, 0x0

    .line 95
    .local v0, view:Landroid/view/View;
    iget-object v2, p0, Lcom/htc/album/modules/ui/widget/ControlBase;->mRoot:Landroid/view/View;

    if-nez v2, :cond_0

    move-object v1, v0

    .line 101
    .end local v0           #view:Landroid/view/View;
    .local v1, view:Landroid/view/View;
    :goto_0
    return-object v1

    .line 98
    .end local v1           #view:Landroid/view/View;
    .restart local v0       #view:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/htc/album/modules/ui/widget/ControlBase;->mRoot:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v1, v0

    .line 99
    .end local v0           #view:Landroid/view/View;
    .restart local v1       #view:Landroid/view/View;
    goto :goto_0

    .end local v1           #view:Landroid/view/View;
    .restart local v0       #view:Landroid/view/View;
    :cond_1
    move-object v1, v0

    .line 101
    .end local v0           #view:Landroid/view/View;
    .restart local v1       #view:Landroid/view/View;
    goto :goto_0
.end method

.method public getVisibility()I
    .locals 2

    .prologue
    .line 109
    const/4 v0, 0x4

    .line 111
    .local v0, nValue:I
    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlBase;->mRoot:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlBase;->mRoot:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 114
    :cond_0
    return v0
.end method

.method public setText(ILjava/lang/String;)V
    .locals 2
    .parameter "nID"
    .parameter "szText"

    .prologue
    .line 73
    const/4 v0, 0x0

    .line 75
    .local v0, view:Landroid/view/View;
    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlBase;->mRoot:Landroid/view/View;

    if-nez v1, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlBase;->mRoot:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 82
    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlBase;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlBase;->mRoot:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 124
    :cond_0
    return-void
.end method

.method public toggleVisibility()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlBase;->mRoot:Landroid/view/View;

    if-nez v0, :cond_0

    .line 138
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlBase;->mRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlBase;->mRoot:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlBase;->mRoot:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
