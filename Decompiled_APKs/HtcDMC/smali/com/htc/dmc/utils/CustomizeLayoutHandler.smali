.class public Lcom/htc/dmc/utils/CustomizeLayoutHandler;
.super Ljava/lang/Object;
.source "CustomizeLayoutHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1
    .parameter "context"
    .parameter "resName"
    .parameter "defResId"

    .prologue
    .line 34
    invoke-static {p0, p1, p2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static setButtonAlpha(Landroid/view/View;I)V
    .locals 0
    .parameter "btn"
    .parameter "alpha"

    .prologue
    .line 23
    return-void
.end method

.method public static setButtonTopImageBottomLabel(Landroid/view/View;II)V
    .locals 0
    .parameter "btn"
    .parameter "imageResID"
    .parameter "textResId"

    .prologue
    .line 11
    return-void
.end method

.method public static setButtonTopImageBottomLabel(Landroid/view/View;III)V
    .locals 0
    .parameter "btn"
    .parameter "imageResID"
    .parameter "alpha"
    .parameter "textResId"

    .prologue
    .line 19
    return-void
.end method

.method public static setButtonTopImageBottomLabel(Landroid/view/View;ILjava/lang/String;)V
    .locals 0
    .parameter "btn"
    .parameter "imageResID"
    .parameter "text"

    .prologue
    .line 15
    return-void
.end method

.method public static setGlanceTitlebarBackground(Landroid/content/Context;Landroid/view/View;)V
    .locals 0
    .parameter "context"
    .parameter "titlebar"

    .prologue
    .line 26
    return-void
.end method
