.class public Lcom/htc/widget/CarouselInternalActivity;
.super Lcom/htc/widget/CarouselActivity;
.source "CarouselInternalActivity.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "authority"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/htc/widget/CarouselActivity;-><init>(Ljava/lang/String;)V

    .line 16
    return-void
.end method


# virtual methods
.method protected OnEditModeDrawerClose()V
    .locals 0

    .prologue
    .line 31
    return-void
.end method

.method protected OnEditModeDrawerOpen()V
    .locals 0

    .prologue
    .line 28
    return-void
.end method

.method onEditDrawerAboutToOpen()V
    .locals 0

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/htc/widget/CarouselInternalActivity;->OnEditModeDrawerOpen()V

    .line 36
    return-void
.end method

.method onEditDrawerCompleteClose()V
    .locals 0

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/htc/widget/CarouselInternalActivity;->OnEditModeDrawerClose()V

    .line 41
    return-void
.end method

.method public setResources(Landroid/content/res/Resources;)V
    .locals 0
    .parameter "resource"

    .prologue
    .line 21
    if-eqz p1, :cond_0

    .line 23
    iput-object p1, p0, Lcom/htc/widget/CarouselInternalActivity;->eresources:Landroid/content/res/Resources;

    .line 25
    :cond_0
    return-void
.end method
