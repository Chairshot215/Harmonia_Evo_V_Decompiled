.class public Lcom/htc/opensense/album/ControlButtonCollection;
.super Lcom/htc/opensense/album/ControlBase;
.source "ControlButtonCollection.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense/album/ControlButton;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/opensense/album/ControlButtonCollection;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/album/ControlButtonCollection;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;I[I[I[II)V
    .locals 8

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/opensense/album/ControlBase;-><init>(ILandroid/content/Context;I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/opensense/album/ControlButtonCollection;->mList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    array-length v7, p4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_0

    new-instance v0, Lcom/htc/opensense/album/ControlButton;

    iget-object v1, p0, Lcom/htc/opensense/album/ControlBase;->mRoot:Landroid/view/View;

    aget v2, p4, v6

    aget v3, p5, v6

    aget v4, p6, v6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/htc/opensense/album/ControlButton;-><init>(Landroid/view/View;IIII)V

    iget-object v1, p0, Lcom/htc/opensense/album/ControlButtonCollection;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;I[I[I[I[II)V
    .locals 9

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/opensense/album/ControlBase;-><init>(ILandroid/content/Context;I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/opensense/album/ControlButtonCollection;->mList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    array-length v8, p4

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v8, :cond_0

    new-instance v0, Lcom/htc/opensense/album/ControlButton;

    iget-object v1, p0, Lcom/htc/opensense/album/ControlBase;->mRoot:Landroid/view/View;

    aget v2, p4, v7

    aget v3, p5, v7

    aget v4, p6, v7

    aget v5, p7, v7

    move/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/htc/opensense/album/ControlButton;-><init>(Landroid/view/View;IIIII)V

    iget-object v1, p0, Lcom/htc/opensense/album/ControlButtonCollection;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;I[I[I[Ljava/lang/String;)V
    .locals 7

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/opensense/album/ControlBase;-><init>(ILandroid/content/Context;I)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/htc/opensense/album/ControlButtonCollection;->mList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    array-length v2, p4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    new-instance v0, Lcom/htc/opensense/album/ControlButton;

    iget-object v3, p0, Lcom/htc/opensense/album/ControlBase;->mRoot:Landroid/view/View;

    aget v4, p4, v1

    aget v5, p5, v1

    aget-object v6, p6, v1

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/htc/opensense/album/ControlButton;-><init>(Landroid/view/View;IILjava/lang/String;)V

    iget-object v3, p0, Lcom/htc/opensense/album/ControlButtonCollection;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addImageButton(III)Z
    .locals 7

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/htc/opensense/album/ControlButtonCollection;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/ControlButton;

    invoke-virtual {v0}, Lcom/htc/opensense/album/ControlButton;->getId()I

    move-result v1

    if-ne v1, p1, :cond_0

    :goto_0
    return v5

    :cond_1
    new-instance v0, Lcom/htc/opensense/album/ControlButton;

    iget-object v1, p0, Lcom/htc/opensense/album/ControlBase;->mRoot:Landroid/view/View;

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/htc/opensense/album/ControlButton;-><init>(Landroid/view/View;IIII)V

    iget-object v1, p0, Lcom/htc/opensense/album/ControlButtonCollection;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    goto :goto_0
.end method

.method public addTextButton(IILjava/lang/String;)Z
    .locals 3

    iget-object v2, p0, Lcom/htc/opensense/album/ControlButtonCollection;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/ControlButton;

    invoke-virtual {v0}, Lcom/htc/opensense/album/ControlButton;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    new-instance v0, Lcom/htc/opensense/album/ControlButton;

    iget-object v2, p0, Lcom/htc/opensense/album/ControlBase;->mRoot:Landroid/view/View;

    invoke-direct {v0, v2, p1, p2, p3}, Lcom/htc/opensense/album/ControlButton;-><init>(Landroid/view/View;IILjava/lang/String;)V

    iget-object v2, p0, Lcom/htc/opensense/album/ControlButtonCollection;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/ControlButtonCollection;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense/album/ControlBase;->mLayoutId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/album/ControlBase;->mRoot:Landroid/view/View;

    return-void
.end method

.method public get(I)Lcom/htc/opensense/album/ControlButton;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/ControlButtonCollection;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/album/ControlButtonCollection;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/ControlButton;

    goto :goto_0
.end method

.method public getById(I)Lcom/htc/opensense/album/ControlButton;
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/opensense/album/ControlButtonCollection;->mList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/opensense/album/ControlButtonCollection;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    iget-object v3, p0, Lcom/htc/opensense/album/ControlButtonCollection;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/ControlButton;

    invoke-virtual {v0}, Lcom/htc/opensense/album/ControlButton;->getId()I

    move-result v3

    if-ne v3, p1, :cond_2

    goto :goto_0

    :cond_3
    move-object v0, v2

    goto :goto_0
.end method

.method public refreshLayout()V
    .locals 5

    iget-object v3, p0, Lcom/htc/opensense/album/ControlBase;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v3, p0, Lcom/htc/opensense/album/ControlBase;->mLayoutId:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/opensense/album/ControlBase;->mRoot:Landroid/view/View;

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/htc/opensense/album/ControlButtonCollection;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v2, :cond_1

    iget-object v3, p0, Lcom/htc/opensense/album/ControlButtonCollection;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/ControlButton;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/htc/opensense/album/ControlBase;->mRoot:Landroid/view/View;

    invoke-virtual {v0, v3}, Lcom/htc/opensense/album/ControlButton;->refreshLayout(Landroid/view/View;)V

    iget-object v3, p0, Lcom/htc/opensense/album/ControlBase;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Lcom/htc/opensense/album/ControlButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public remove(Lcom/htc/opensense/album/ControlButton;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/ControlButtonCollection;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setButtonEnabled(IZ)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/ControlButtonCollection;->getById(I)Lcom/htc/opensense/album/ControlButton;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/htc/opensense/album/ControlButton;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/htc/opensense/album/ControlButtonCollection;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setButtonEnabled] button no found, id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setButtonText(II)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/ControlButtonCollection;->getById(I)Lcom/htc/opensense/album/ControlButton;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/htc/opensense/album/ControlButton;->setText(I)Z

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/htc/opensense/album/ControlButtonCollection;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setButtonText] button no found, id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setButtonText(ILjava/lang/String;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/ControlButtonCollection;->getById(I)Lcom/htc/opensense/album/ControlButton;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/htc/opensense/album/ControlButton;->setText(Ljava/lang/String;)Z

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/htc/opensense/album/ControlButtonCollection;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setButtonText] button no found, id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setButtonVisibility(II)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/ControlButtonCollection;->getById(I)Lcom/htc/opensense/album/ControlButton;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/htc/opensense/album/ControlButton;->setVisibility(I)Z

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/htc/opensense/album/ControlButtonCollection;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setButtonVisiblity] button no found, id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setLayoutId(I)V
    .locals 0

    iput p1, p0, Lcom/htc/opensense/album/ControlBase;->mLayoutId:I

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 3

    iput-object p1, p0, Lcom/htc/opensense/album/ControlBase;->mClickListener:Landroid/view/View$OnClickListener;

    iget-object v2, p0, Lcom/htc/opensense/album/ControlButtonCollection;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/ControlButton;

    iget-object v2, p0, Lcom/htc/opensense/album/ControlBase;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/htc/opensense/album/ControlButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/ControlButtonCollection;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
