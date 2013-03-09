.class public abstract Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference;
.super Lcom/htc/preference/HtcCheckBoxPreference;
.source "HtcConfirmCheckBoxPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$SavedState;,
        Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;
    }
.end annotation


# instance fields
.field private mConfirmDialog:Landroid/app/Dialog;

.field private mConfirmStatus:Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;

.field private mOkClicked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference;->mOkClicked:Z

    .line 49
    sget-object v0, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;->CHECKED:Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference;->mConfirmStatus:Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference;->initialize()V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference;->mOkClicked:Z

    .line 49
    sget-object v0, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;->CHECKED:Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference;->mConfirmStatus:Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference;->initialize()V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference;->mOkClicked:Z

    .line 49
    sget-object v0, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;->CHECKED:Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference;->mConfirmStatus:Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference;->initialize()V

    .line 67
    return-void
.end method


# virtual methods
.method protected abstract createConfirmDialog()Landroid/app/Dialog;
.end method

.method public getConfirmDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference;->mConfirmDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public getConfirmStatus()Z
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference;->mConfirmStatus:Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;

    invoke-virtual {v0}, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;->getConfirmStatus()Z

    move-result v0

    return v0
.end method

.method protected abstract initialize()V
.end method

.method protected onClick()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 132
    invoke-super {p0}, Lcom/htc/preference/HtcCheckBoxPreference;->onClick()V

    .line 134
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference;->mConfirmStatus:Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;

    sget-object v1, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;->CHECKED:Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;

    if-ne v0, v1, :cond_1

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference;->showConfirmDialog(Z)V

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference;->showConfirmDialog(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v0, 0x1

    .line 146
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 147
    iput-boolean v0, p0, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference;->mOkClicked:Z

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference;->onConfirmed()V

    .line 153
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference;->mConfirmStatus:Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;

    invoke-virtual {v1}, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;->getConfirmStatus()Z

    move-result v1

    if-nez v1, :cond_1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public abstract onConfirmed()V
.end method

.method public abstract onDenied()V
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference;->mOkClicked:Z

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference;->mConfirmStatus:Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;

    invoke-virtual {v0}, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;->getConfirmStatus()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference;->setChecked(Z)V

    .line 159
    :cond_0
    return-void

    .line 157
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 200
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 202
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/preference/HtcCheckBoxPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 212
    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v0, p1

    .line 206
    check-cast v0, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$SavedState;

    .line 207
    .local v0, savedState:Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$SavedState;
    invoke-virtual {v0}, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 209
    iget-boolean v1, v0, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$SavedState;->isShowing:Z

    if-eqz v1, :cond_1

    .line 210
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference;->showConfirmDialog(Z)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 178
    invoke-super {p0}, Lcom/htc/preference/HtcCheckBoxPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 181
    .local v0, parcelable:Landroid/os/Parcelable;
    new-instance v1, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 182
    .local v1, savedState:Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$SavedState;
    iget-object v2, p0, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference;->mConfirmDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference;->mConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 186
    iget-object v2, p0, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference;->mConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 187
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference;->mConfirmDialog:Landroid/app/Dialog;

    .line 189
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$SavedState;->isShowing:Z

    .line 193
    :goto_0
    return-object v1

    .line 191
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$SavedState;->isShowing:Z

    goto :goto_0
.end method

.method public setConfirmStatus(Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;)V
    .locals 0
    .parameter "confirmStatus"

    .prologue
    .line 81
    if-eqz p1, :cond_0

    .line 82
    iput-object p1, p0, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference;->mConfirmStatus:Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;

    .line 84
    :cond_0
    return-void
.end method

.method protected showConfirmDialog(Z)V
    .locals 1
    .parameter "forceStatus"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference;->mConfirmDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference;->createConfirmDialog()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference;->mConfirmDialog:Landroid/app/Dialog;

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference;->mConfirmDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 103
    if-eqz p1, :cond_1

    .line 104
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference;->mConfirmStatus:Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;

    invoke-virtual {v0}, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;->getConfirmStatus()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference;->setChecked(Z)V

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference;->mConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference;->mOkClicked:Z

    .line 110
    :cond_2
    return-void
.end method
