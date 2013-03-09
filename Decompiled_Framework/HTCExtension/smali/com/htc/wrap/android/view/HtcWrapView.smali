.class public Lcom/htc/wrap/android/view/HtcWrapView;
.super Landroid/view/View;
.source "HtcWrapView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static dispatchPenEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
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

.method public static isPenAsTouch(Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x0

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

.method public static onPenEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

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

.method public static setDispatchPenEvent(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static setOnPenEvent(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static setOnPenListener(Landroid/view/View;Landroid/view/View$OnTouchListener;)V
    .locals 0

    return-void
.end method

.method public static setPenAsTouch(Landroid/view/View;Z)V
    .locals 0

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


# virtual methods
.method public dispatchPenEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCornerRadius()I
    .locals 1

    invoke-super {p0}, Landroid/view/View;->getCornerRadius()I

    move-result v0

    return v0
.end method

.method public isBottomCornerRounded()Z
    .locals 1

    invoke-super {p0}, Landroid/view/View;->isBottomCornerRounded()Z

    move-result v0

    return v0
.end method

.method public isPenAsTouch()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isRoundedCornerEnabled()Z
    .locals 1

    invoke-super {p0}, Landroid/view/View;->isRoundedCornerEnabled()Z

    move-result v0

    return v0
.end method

.method public isTopCornerRounded()Z
    .locals 1

    invoke-super {p0}, Landroid/view/View;->isTopCornerRounded()Z

    move-result v0

    return v0
.end method

.method public onPenEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setCornerAntiAliased(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setCornerAntiAliased(Z)V

    return-void
.end method

.method public setCornerRadius(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setCornerRadius(I)V

    return-void
.end method

.method public setCornerStrokeColor(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setCornerStrokeColor(I)V

    return-void
.end method

.method public setCornerStrokeWidth(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setCornerStrokeWidth(I)V

    return-void
.end method

.method public setDispatchPenEvent(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setOnPenEvent(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setPenAsTouch(Z)V
    .locals 0

    return-void
.end method

.method public setRoundedCornerEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setRoundedCornerEnabled(Z)V

    return-void
.end method

.method public setRoundedCornerEnabled(ZZ)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->setRoundedCornerEnabled(ZZ)V

    return-void
.end method
