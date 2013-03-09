.class public Lcom/htc/wrap/android/view/HtcWrapView;
.super Landroid/view/View;
.source "HtcWrapView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method

.method public static dispatchPenEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "event"

    .prologue
    .line 223
    const/4 v0, 0x0

    return v0
.end method

.method public static getCornerRadius(Landroid/view/View;)I
    .locals 1
    .parameter "view"

    .prologue
    .line 200
    invoke-virtual {p0}, Landroid/view/View;->getCornerRadius()I

    move-result v0

    return v0
.end method

.method public static isBottomCornerRounded(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 192
    invoke-virtual {p0}, Landroid/view/View;->isBottomCornerRounded()Z

    move-result v0

    return v0
.end method

.method public static isPenAsTouch(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 251
    const/4 v0, 0x0

    return v0
.end method

.method public static isRoundedCornerEnabled(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 184
    invoke-virtual {p0}, Landroid/view/View;->isRoundedCornerEnabled()Z

    move-result v0

    return v0
.end method

.method public static isTopCornerRounded(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 188
    invoke-virtual {p0}, Landroid/view/View;->isTopCornerRounded()Z

    move-result v0

    return v0
.end method

.method public static onPenEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "event"

    .prologue
    .line 235
    const/4 v0, 0x0

    return v0
.end method

.method public static setCornerAntiAliased(Landroid/view/View;Z)V
    .locals 0
    .parameter "view"
    .parameter "aa"

    .prologue
    .line 212
    invoke-virtual {p0, p1}, Landroid/view/View;->setCornerAntiAliased(Z)V

    .line 213
    return-void
.end method

.method public static setCornerRadius(Landroid/view/View;I)V
    .locals 0
    .parameter "view"
    .parameter "radius"

    .prologue
    .line 196
    invoke-virtual {p0, p1}, Landroid/view/View;->setCornerRadius(I)V

    .line 197
    return-void
.end method

.method public static setCornerStrokeColor(Landroid/view/View;I)V
    .locals 0
    .parameter "view"
    .parameter "color"

    .prologue
    .line 208
    invoke-virtual {p0, p1}, Landroid/view/View;->setCornerStrokeColor(I)V

    .line 209
    return-void
.end method

.method public static setCornerStrokeWidth(Landroid/view/View;I)V
    .locals 0
    .parameter "view"
    .parameter "width"

    .prologue
    .line 204
    invoke-virtual {p0, p1}, Landroid/view/View;->setCornerStrokeWidth(I)V

    .line 205
    return-void
.end method

.method public static setDispatchPenEvent(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .parameter "view"
    .parameter "methodName"

    .prologue
    .line 228
    return-void
.end method

.method public static setOnPenEvent(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .parameter "view"
    .parameter "methodName"

    .prologue
    .line 232
    return-void
.end method

.method public static setOnPenListener(Landroid/view/View;Landroid/view/View$OnTouchListener;)V
    .locals 0
    .parameter "view"
    .parameter "l"

    .prologue
    .line 220
    return-void
.end method

.method public static setPenAsTouch(Landroid/view/View;Z)V
    .locals 0
    .parameter "view"
    .parameter "penAsTouch"

    .prologue
    .line 248
    return-void
.end method

.method public static setRoundedCornerEnabled(Landroid/view/View;Z)V
    .locals 0
    .parameter "view"
    .parameter "roundCorner"

    .prologue
    .line 176
    invoke-virtual {p0, p1}, Landroid/view/View;->setRoundedCornerEnabled(Z)V

    .line 177
    return-void
.end method

.method public static setRoundedCornerEnabled(Landroid/view/View;ZZ)V
    .locals 0
    .parameter "view"
    .parameter "topRoundCorners"
    .parameter "bottomRoundCorners"

    .prologue
    .line 180
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setRoundedCornerEnabled(ZZ)V

    .line 181
    return-void
.end method


# virtual methods
.method public dispatchPenEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public getCornerRadius()I
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Landroid/view/View;->getCornerRadius()I

    move-result v0

    return v0
.end method

.method public isBottomCornerRounded()Z
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Landroid/view/View;->isBottomCornerRounded()Z

    move-result v0

    return v0
.end method

.method public isPenAsTouch()Z
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public isRoundedCornerEnabled()Z
    .locals 1

    .prologue
    .line 45
    invoke-super {p0}, Landroid/view/View;->isRoundedCornerEnabled()Z

    move-result v0

    return v0
.end method

.method public isTopCornerRounded()Z
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Landroid/view/View;->isTopCornerRounded()Z

    move-result v0

    return v0
.end method

.method public onPenEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public setCornerAntiAliased(Z)V
    .locals 0
    .parameter "aa"

    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/view/View;->setCornerAntiAliased(Z)V

    .line 102
    return-void
.end method

.method public setCornerRadius(I)V
    .locals 0
    .parameter "radius"

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/view/View;->setCornerRadius(I)V

    .line 63
    return-void
.end method

.method public setCornerStrokeColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/view/View;->setCornerStrokeColor(I)V

    .line 92
    return-void
.end method

.method public setCornerStrokeWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/view/View;->setCornerStrokeWidth(I)V

    .line 78
    return-void
.end method

.method public setDispatchPenEvent(Ljava/lang/String;)V
    .locals 0
    .parameter "methodName"

    .prologue
    .line 130
    return-void
.end method

.method public setOnPenEvent(Ljava/lang/String;)V
    .locals 0
    .parameter "methodName"

    .prologue
    .line 134
    return-void
.end method

.method public setPenAsTouch(Z)V
    .locals 0
    .parameter "penAsTouch"

    .prologue
    .line 165
    return-void
.end method

.method public setRoundedCornerEnabled(Z)V
    .locals 0
    .parameter "roundCorner"

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/view/View;->setRoundedCornerEnabled(Z)V

    .line 33
    return-void
.end method

.method public setRoundedCornerEnabled(ZZ)V
    .locals 0
    .parameter "topRoundCorners"
    .parameter "bottomRoundCorners"

    .prologue
    .line 41
    invoke-super {p0, p1, p2}, Landroid/view/View;->setRoundedCornerEnabled(ZZ)V

    .line 42
    return-void
.end method
