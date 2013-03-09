.class public Lcom/android/settings/DefaultRingtonePreference;
.super Lcom/htc/preference/HtcRingtonePreference;
.source "DefaultRingtonePreference.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "DefaultRingtonePreference"


# instance fields
.field protected mDlgTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcRingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    sget-object v1, Lcom/android/internal/R$styleable;->DialogPreference:[I

    const v2, 0x1010093

    invoke-virtual {p1, p2, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 40
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DefaultRingtonePreference;->mDlgTitle:Ljava/lang/String;

    .line 41
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 42
    return-void
.end method


# virtual methods
.method public getDialogTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/DefaultRingtonePreference;->mDlgTitle:Ljava/lang/String;

    return-object v0
.end method

.method protected onPrepareRingtonePickerIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "ringtonePickerIntent"

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/htc/preference/HtcRingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    .line 68
    const-string v0, ""

    iget-object v1, p0, Lcom/android/settings/DefaultRingtonePreference;->mDlgTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getRingtoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c09a5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DefaultRingtonePreference;->mDlgTitle:Ljava/lang/String;

    .line 73
    :cond_0
    const-string v0, ""

    iget-object v1, p0, Lcom/android/settings/DefaultRingtonePreference;->mDlgTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 75
    const-string v0, "android.intent.extra.ringtone.TITLE"

    iget-object v1, p0, Lcom/android/settings/DefaultRingtonePreference;->mDlgTitle:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    :cond_1
    return-void
.end method

.method protected onRestoreRingtone()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getRingtoneType()I

    move-result v1

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected onSaveRingtone(Landroid/net/Uri;)V
    .locals 2
    .parameter "ringtoneUri"

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getRingtoneType()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 103
    return-void
.end method

.method public setDialogTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "dialogTitle"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/settings/DefaultRingtonePreference;->mDlgTitle:Ljava/lang/String;

    .line 62
    return-void
.end method
