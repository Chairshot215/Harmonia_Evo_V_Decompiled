.class public Lcom/htc/preference/HtcMultiSelectListPreference;
.super Lcom/htc/preference/HtcDialogPreference;
.source "HtcMultiSelectListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/preference/HtcMultiSelectListPreference$SavedState;
    }
.end annotation


# instance fields
.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mNewValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferenceChanged:Z

.field private mValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/preference/HtcMultiSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/htc/preference/HtcMultiSelectListPreference;->mValues:Ljava/util/Set;

    .line 46
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/htc/preference/HtcMultiSelectListPreference;->mNewValues:Ljava/util/Set;

    .line 52
    sget-object v1, Lcom/android/internal/R$styleable;->MultiSelectListPreference:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 54
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/preference/HtcMultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 55
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/preference/HtcMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 56
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    return-void
.end method

.method static synthetic access$076(Lcom/htc/preference/HtcMultiSelectListPreference;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/htc/preference/HtcMultiSelectListPreference;->mPreferenceChanged:Z

    or-int/2addr v0, p1

    int-to-byte v0, v0

    iput-boolean v0, p0, Lcom/htc/preference/HtcMultiSelectListPreference;->mPreferenceChanged:Z

    return v0
.end method

.method static synthetic access$100(Lcom/htc/preference/HtcMultiSelectListPreference;)[Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/preference/HtcMultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/preference/HtcMultiSelectListPreference;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/preference/HtcMultiSelectListPreference;->mNewValues:Ljava/util/Set;

    return-object v0
.end method

.method private getSelectedItems()[Z
    .locals 6

    .prologue
    .line 184
    iget-object v0, p0, Lcom/htc/preference/HtcMultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 185
    .local v0, entries:[Ljava/lang/CharSequence;
    array-length v1, v0

    .line 186
    .local v1, entryCount:I
    iget-object v4, p0, Lcom/htc/preference/HtcMultiSelectListPreference;->mValues:Ljava/util/Set;

    .line 187
    .local v4, values:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-array v3, v1, [Z

    .line 189
    .local v3, result:[Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 190
    aget-object v5, v0, v2

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    aput-boolean v5, v3, v2

    .line 189
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 193
    :cond_0
    return-object v3
.end method


# virtual methods
.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 2
    .parameter "value"

    .prologue
    .line 148
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/htc/preference/HtcMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 149
    iget-object v1, p0, Lcom/htc/preference/HtcMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 150
    iget-object v1, p0, Lcom/htc/preference/HtcMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    .end local v0           #i:I
    :goto_1
    return v0

    .line 149
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 155
    .end local v0           #i:I
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getEntries()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/preference/HtcMultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEntryValues()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/htc/preference/HtcMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getValues()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/htc/preference/HtcMultiSelectListPreference;->mValues:Ljava/util/Set;

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 2
    .parameter "positiveResult"

    .prologue
    .line 198
    invoke-super {p0, p1}, Lcom/htc/preference/HtcDialogPreference;->onDialogClosed(Z)V

    .line 200
    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/htc/preference/HtcMultiSelectListPreference;->mPreferenceChanged:Z

    if-eqz v1, :cond_0

    .line 201
    iget-object v0, p0, Lcom/htc/preference/HtcMultiSelectListPreference;->mNewValues:Ljava/util/Set;

    .line 202
    .local v0, values:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcMultiSelectListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcMultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 206
    .end local v0           #values:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/preference/HtcMultiSelectListPreference;->mPreferenceChanged:Z

    .line 207
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 5
    .parameter "a"
    .parameter "index"

    .prologue
    .line 211
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 212
    .local v0, defaultValues:[Ljava/lang/CharSequence;
    array-length v3, v0

    .line 213
    .local v3, valueCount:I
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 215
    .local v2, result:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 216
    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 215
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 219
    :cond_0
    return-object v2
.end method

.method protected onPrepareDialogBuilder(Lcom/htc/widget/HtcAlertDialog$Builder;)V
    .locals 3
    .parameter "builder"

    .prologue
    .line 160
    invoke-super {p0, p1}, Lcom/htc/preference/HtcDialogPreference;->onPrepareDialogBuilder(Lcom/htc/widget/HtcAlertDialog$Builder;)V

    .line 162
    iget-object v1, p0, Lcom/htc/preference/HtcMultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/preference/HtcMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-nez v1, :cond_1

    .line 163
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "HtcMultiSelectListPreference requires an entries array and an entryValues array."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 168
    :cond_1
    invoke-direct {p0}, Lcom/htc/preference/HtcMultiSelectListPreference;->getSelectedItems()[Z

    move-result-object v0

    .line 169
    .local v0, checkedItems:[Z
    iget-object v1, p0, Lcom/htc/preference/HtcMultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    new-instance v2, Lcom/htc/preference/HtcMultiSelectListPreference$1;

    invoke-direct {v2, p0}, Lcom/htc/preference/HtcMultiSelectListPreference$1;-><init>(Lcom/htc/preference/HtcMultiSelectListPreference;)V

    invoke-virtual {p1, v1, v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 179
    iget-object v1, p0, Lcom/htc/preference/HtcMultiSelectListPreference;->mNewValues:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 180
    iget-object v1, p0, Lcom/htc/preference/HtcMultiSelectListPreference;->mNewValues:Ljava/util/Set;

    iget-object v2, p0, Lcom/htc/preference/HtcMultiSelectListPreference;->mValues:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 181
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 229
    invoke-super {p0}, Lcom/htc/preference/HtcDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 230
    .local v1, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/htc/preference/HtcMultiSelectListPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 237
    .end local v1           #superState:Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 235
    .restart local v1       #superState:Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lcom/htc/preference/HtcMultiSelectListPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/htc/preference/HtcMultiSelectListPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 236
    .local v0, myState:Lcom/htc/preference/HtcMultiSelectListPreference$SavedState;
    invoke-virtual {p0}, Lcom/htc/preference/HtcMultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/preference/HtcMultiSelectListPreference$SavedState;->values:Ljava/util/Set;

    move-object v1, v0

    .line 237
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .parameter "restoreValue"
    .parameter "defaultValue"

    .prologue
    .line 224
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/preference/HtcMultiSelectListPreference;->mValues:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcMultiSelectListPreference;->getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    .end local p2
    :goto_0
    invoke-virtual {p0, p2}, Lcom/htc/preference/HtcMultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 225
    return-void

    .line 224
    .restart local p2
    :cond_0
    check-cast p2, Ljava/util/Set;

    goto :goto_0
.end method

.method public setEntries(I)V
    .locals 1
    .parameter "entriesResId"

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/htc/preference/HtcMultiSelectListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcMultiSelectListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 83
    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "entries"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/htc/preference/HtcMultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 75
    return-void
.end method

.method public setEntryValues(I)V
    .locals 1
    .parameter "entryValuesResId"

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/htc/preference/HtcMultiSelectListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcMultiSelectListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 111
    return-void
.end method

.method public setEntryValues([Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "entryValues"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/htc/preference/HtcMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 103
    return-void
.end method

.method public setValues(Ljava/util/Set;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, values:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/htc/preference/HtcMultiSelectListPreference;->mValues:Ljava/util/Set;

    .line 131
    invoke-virtual {p0, p1}, Lcom/htc/preference/HtcMultiSelectListPreference;->persistStringSet(Ljava/util/Set;)Z

    .line 132
    return-void
.end method
