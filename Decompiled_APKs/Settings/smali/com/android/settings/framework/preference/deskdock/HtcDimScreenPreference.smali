.class public final Lcom/android/settings/framework/preference/deskdock/HtcDimScreenPreference;
.super Lcom/htc/preference/HtcListPreference;
.source "HtcDimScreenPreference.java"


# static fields
.field private static final DEFAULT_DESKDOCK_DIM_SCREEN_VALUE:I = 0xa

.field private static final DESKDOCK_DIM_SCREEN:Ljava/lang/String; = "deskdock_dim_screen"

.field public static final KEY:Ljava/lang/String; = "DIM_SCREEN"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcListPreference;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/deskdock/HtcDimScreenPreference;->initialize(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/deskdock/HtcDimScreenPreference;->initialize(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const v3, 0x7f0c00e3

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/deskdock/HtcDimScreenPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 53
    const-string v2, "DIM_SCREEN"

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/deskdock/HtcDimScreenPreference;->setKey(Ljava/lang/String;)V

    .line 55
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/deskdock/HtcDimScreenPreference;->setTitle(I)V

    .line 56
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/deskdock/HtcDimScreenPreference;->setDialogTitle(I)V

    .line 58
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/deskdock/HtcDimScreenPreference;->setPersistent(Z)V

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/deskdock/HtcDimScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 61
    .local v0, res:Landroid/content/res/Resources;
    const v2, 0x7f070070

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/deskdock/HtcDimScreenPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 62
    const v2, 0x7f070071

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/deskdock/HtcDimScreenPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/deskdock/HtcDimScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "deskdock_dim_screen"

    const/16 v4, 0xa

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 67
    .local v1, value:I
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/deskdock/HtcDimScreenPreference;->setValue(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/deskdock/HtcDimScreenPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/deskdock/HtcDimScreenPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 69
    return-void
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 3
    .parameter "positiveResult"

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/htc/preference/HtcListPreference;->onDialogClosed(Z)V

    .line 74
    if-eqz p1, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/deskdock/HtcDimScreenPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "deskdock_dim_screen"

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/deskdock/HtcDimScreenPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/deskdock/HtcDimScreenPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/deskdock/HtcDimScreenPreference;->setValue(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/deskdock/HtcDimScreenPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/deskdock/HtcDimScreenPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 80
    :cond_0
    return-void
.end method
