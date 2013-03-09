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
    .parameter "pageLayout"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/htc/widget/PageHandler;->mMultipageLayout:Lcom/htc/widget/MultiPageLayout;

    .line 14
    return-void
.end method


# virtual methods
.method public addPage(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/htc/widget/PageHandler;->mMultipageLayout:Lcom/htc/widget/MultiPageLayout;

    invoke-interface {v0, p1}, Lcom/htc/widget/MultiPageLayout;->addPage(Landroid/view/View;)V

    .line 18
    return-void
.end method

.method public addPage(Landroid/view/View;I)V
    .locals 1
    .parameter "view"
    .parameter "index"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/htc/widget/PageHandler;->mMultipageLayout:Lcom/htc/widget/MultiPageLayout;

    invoke-interface {v0, p1, p2}, Lcom/htc/widget/MultiPageLayout;->addPage(Landroid/view/View;I)V

    .line 26
    return-void
.end method

.method public addPage(Landroid/view/View;IZ)V
    .locals 1
    .parameter "view"
    .parameter "index"
    .parameter "shift"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/widget/PageHandler;->mMultipageLayout:Lcom/htc/widget/MultiPageLayout;

    invoke-interface {v0, p1, p2, p3}, Lcom/htc/widget/MultiPageLayout;->addPage(Landroid/view/View;IZ)V

    .line 30
    return-void
.end method

.method public animateBackPreviousPage()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/widget/PageHandler;->mMultipageLayout:Lcom/htc/widget/MultiPageLayout;

    invoke-interface {v0}, Lcom/htc/widget/MultiPageLayout;->animateBackPreviousPage()V

    .line 70
    return-void
.end method

.method public animateToNextPage()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/widget/PageHandler;->mMultipageLayout:Lcom/htc/widget/MultiPageLayout;

    invoke-interface {v0}, Lcom/htc/widget/MultiPageLayout;->animateToNextPage()V

    .line 63
    return-void
.end method

.method public removePage(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/htc/widget/PageHandler;->mMultipageLayout:Lcom/htc/widget/MultiPageLayout;

    invoke-interface {v0, p1}, Lcom/htc/widget/MultiPageLayout;->removePage(I)V

    .line 34
    return-void
.end method

.method public rotationChanged()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/widget/PageHandler;->mMultipageLayout:Lcom/htc/widget/MultiPageLayout;

    invoke-interface {v0}, Lcom/htc/widget/MultiPageLayout;->rotationChanged()V

    .line 74
    return-void
.end method

.method public setFakeScreenBottom(I)V
    .locals 1
    .parameter "bottom"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/widget/PageHandler;->mMultipageLayout:Lcom/htc/widget/MultiPageLayout;

    invoke-interface {v0, p1}, Lcom/htc/widget/MultiPageLayout;->setFakeScreenBottom(I)V

    .line 53
    return-void
.end method

.method public setFakeScreenEnabled(Z)V
    .locals 1
    .parameter "fakeScreen"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/widget/PageHandler;->mMultipageLayout:Lcom/htc/widget/MultiPageLayout;

    invoke-interface {v0, p1}, Lcom/htc/widget/MultiPageLayout;->setFakeScreenEnabled(Z)V

    .line 57
    return-void
.end method

.method public setFakeScreenTop(I)V
    .locals 1
    .parameter "top"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/widget/PageHandler;->mMultipageLayout:Lcom/htc/widget/MultiPageLayout;

    invoke-interface {v0, p1}, Lcom/htc/widget/MultiPageLayout;->setFakeScreenTop(I)V

    .line 49
    return-void
.end method

.method public setOnPageAnimateListener(Lcom/htc/widget/MultiPageLayout$OnPageAnimateListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/widget/PageHandler;->mMultipageLayout:Lcom/htc/widget/MultiPageLayout;

    invoke-interface {v0, p1}, Lcom/htc/widget/MultiPageLayout;->setOnPageAnimateListener(Lcom/htc/widget/MultiPageLayout$OnPageAnimateListener;)V

    .line 78
    return-void
.end method

.method public setPagesParams([Landroid/view/ViewGroup$LayoutParams;[[I)V
    .locals 1
    .parameter "sizes"
    .parameter "paddings"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/widget/PageHandler;->mMultipageLayout:Lcom/htc/widget/MultiPageLayout;

    invoke-interface {v0, p1, p2}, Lcom/htc/widget/MultiPageLayout;->setPagesParams([Landroid/view/ViewGroup$LayoutParams;[[I)V

    .line 40
    return-void
.end method

.method public setPagesSize([Landroid/view/ViewGroup$LayoutParams;[Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "portraitSizes"
    .parameter "landscapeSizes"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/widget/PageHandler;->mMultipageLayout:Lcom/htc/widget/MultiPageLayout;

    invoke-interface {v0, p1, p2}, Lcom/htc/widget/MultiPageLayout;->setPagesSize([Landroid/view/ViewGroup$LayoutParams;[Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    return-void
.end method
