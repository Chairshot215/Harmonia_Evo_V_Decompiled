.class public final Lcom/android/settings/framework/preference/application/HtcAutomaticStartupPreference;
.super Lcom/htc/preference/HtcCheckBoxPreference;
.source "HtcAutomaticStartupPreference.java"


# static fields
.field private static final DEFAULT_VALUE:Z = true

.field private static final INTENT_ACTION:Ljava/lang/String; = "Settings.System.HTC_APPLICATION_AUTOMATIC_STARTUP"

.field public static final KEY:Ljava/lang/String; = "AUTOMATIC_STARTUP"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/application/HtcAutomaticStartupPreference;->initialize(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/application/HtcAutomaticStartupPreference;->initialize(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/application/HtcAutomaticStartupPreference;->initialize(Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/application/HtcAutomaticStartupPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 71
    const-string v1, "AUTOMATIC_STARTUP"

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/application/HtcAutomaticStartupPreference;->setKey(Ljava/lang/String;)V

    .line 73
    :cond_0
    const v1, 0x7f0c00eb

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/application/HtcAutomaticStartupPreference;->setTitle(I)V

    .line 74
    const v1, 0x7f0c00ec

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/application/HtcAutomaticStartupPreference;->setSummary(I)V

    .line 77
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/application/HtcAutomaticStartupPreference;->setPersistent(Z)V

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/application/HtcAutomaticStartupPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "htc_application_automatic_startup"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 84
    .local v0, value:Z
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/application/HtcAutomaticStartupPreference;->setChecked(Z)V

    .line 85
    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 4

    .prologue
    .line 89
    invoke-super {p0}, Lcom/htc/preference/HtcCheckBoxPreference;->onClick()V

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/application/HtcAutomaticStartupPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 93
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "htc_application_automatic_startup"

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/application/HtcAutomaticStartupPreference;->isChecked()Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 97
    new-instance v1, Landroid/content/Intent;

    const-string v2, "Settings.System.HTC_APPLICATION_AUTOMATIC_STARTUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 98
    return-void
.end method
