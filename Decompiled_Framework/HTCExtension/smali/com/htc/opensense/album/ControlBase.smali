.class public Lcom/htc/opensense/album/ControlBase;
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

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/htc/opensense/album/ControlBase;->mID:I

    iput-object v2, p0, Lcom/htc/opensense/album/ControlBase;->mRoot:Landroid/view/View;

    iput v1, p0, Lcom/htc/opensense/album/ControlBase;->mLayoutId:I

    iput-object v2, p0, Lcom/htc/opensense/album/ControlBase;->mContext:Landroid/content/Context;

    iput-object v2, p0, Lcom/htc/opensense/album/ControlBase;->mClickListener:Landroid/view/View$OnClickListener;

    iput-object p2, p0, Lcom/htc/opensense/album/ControlBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/opensense/album/ControlBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput p1, p0, Lcom/htc/opensense/album/ControlBase;->mID:I

    invoke-virtual {v0, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/opensense/album/ControlBase;->mRoot:Landroid/view/View;

    iput p3, p0, Lcom/htc/opensense/album/ControlBase;->mLayoutId:I

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/opensense/album/ControlBase;->mRoot:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/ControlBase;->mRoot:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    :cond_0
    return v0
.end method

.method public getID()I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/album/ControlBase;->mID:I

    return v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/ControlBase;->mRoot:Landroid/view/View;

    return-object v0
.end method

.method public getView(I)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/htc/opensense/album/ControlBase;->mRoot:Landroid/view/View;

    if-nez v2, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/htc/opensense/album/ControlBase;->mRoot:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method public getVisibility()I
    .locals 2

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/htc/opensense/album/ControlBase;->mRoot:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/ControlBase;->mRoot:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    :cond_0
    return v0
.end method

.method public setText(ILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/opensense/album/ControlBase;->mRoot:Landroid/view/View;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/opensense/album/ControlBase;->mRoot:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/ControlBase;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/ControlBase;->mRoot:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public toggleVisibility()V
    .locals 2

    iget-object v0, p0, Lcom/htc/opensense/album/ControlBase;->mRoot:Landroid/view/View;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/album/ControlBase;->mRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/opensense/album/ControlBase;->mRoot:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/album/ControlBase;->mRoot:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
