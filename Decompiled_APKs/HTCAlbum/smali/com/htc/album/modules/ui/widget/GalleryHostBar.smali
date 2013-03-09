.class public Lcom/htc/album/modules/ui/widget/GalleryHostBar;
.super Lcom/htc/album/modules/ui/widget/BaseControlBar;
.source "GalleryHostBar.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<HOST:",
        "Landroid/view/ViewGroup;",
        ">",
        "Lcom/htc/album/modules/ui/widget/BaseControlBar",
        "<THOST;",
        "Lcom/htc/album/modules/ui/widget/HeaderButton;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 14
    .local p0, this:Lcom/htc/album/modules/ui/widget/GalleryHostBar;,"Lcom/htc/album/modules/ui/widget/GalleryHostBar<THOST;>;"
    invoke-direct {p0, p1, p2}, Lcom/htc/album/modules/ui/widget/BaseControlBar;-><init>(Landroid/content/Context;I)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(THOST;)V"
        }
    .end annotation

    .prologue
    .line 10
    .local p0, this:Lcom/htc/album/modules/ui/widget/GalleryHostBar;,"Lcom/htc/album/modules/ui/widget/GalleryHostBar<THOST;>;"
    .local p1, hostView:Landroid/view/ViewGroup;,"THOST;"
    invoke-direct {p0, p1}, Lcom/htc/album/modules/ui/widget/BaseControlBar;-><init>(Landroid/view/ViewGroup;)V

    .line 11
    return-void
.end method


# virtual methods
.method public getMaxButtonCount()I
    .locals 1

    .prologue
    .line 21
    .local p0, this:Lcom/htc/album/modules/ui/widget/GalleryHostBar;,"Lcom/htc/album/modules/ui/widget/GalleryHostBar<THOST;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic onNewButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 6
    .local p0, this:Lcom/htc/album/modules/ui/widget/GalleryHostBar;,"Lcom/htc/album/modules/ui/widget/GalleryHostBar<THOST;>;"
    invoke-virtual/range {p0 .. p5}, Lcom/htc/album/modules/ui/widget/GalleryHostBar;->onNewButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/HeaderButton;

    move-result-object v0

    return-object v0
.end method

.method public onNewButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/HeaderButton;
    .locals 1
    .parameter "context"
    .parameter "groupId"
    .parameter "btnId"
    .parameter "imgResId"
    .parameter "txtResId"

    .prologue
    .line 28
    .local p0, this:Lcom/htc/album/modules/ui/widget/GalleryHostBar;,"Lcom/htc/album/modules/ui/widget/GalleryHostBar<THOST;>;"
    const/4 v0, 0x0

    return-object v0
.end method
