.class public Lcom/htc/android/worldclock/SkinHelper;
.super Ljava/lang/Object;
.source "SkinHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetSkinColorResId(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1
    .parameter "context"
    .parameter "skinColor"
    .parameter "originalColor"

    .prologue
    .line 17
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 18
    invoke-static {p0, p1, p2}, Lcom/htc/util/skin/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 19
    .local v0, resId:I
    if-eq v0, p2, :cond_0

    .end local v0           #resId:I
    :goto_0
    return v0

    .restart local v0       #resId:I
    :cond_0
    move v0, p2

    goto :goto_0
.end method

.method public static GetSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1
    .parameter "context"
    .parameter "skinDrawable"
    .parameter "originalDrawable"

    .prologue
    .line 11
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 12
    invoke-static {p0, p1, p2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 13
    .local v0, resId:I
    if-eq v0, p2, :cond_0

    .end local v0           #resId:I
    :goto_0
    return v0

    .restart local v0       #resId:I
    :cond_0
    move v0, p2

    goto :goto_0
.end method
