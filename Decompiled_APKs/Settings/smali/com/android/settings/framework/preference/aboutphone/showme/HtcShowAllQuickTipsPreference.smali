.class public Lcom/android/settings/framework/preference/aboutphone/showme/HtcShowAllQuickTipsPreference;
.super Lcom/htc/preference/HtcCheckBoxPreference;
.source "HtcShowAllQuickTipsPreference.java"


# static fields
.field public static final KEY:Ljava/lang/String; = "show_all_quick_tips"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/aboutphone/showme/HtcShowAllQuickTipsPreference;->initialize(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/aboutphone/showme/HtcShowAllQuickTipsPreference;->initialize(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/aboutphone/showme/HtcShowAllQuickTipsPreference;->initialize(Landroid/content/Context;)V

    .line 50
    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/showme/HtcShowAllQuickTipsPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 59
    const-string v1, "show_all_quick_tips"

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/aboutphone/showme/HtcShowAllQuickTipsPreference;->setKey(Ljava/lang/String;)V

    .line 61
    :cond_0
    const v1, 0x7f0c0130

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/aboutphone/showme/HtcShowAllQuickTipsPreference;->setTitle(I)V

    .line 64
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/aboutphone/showme/HtcShowAllQuickTipsPreference;->setPersistent(Z)V

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/showme/HtcShowAllQuickTipsPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->getShowQuickTip(Landroid/content/ContentResolver;)Z

    move-result v0

    .line 68
    .local v0, value:Z
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/aboutphone/showme/HtcShowAllQuickTipsPreference;->setChecked(Z)V

    .line 69
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/showme/HtcShowAllQuickTipsPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->getShowQuickTip(Landroid/content/ContentResolver;)Z

    move-result v0

    .line 76
    .local v0, value:Z
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/aboutphone/showme/HtcShowAllQuickTipsPreference;->setChecked(Z)V

    .line 78
    invoke-super {p0, p1}, Lcom/htc/preference/HtcCheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 79
    return-void
.end method

.method protected onClick()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/showme/HtcShowAllQuickTipsPreference;->isChecked()Z

    move-result v0

    .line 85
    .local v0, value:Z
    if-nez v0, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/aboutphone/showme/HtcShowAllQuickTipsPreference;->setChecked(Z)V

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/showme/HtcShowAllQuickTipsPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-nez v0, :cond_1

    :goto_1
    invoke-static {v1, v2}, Lcom/android/settings/framework/reflect/com/htc/wrap/android/provider/HtcRefWrapSettings;->setShowQuickTip(Landroid/content/ContentResolver;Z)V

    .line 89
    return-void

    :cond_0
    move v1, v3

    .line 85
    goto :goto_0

    :cond_1
    move v2, v3

    .line 86
    goto :goto_1
.end method
