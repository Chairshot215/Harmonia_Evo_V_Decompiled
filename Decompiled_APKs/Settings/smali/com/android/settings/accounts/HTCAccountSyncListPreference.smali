.class public Lcom/android/settings/accounts/HTCAccountSyncListPreference;
.super Lcom/android/settings/accounts/OptionListPreference;
.source "HTCAccountSyncListPreference.java"


# instance fields
.field private mBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;

.field private mClickedDialogEntryIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/android/settings/accounts/OptionListPreference;-><init>(Landroid/content/Context;)V

    .line 18
    const v0, 0x7f0400b0

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/HTCAccountSyncListPreference;->setLayoutResource(I)V

    .line 19
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accounts/HTCAccountSyncListPreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget v0, p0, Lcom/android/settings/accounts/HTCAccountSyncListPreference;->mClickedDialogEntryIndex:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/accounts/HTCAccountSyncListPreference;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput p1, p0, Lcom/android/settings/accounts/HTCAccountSyncListPreference;->mClickedDialogEntryIndex:I

    return p1
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 3
    .parameter "positiveResult"

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/android/settings/accounts/OptionListPreference;->onDialogClosed(Z)V

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/accounts/HTCAccountSyncListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 89
    .local v0, mEntryValues:[Ljava/lang/CharSequence;
    if-eqz p1, :cond_0

    iget v2, p0, Lcom/android/settings/accounts/HTCAccountSyncListPreference;->mClickedDialogEntryIndex:I

    if-ltz v2, :cond_0

    if-eqz v0, :cond_0

    .line 90
    iget v2, p0, Lcom/android/settings/accounts/HTCAccountSyncListPreference;->mClickedDialogEntryIndex:I

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, value:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/settings/accounts/HTCAccountSyncListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    invoke-virtual {p0, v1}, Lcom/android/settings/accounts/HTCAccountSyncListPreference;->setValue(Ljava/lang/String;)V

    .line 95
    .end local v1           #value:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected onPrepareHtcDialogBuilder(Lcom/htc/widget/HtcAlertDialog$Builder;)V
    .locals 4
    .parameter "builder"

    .prologue
    const/4 v3, 0x0

    .line 22
    invoke-virtual {p0}, Lcom/android/settings/accounts/HTCAccountSyncListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accounts/HTCAccountSyncListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_1

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ListPreference requires an entries array and an entryValues array."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/accounts/HTCAccountSyncListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/HTCAccountSyncListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/accounts/HTCAccountSyncListPreference;->mClickedDialogEntryIndex:I

    .line 28
    invoke-virtual {p0}, Lcom/android/settings/accounts/HTCAccountSyncListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/accounts/HTCAccountSyncListPreference;->mClickedDialogEntryIndex:I

    new-instance v2, Lcom/android/settings/accounts/HTCAccountSyncListPreference$1;

    invoke-direct {v2, p0}, Lcom/android/settings/accounts/HTCAccountSyncListPreference$1;-><init>(Lcom/android/settings/accounts/HTCAccountSyncListPreference;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 49
    invoke-virtual {p1, v3, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 50
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 5
    .parameter "state"

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/android/settings/accounts/HTCAccountSyncListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 56
    .local v1, context:Landroid/content/Context;
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/accounts/HTCAccountSyncListPreference;->getDialogTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/accounts/HTCAccountSyncListPreference;->getDialogIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/accounts/HTCAccountSyncListPreference;->getPositiveButtonText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/accounts/HTCAccountSyncListPreference;->getNegativeButtonText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/accounts/HTCAccountSyncListPreference;->mBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/accounts/HTCAccountSyncListPreference;->onCreateDialogView()Landroid/view/View;

    move-result-object v0

    .line 63
    .local v0, contentView:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 64
    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/HTCAccountSyncListPreference;->onBindDialogView(Landroid/view/View;)V

    .line 65
    iget-object v3, p0, Lcom/android/settings/accounts/HTCAccountSyncListPreference;->mBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {v3, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 70
    :goto_0
    iget-object v3, p0, Lcom/android/settings/accounts/HTCAccountSyncListPreference;->mBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0, v3}, Lcom/android/settings/accounts/HTCAccountSyncListPreference;->onPrepareHtcDialogBuilder(Lcom/htc/widget/HtcAlertDialog$Builder;)V

    .line 76
    iget-object v3, p0, Lcom/android/settings/accounts/HTCAccountSyncListPreference;->mBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    .line 77
    .local v2, dialog:Lcom/htc/widget/HtcAlertDialog;
    if-eqz p1, :cond_0

    .line 78
    invoke-virtual {v2, p1}, Lcom/htc/widget/HtcAlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 81
    :cond_0
    invoke-virtual {v2, p0}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 82
    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 83
    return-void

    .line 67
    .end local v2           #dialog:Lcom/htc/widget/HtcAlertDialog;
    :cond_1
    iget-object v3, p0, Lcom/android/settings/accounts/HTCAccountSyncListPreference;->mBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accounts/HTCAccountSyncListPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto :goto_0
.end method
