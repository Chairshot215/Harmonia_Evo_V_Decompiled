.class public Lcom/android/phone/LanguageListPreference;
.super Lcom/htc/preference/HtcListPreference;
.source "LanguageListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/LanguageListPreference$OnDialogClosedListener;
    }
.end annotation


# instance fields
.field mOnDialogClosedListener:Lcom/android/phone/LanguageListPreference$OnDialogClosedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcListPreference;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method


# virtual methods
.method public onDialogClosed(Z)V
    .locals 1
    .parameter "positiveResult"

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/htc/preference/HtcListPreference;->onDialogClosed(Z)V

    .line 42
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/LanguageListPreference;->mOnDialogClosedListener:Lcom/android/phone/LanguageListPreference$OnDialogClosedListener;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/android/phone/LanguageListPreference;->mOnDialogClosedListener:Lcom/android/phone/LanguageListPreference$OnDialogClosedListener;

    invoke-interface {v0}, Lcom/android/phone/LanguageListPreference$OnDialogClosedListener;->onDialogClosedCallback()V

    .line 44
    :cond_0
    return-void
.end method

.method public setOnDialogClosedListener(Lcom/android/phone/LanguageListPreference$OnDialogClosedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/phone/LanguageListPreference;->mOnDialogClosedListener:Lcom/android/phone/LanguageListPreference$OnDialogClosedListener;

    .line 48
    return-void
.end method
