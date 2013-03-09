.class public Lcom/htc/preference/HtcListPreference;
.super Lcom/htc/preference/HtcDialogPreference;
.source "HtcListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/preference/HtcListPreference$SavedState;
    }
.end annotation


# instance fields
.field private mClickedDialogEntryIndex:I

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mSummary:Ljava/lang/String;

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/preference/HtcListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    sget-object v1, Lcom/android/internal/R$styleable;->ListPreference:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 52
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/preference/HtcListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 53
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/preference/HtcListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 54
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    sget-object v1, Lcom/android/internal/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 61
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/preference/HtcListPreference;->mSummary:Ljava/lang/String;

    .line 62
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    const v1, 0x20900ec

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcListPreference;->setWidgetLayoutResource(I)V

    .line 65
    return-void
.end method

.method static synthetic access$002(Lcom/htc/preference/HtcListPreference;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput p1, p0, Lcom/htc/preference/HtcListPreference;->mClickedDialogEntryIndex:I

    return p1
.end method

.method private getValueIndex()I
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/htc/preference/HtcListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 2
    .parameter "value"

    .prologue
    .line 217
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/htc/preference/HtcListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 218
    iget-object v1, p0, Lcom/htc/preference/HtcListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 219
    iget-object v1, p0, Lcom/htc/preference/HtcListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    .end local v0           #i:I
    :goto_1
    return v0

    .line 218
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 224
    .end local v0           #i:I
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getEntries()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/preference/HtcListPreference;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEntry()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/htc/preference/HtcListPreference;->getValueIndex()I

    move-result v0

    .line 207
    .local v0, index:I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/htc/preference/HtcListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/preference/HtcListPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEntryValues()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/htc/preference/HtcListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    .line 153
    .local v0, entry:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/htc/preference/HtcListPreference;->mSummary:Ljava/lang/String;

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 154
    :cond_0
    invoke-super {p0}, Lcom/htc/preference/HtcDialogPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    .line 156
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/htc/preference/HtcListPreference;->mSummary:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/htc/preference/HtcListPreference;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 3
    .parameter "positiveResult"

    .prologue
    .line 265
    invoke-super {p0, p1}, Lcom/htc/preference/HtcDialogPreference;->onDialogClosed(Z)V

    .line 267
    if-eqz p1, :cond_0

    iget v1, p0, Lcom/htc/preference/HtcListPreference;->mClickedDialogEntryIndex:I

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/htc/preference/HtcListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 268
    iget-object v1, p0, Lcom/htc/preference/HtcListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    iget v2, p0, Lcom/htc/preference/HtcListPreference;->mClickedDialogEntryIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, value:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 273
    .end local v0           #value:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .parameter "a"
    .parameter "index"

    .prologue
    .line 277
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onPrepareDialogBuilder(Lcom/htc/widget/HtcAlertDialog$Builder;)V
    .locals 4
    .parameter "builder"

    .prologue
    const/4 v3, 0x0

    .line 233
    invoke-super {p0, p1}, Lcom/htc/preference/HtcDialogPreference;->onPrepareDialogBuilder(Lcom/htc/widget/HtcAlertDialog$Builder;)V

    .line 235
    iget-object v0, p0, Lcom/htc/preference/HtcListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/preference/HtcListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    .line 236
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ListPreference requires an entries array and an entryValues array."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_1
    invoke-direct {p0}, Lcom/htc/preference/HtcListPreference;->getValueIndex()I

    move-result v0

    iput v0, p0, Lcom/htc/preference/HtcListPreference;->mClickedDialogEntryIndex:I

    .line 241
    iget-object v0, p0, Lcom/htc/preference/HtcListPreference;->mEntries:[Ljava/lang/CharSequence;

    iget v1, p0, Lcom/htc/preference/HtcListPreference;->mClickedDialogEntryIndex:I

    new-instance v2, Lcom/htc/preference/HtcListPreference$1;

    invoke-direct {v2, p0}, Lcom/htc/preference/HtcListPreference$1;-><init>(Lcom/htc/preference/HtcListPreference;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 260
    invoke-virtual {p1, v3, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 261
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 300
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/htc/preference/HtcListPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 302
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/preference/HtcDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 309
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 306
    check-cast v0, Lcom/htc/preference/HtcListPreference$SavedState;

    .line 307
    .local v0, myState:Lcom/htc/preference/HtcListPreference$SavedState;
    invoke-virtual {v0}, Lcom/htc/preference/HtcListPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/htc/preference/HtcDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 308
    iget-object v1, v0, Lcom/htc/preference/HtcListPreference$SavedState;->value:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 287
    invoke-super {p0}, Lcom/htc/preference/HtcDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 288
    .local v1, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/htc/preference/HtcListPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 295
    .end local v1           #superState:Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 293
    .restart local v1       #superState:Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lcom/htc/preference/HtcListPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/htc/preference/HtcListPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 294
    .local v0, myState:Lcom/htc/preference/HtcListPreference$SavedState;
    invoke-virtual {p0}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/preference/HtcListPreference$SavedState;->value:Ljava/lang/String;

    move-object v1, v0

    .line 295
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .parameter "restoreValue"
    .parameter "defaultValue"

    .prologue
    .line 282
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/preference/HtcListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcListPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .end local p2
    :goto_0
    invoke-virtual {p0, p2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 283
    return-void

    .line 282
    .restart local p2
    :cond_0
    check-cast p2, Ljava/lang/String;

    goto :goto_0
.end method

.method public setEntries(I)V
    .locals 1
    .parameter "entriesResId"

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/htc/preference/HtcListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 91
    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "entries"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/htc/preference/HtcListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 83
    return-void
.end method

.method public setEntryValues(I)V
    .locals 1
    .parameter "entryValuesResId"

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/htc/preference/HtcListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 119
    return-void
.end method

.method public setEntryValues([Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "entryValues"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/htc/preference/HtcListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 111
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "summary"

    .prologue
    .line 171
    invoke-super {p0, p1}, Lcom/htc/preference/HtcDialogPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 172
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/htc/preference/HtcListPreference;->mSummary:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/preference/HtcListPreference;->mSummary:Ljava/lang/String;

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/preference/HtcListPreference;->mSummary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/preference/HtcListPreference;->mSummary:Ljava/lang/String;

    goto :goto_0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/htc/preference/HtcListPreference;->mValue:Ljava/lang/String;

    .line 139
    invoke-virtual {p0, p1}, Lcom/htc/preference/HtcListPreference;->persistString(Ljava/lang/String;)Z

    .line 140
    return-void
.end method

.method public setValueIndex(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/htc/preference/HtcListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/htc/preference/HtcListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 188
    :cond_0
    return-void
.end method
