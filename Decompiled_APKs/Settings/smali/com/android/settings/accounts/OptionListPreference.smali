.class public Lcom/android/settings/accounts/OptionListPreference;
.super Landroid/preference/ListPreference;
.source "OptionListPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/accounts/OptionListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const v0, 0x7f0400b0

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/OptionListPreference;->setLayoutResource(I)V

    .line 30
    const v0, 0x7f040071

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/OptionListPreference;->setWidgetLayoutResource(I)V

    .line 31
    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onBindView(Landroid/view/View;)V

    .line 42
    return-void
.end method
