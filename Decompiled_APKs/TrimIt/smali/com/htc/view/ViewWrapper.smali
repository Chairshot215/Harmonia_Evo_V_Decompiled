.class public Lcom/htc/view/ViewWrapper;
.super Ljava/lang/Object;
.source "ViewWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCornerRadius(Landroid/view/View;)I
    .locals 1
    .parameter "view"

    .prologue
    .line 68
    invoke-virtual {p0}, Landroid/view/View;->getCornerRadius()I

    move-result v0

    return v0
.end method

.method public static isBottomCornerRounded(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 50
    invoke-virtual {p0}, Landroid/view/View;->isBottomCornerRounded()Z

    move-result v0

    return v0
.end method

.method public static isRoundedCornerEnabled(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 32
    invoke-virtual {p0}, Landroid/view/View;->isRoundedCornerEnabled()Z

    move-result v0

    return v0
.end method

.method public static isTopCornerRounded(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 41
    invoke-virtual {p0}, Landroid/view/View;->isTopCornerRounded()Z

    move-result v0

    return v0
.end method

.method public static setCornerAntiAliased(Landroid/view/View;Z)V
    .locals 0
    .parameter "view"
    .parameter "aa"

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Landroid/view/View;->setCornerAntiAliased(Z)V

    .line 96
    return-void
.end method

.method public static setCornerRadius(Landroid/view/View;I)V
    .locals 0
    .parameter "view"
    .parameter "radius"

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Landroid/view/View;->setCornerRadius(I)V

    .line 60
    return-void
.end method

.method public static setCornerStrokeColor(Landroid/view/View;I)V
    .locals 0
    .parameter "view"
    .parameter "color"

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Landroid/view/View;->setCornerStrokeColor(I)V

    .line 87
    return-void
.end method

.method public static setCornerStrokeWidth(Landroid/view/View;I)V
    .locals 0
    .parameter "view"
    .parameter "width"

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Landroid/view/View;->setCornerStrokeWidth(I)V

    .line 78
    return-void
.end method

.method public static setRoundedCornerEnabled(Landroid/view/View;Z)V
    .locals 0
    .parameter "view"
    .parameter "roundCorner"

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Landroid/view/View;->setRoundedCornerEnabled(Z)V

    .line 14
    return-void
.end method

.method public static setRoundedCornerEnabled(Landroid/view/View;ZZ)V
    .locals 0
    .parameter "view"
    .parameter "topRoundCorners"
    .parameter "bottomRoundCorners"

    .prologue
    .line 23
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setRoundedCornerEnabled(ZZ)V

    .line 24
    return-void
.end method
