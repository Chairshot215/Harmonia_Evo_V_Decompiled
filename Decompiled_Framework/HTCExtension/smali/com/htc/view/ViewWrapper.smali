.class public Lcom/htc/view/ViewWrapper;
.super Ljava/lang/Object;
.source "ViewWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCornerRadius(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getCornerRadius()I

    move-result v0

    return v0
.end method

.method public static isBottomCornerRounded(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isBottomCornerRounded()Z

    move-result v0

    return v0
.end method

.method public static isRoundedCornerEnabled(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isRoundedCornerEnabled()Z

    move-result v0

    return v0
.end method

.method public static isTopCornerRounded(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isTopCornerRounded()Z

    move-result v0

    return v0
.end method

.method public static setCornerAntiAliased(Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->setCornerAntiAliased(Z)V

    return-void
.end method

.method public static setCornerRadius(Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->setCornerRadius(I)V

    return-void
.end method

.method public static setCornerStrokeColor(Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->setCornerStrokeColor(I)V

    return-void
.end method

.method public static setCornerStrokeWidth(Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->setCornerStrokeWidth(I)V

    return-void
.end method

.method public static setRoundedCornerEnabled(Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->setRoundedCornerEnabled(Z)V

    return-void
.end method

.method public static setRoundedCornerEnabled(Landroid/view/View;ZZ)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setRoundedCornerEnabled(ZZ)V

    return-void
.end method
