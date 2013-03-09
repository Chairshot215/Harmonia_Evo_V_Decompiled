.class public Lcom/htc/widget/PageHandler;
.super Ljava/lang/Object;
.source "PageHandler.java"


# static fields
.field static final TAG:Ljava/lang/String; = "PageHandler"


# instance fields
.field private mMultipageLayout:Lcom/htc/widget/MultiPageLayout;


# direct methods
.method public constructor <init>(Lcom/htc/widget/MultiPageLayout;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/htc/widget/PageHandler;->mMultipageLayout:Lcom/htc/widget/MultiPageLayout;

    return-void
.end method


# virtual methods
.method public addPage(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/PageHandler;->mMultipageLayout:Lcom/htc/widget/MultiPageLayout;

    invoke-interface {v0, p1}, Lcom/htc/widget/MultiPageLayout;->addPage(Landroid/view/View;)V

    return-void
.end method

.method public addPage(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/PageHandler;->mMultipageLayout:Lcom/htc/widget/MultiPageLayout;

    invoke-interface {v0, p1, p2}, Lcom/htc/widget/MultiPageLayout;->addPage(Landroid/view/View;I)V

    return-void
.end method

.method public addPage(Landroid/view/View;IZ)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/PageHandler;->mMultipageLayout:Lcom/htc/widget/MultiPageLayout;

    invoke-interface {v0, p1, p2, p3}, Lcom/htc/widget/MultiPageLayout;->addPage(Landroid/view/View;IZ)V

    return-void
.end method

.method public animateBackPreviousPage()V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/PageHandler;->mMultipageLayout:Lcom/htc/widget/MultiPageLayout;

    invoke-interface {v0}, Lcom/htc/widget/MultiPageLayout;->animateBackPreviousPage()V

    return-void
.end method

.method public animateToNextPage()V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/PageHandler;->mMultipageLayout:Lcom/htc/widget/MultiPageLayout;

    invoke-interface {v0}, Lcom/htc/widget/MultiPageLayout;->animateToNextPage()V

    return-void
.end method

.method public removePage(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/PageHandler;->mMultipageLayout:Lcom/htc/widget/MultiPageLayout;

    invoke-interface {v0, p1}, Lcom/htc/widget/MultiPageLayout;->removePage(I)V

    return-void
.end method

.method public rotationChanged()V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/PageHandler;->mMultipageLayout:Lcom/htc/widget/MultiPageLayout;

    invoke-interface {v0}, Lcom/htc/widget/MultiPageLayout;->rotationChanged()V

    return-void
.end method

.method public setFakeScreenBottom(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/PageHandler;->mMultipageLayout:Lcom/htc/widget/MultiPageLayout;

    invoke-interface {v0, p1}, Lcom/htc/widget/MultiPageLayout;->setFakeScreenBottom(I)V

    return-void
.end method

.method public setFakeScreenEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/PageHandler;->mMultipageLayout:Lcom/htc/widget/MultiPageLayout;

    invoke-interface {v0, p1}, Lcom/htc/widget/MultiPageLayout;->setFakeScreenEnabled(Z)V

    return-void
.end method

.method public setFakeScreenTop(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/PageHandler;->mMultipageLayout:Lcom/htc/widget/MultiPageLayout;

    invoke-interface {v0, p1}, Lcom/htc/widget/MultiPageLayout;->setFakeScreenTop(I)V

    return-void
.end method

.method public setOnPageAnimateListener(Lcom/htc/widget/MultiPageLayout$OnPageAnimateListener;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/PageHandler;->mMultipageLayout:Lcom/htc/widget/MultiPageLayout;

    invoke-interface {v0, p1}, Lcom/htc/widget/MultiPageLayout;->setOnPageAnimateListener(Lcom/htc/widget/MultiPageLayout$OnPageAnimateListener;)V

    return-void
.end method

.method public setPagesParams([Landroid/view/ViewGroup$LayoutParams;[[I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/PageHandler;->mMultipageLayout:Lcom/htc/widget/MultiPageLayout;

    invoke-interface {v0, p1, p2}, Lcom/htc/widget/MultiPageLayout;->setPagesParams([Landroid/view/ViewGroup$LayoutParams;[[I)V

    return-void
.end method

.method public setPagesSize([Landroid/view/ViewGroup$LayoutParams;[Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/PageHandler;->mMultipageLayout:Lcom/htc/widget/MultiPageLayout;

    invoke-interface {v0, p1, p2}, Lcom/htc/widget/MultiPageLayout;->setPagesSize([Landroid/view/ViewGroup$LayoutParams;[Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
