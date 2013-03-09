.class public Lcom/android/settings/framework/preference/personalize/tmo/TmoLockWallpaperPreference;
.super Lcom/android/settings/framework/preference/HtcAbstractActionPreference;
.source "TmoLockWallpaperPreference.java"


# static fields
.field public static final KEY:Ljava/lang/String; = "TMO_LOCK_WALLPAPER"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method


# virtual methods
.method protected getCustomActionType()Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;->START_ACTIVITY:Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;

    return-object v0
.end method

.method protected getCustomIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/personalize/tmo/TmoLockWallpaperPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 75
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SET_LOCKSCREEN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/personalize/tmo/TmoLockWallpaperPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c03d4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, chooserTitle:Ljava/lang/String;
    const-string v2, "CAN_RESET_DEFAULT"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 78
    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    .line 79
    return-object v1
.end method

.method protected getCustomKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const-string v0, "TMO_LOCK_WALLPAPER"

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/personalize/tmo/TmoLockWallpaperPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0093

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitleRes()I
    .locals 1

    .prologue
    .line 69
    const v0, 0x7f0c0093

    return v0
.end method
