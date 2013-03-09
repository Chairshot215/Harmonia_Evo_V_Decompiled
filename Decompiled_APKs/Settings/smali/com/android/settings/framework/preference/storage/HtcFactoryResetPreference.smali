.class public Lcom/android/settings/framework/preference/storage/HtcFactoryResetPreference;
.super Lcom/android/settings/framework/preference/HtcAbstractActionPreference;
.source "HtcFactoryResetPreference.java"


# static fields
.field public static final KEY:Ljava/lang/String; = "FACTORY\uff3fRESET"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method


# virtual methods
.method protected getCustomActionType()Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;->START_FRAGMENT:Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;

    return-object v0
.end method

.method protected getCustomIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 50
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcFactoryResetPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.settings.MasterClear"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomSummary()Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcFactoryResetPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0a5c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcFactoryResetPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0a5b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitleRes()I
    .locals 1

    .prologue
    .line 38
    const v0, 0x7f0c0a5b

    return v0
.end method
