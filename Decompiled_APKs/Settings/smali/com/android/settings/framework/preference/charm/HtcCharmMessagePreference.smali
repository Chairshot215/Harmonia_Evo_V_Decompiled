.class public final Lcom/android/settings/framework/preference/charm/HtcCharmMessagePreference;
.super Lcom/htc/preference/HtcCheckBoxPreference;
.source "HtcCharmMessagePreference.java"


# static fields
.field public static final KEY:Ljava/lang/String; = "charm_message"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/charm/HtcCharmMessagePreference;->initialize(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/charm/HtcCharmMessagePreference;->initialize(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/charm/HtcCharmMessagePreference;->initialize(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/charm/HtcCharmMessagePreference;->getKey()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 63
    const-string v1, "charm_message"

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/charm/HtcCharmMessagePreference;->setKey(Ljava/lang/String;)V

    .line 65
    :cond_0
    const v1, 0x7f0c009d

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/charm/HtcCharmMessagePreference;->setTitle(I)V

    .line 66
    const v1, 0x7f0c009e

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/charm/HtcCharmMessagePreference;->setSummary(I)V

    .line 69
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/charm/HtcCharmMessagePreference;->setPersistent(Z)V

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/charm/HtcCharmMessagePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "charm_message_notification"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 76
    .local v0, value:Z
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/charm/HtcCharmMessagePreference;->setChecked(Z)V

    .line 77
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/charm/HtcCharmMessagePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "charm_message_notification"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 87
    .local v0, value:Z
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/charm/HtcCharmMessagePreference;->setChecked(Z)V

    .line 89
    invoke-super {p0, p1}, Lcom/htc/preference/HtcCheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 90
    return-void
.end method

.method protected onClick()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/charm/HtcCharmMessagePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "charm_message_received_notification"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 101
    .local v0, isReceived:Z
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/charm/HtcCharmMessagePreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_0

    if-nez v0, :cond_0

    .line 102
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/charm/HtcCharmMessagePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c00a3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c00a4

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c00a5

    new-instance v4, Lcom/android/settings/framework/preference/charm/HtcCharmMessagePreference$2;

    invoke-direct {v4, p0}, Lcom/android/settings/framework/preference/charm/HtcCharmMessagePreference$2;-><init>(Lcom/android/settings/framework/preference/charm/HtcCharmMessagePreference;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    new-instance v4, Lcom/android/settings/framework/preference/charm/HtcCharmMessagePreference$1;

    invoke-direct {v4, p0}, Lcom/android/settings/framework/preference/charm/HtcCharmMessagePreference$1;-><init>(Lcom/android/settings/framework/preference/charm/HtcCharmMessagePreference;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 129
    :goto_0
    return-void

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/charm/HtcCharmMessagePreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_1

    .line 125
    .local v1, value:Z
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/charm/HtcCharmMessagePreference;->setChecked(Z)V

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/charm/HtcCharmMessagePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "charm_message_notification"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    goto :goto_0

    .end local v1           #value:Z
    :cond_1
    move v1, v2

    .line 124
    goto :goto_1
.end method
