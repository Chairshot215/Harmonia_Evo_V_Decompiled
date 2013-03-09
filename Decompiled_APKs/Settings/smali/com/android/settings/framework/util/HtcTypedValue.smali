.class public Lcom/android/settings/framework/util/HtcTypedValue;
.super Landroid/util/TypedValue;
.source "HtcTypedValue.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/util/TypedValue;-><init>()V

    return-void
.end method

.method public static complexToDimensionPixelOffset(Landroid/content/Context;I)I
    .locals 3
    .parameter "context"
    .parameter "attrId"

    .prologue
    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 58
    .local v0, metrics:Landroid/util/DisplayMetrics;
    invoke-static {p0, p1}, Lcom/android/settings/framework/util/HtcTypedValue;->resolveAttribute(Landroid/content/Context;I)Lcom/android/settings/framework/util/HtcTypedValue;

    move-result-object v1

    .line 62
    .local v1, typedValue:Lcom/android/settings/framework/util/HtcTypedValue;
    iget v2, v1, Landroid/util/TypedValue;->data:I

    invoke-static {v2, v0}, Lcom/android/settings/framework/util/HtcTypedValue;->complexToDimensionPixelOffset(ILandroid/util/DisplayMetrics;)I

    move-result v2

    return v2
.end method

.method public static complexToDimensionPixelSize(Landroid/content/Context;I)I
    .locals 3
    .parameter "context"
    .parameter "attrId"

    .prologue
    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 81
    .local v0, metrics:Landroid/util/DisplayMetrics;
    invoke-static {p0, p1}, Lcom/android/settings/framework/util/HtcTypedValue;->resolveAttribute(Landroid/content/Context;I)Lcom/android/settings/framework/util/HtcTypedValue;

    move-result-object v1

    .line 85
    .local v1, typedValue:Lcom/android/settings/framework/util/HtcTypedValue;
    iget v2, v1, Landroid/util/TypedValue;->data:I

    invoke-static {v2, v0}, Lcom/android/settings/framework/util/HtcTypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v2

    return v2
.end method

.method public static resolveAttribute(Landroid/content/Context;I)Lcom/android/settings/framework/util/HtcTypedValue;
    .locals 4
    .parameter "context"
    .parameter "attrId"

    .prologue
    .line 32
    new-instance v1, Lcom/android/settings/framework/util/HtcTypedValue;

    invoke-direct {v1}, Lcom/android/settings/framework/util/HtcTypedValue;-><init>()V

    .line 33
    .local v1, outValue:Lcom/android/settings/framework/util/HtcTypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v0

    .line 36
    .local v0, found:Z
    if-eqz v0, :cond_0

    .line 39
    .end local v1           #outValue:Lcom/android/settings/framework/util/HtcTypedValue;
    :goto_0
    return-object v1

    .restart local v1       #outValue:Lcom/android/settings/framework/util/HtcTypedValue;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
