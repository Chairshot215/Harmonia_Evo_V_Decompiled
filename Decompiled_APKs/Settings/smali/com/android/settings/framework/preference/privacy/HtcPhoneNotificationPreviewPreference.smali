.class public Lcom/android/settings/framework/preference/privacy/HtcPhoneNotificationPreviewPreference;
.super Lcom/android/settings/framework/preference/HtcAbstractCheckboxPreference;
.source "HtcPhoneNotificationPreviewPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbstractCheckboxPreference;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbstractCheckboxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbstractCheckboxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method


# virtual methods
.method protected getCustomDatabaseDefaultValue()Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method protected getCustomDatabaseKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const-string v0, "htc_phone_notification_preview"

    return-object v0
.end method

.method protected getCustomDatabaseTable()Lcom/android/settings/framework/database/HtcDatabaseTable;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/settings/framework/database/HtcDatabaseTable;->SECURE:Lcom/android/settings/framework/database/HtcDatabaseTable;

    return-object v0
.end method

.method protected getCustomSummary()Ljava/lang/String;
    .locals 2

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/privacy/HtcPhoneNotificationPreviewPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c00c0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/privacy/HtcPhoneNotificationPreviewPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c00bf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
