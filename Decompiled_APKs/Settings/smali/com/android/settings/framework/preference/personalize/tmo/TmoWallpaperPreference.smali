.class public Lcom/android/settings/framework/preference/personalize/tmo/TmoWallpaperPreference;
.super Lcom/android/settings/framework/preference/HtcAbstractActionPreference;
.source "TmoWallpaperPreference.java"


# static fields
.field public static final KEY:Ljava/lang/String; = "TMO_WALLPAPER"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method


# virtual methods
.method protected getCustomActionType()Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;->START_ACTIVITY:Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;

    return-object v0
.end method

.method protected getCustomIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/personalize/tmo/TmoWallpaperPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 72
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/personalize/tmo/TmoWallpaperPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c03d4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, chooserTitle:Ljava/lang/String;
    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    .line 76
    return-object v1
.end method

.method protected getCustomKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const-string v0, "TMO_WALLPAPER"

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/personalize/tmo/TmoWallpaperPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0080

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitleRes()I
    .locals 1

    .prologue
    .line 67
    const v0, 0x7f0c0080

    return v0
.end method
