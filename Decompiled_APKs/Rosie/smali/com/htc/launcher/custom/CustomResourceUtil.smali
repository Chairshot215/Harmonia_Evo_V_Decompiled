.class public Lcom/htc/launcher/custom/CustomResourceUtil;
.super Ljava/lang/Object;
.source "CustomResourceUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppliedSkinPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lcom/htc/util/skin/HtcSkinUtil;->getAppliedSkinPackageName()Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, pkgName:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 34
    .end local v0           #pkgName:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #pkgName:Ljava/lang/String;
    :cond_0
    const-string v0, "default"

    goto :goto_0
.end method

.method public static getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1
    .parameter "context"
    .parameter "resName"
    .parameter "defRes"

    .prologue
    .line 14
    invoke-static {p0, p1, p2}, Lcom/htc/util/skin/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1
    .parameter "context"
    .parameter "resName"
    .parameter "defRes"

    .prologue
    .line 18
    invoke-static {p0, p1, p2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getIntegerResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1
    .parameter "context"
    .parameter "resName"
    .parameter "defRes"

    .prologue
    .line 22
    invoke-static {p0, p1, p2}, Lcom/htc/util/skin/HtcSkinUtil;->getIntegerResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSkinName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 26
    invoke-static {p0, p1}, Lcom/htc/util/skin/HtcSkinUtil;->getSkinName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
