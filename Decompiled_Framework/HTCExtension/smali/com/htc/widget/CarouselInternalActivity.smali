.class public Lcom/htc/widget/CarouselInternalActivity;
.super Lcom/htc/widget/CarouselActivity;
.source "CarouselInternalActivity.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/widget/CarouselActivity;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected OnEditModeDrawerClose()V
    .locals 0

    return-void
.end method

.method protected OnEditModeDrawerOpen()V
    .locals 0

    return-void
.end method

.method onEditDrawerAboutToOpen()V
    .locals 0

    invoke-virtual {p0}, Lcom/htc/widget/CarouselInternalActivity;->OnEditModeDrawerOpen()V

    return-void
.end method

.method onEditDrawerCompleteClose()V
    .locals 0

    invoke-virtual {p0}, Lcom/htc/widget/CarouselInternalActivity;->OnEditModeDrawerClose()V

    return-void
.end method

.method public setResources(Landroid/content/res/Resources;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/htc/widget/CarouselActivity;->eresources:Landroid/content/res/Resources;

    :cond_0
    return-void
.end method
