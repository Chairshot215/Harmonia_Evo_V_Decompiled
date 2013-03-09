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

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/preference/HtcMultiSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/htc/preference/HtcMultiSelectListPreference;->mValues:Ljava/util/Set;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/htc/preference/HtcMultiSelectListPreference;->mNewValues:Ljava/util/Set;

    sget-object v1, Lcom/android/internal/R$styleable;->MultiSelectListPreference:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/preference/HtcMultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/preference/HtcMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$076(Lcom/htc/preference/HtcMultiSelectListPreference;I)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/preference/HtcMultiSelectListPreference;->mPreferenceChanged:Z

    or-int/2addr v0, p1

    int-to-byte v0, v0

    iput-boolean v0, p0, Lcom/htc/preference/HtcMultiSelectListPreference;->mPreferenceChanged:Z

    return v0
.end method

.method static synthetic access$100(Lcom/htc/preference/HtcMultiSelectListPreference;)[Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/htc/preference/HtcMultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/preference/HtcMultiSelectListPreference;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/htc/preference/HtcMultiSelectListPreference;->mNewValues:Ljava/util/Set;

    return-object v0
.end method

.method private getSelectedItems()[Z
    .locals 6

    iget-object v0, p0, Lcom/htc/preference/HtcMultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    array-length v1, v0

    iget-object v4, p0, Lcom/htc/preference/HtcMultiSelectListPreference;->mValues:Ljava/util/Set;

    new-array v3, v1, [Z

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v5, v0, v2

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    aput-boolean v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method


# virtual methods
.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 2

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/htc/preference/HtcMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/preference/HtcMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/htc/preference/HtcMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getEntries()[Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/htc/preference/HtcMultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEntryValues()[Ljava/lang/CharSequence;
    .locals 1

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

    iget-object v0, p0, Lcom/htc/preference/HtcMultiSelectListPreference;->mValues:Ljava/util/Set;

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/htc/preference/HtcDialogPreference;->onDialogClosed(Z)V

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/htc/preference/HtcMultiSelectListPreference;->mPreferenceChanged:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/htc/preference/HtcMultiSelectListPreference;->mNewValues:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcMultiSelectListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcMultiSelectListPreference;->setValues(Ljava/util/Set;)V

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/preference/HtcMultiSelectListPreference;->mPreferenceChanged:Z

    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 5

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v3, v0

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method protected onPrepareDialogBuilder(Lcom/htc/widget/HtcAlertDialog$Builder;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/htc/preference/HtcDialogPreference;->onPrepareDialogBuilder(Lcom/htc/widget/HtcAlertDialog$Builder;)V

    iget-object v1, p0, Lcom/htc/preference/HtcMultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/preference/HtcMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "HtcMultiSelectListPreference requires an entries array and an entryValues array."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-direct {p0}, Lcom/htc/preference/HtcMultiSelectListPreference;->getSelectedItems()[Z

    move-result-object v0

    iget-object v1, p0, Lcom/htc/preference/HtcMultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    new-instance v2, Lcom/htc/preference/HtcMultiSelectListPreference$1;

    invoke-direct {v2, p0}, Lcom/htc/preference/HtcMultiSelectListPreference$1;-><init>(Lcom/htc/preference/HtcMultiSelectListPreference;)V

    invoke-virtual {p1, v1, v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/htc/preference/HtcMultiSelectListPreference;->mNewValues:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    iget-object v1, p0, Lcom/htc/preference/HtcMultiSelectListPreference;->mNewValues:Ljava/util/Set;

    iget-object v2, p0, Lcom/htc/preference/HtcMultiSelectListPreference;->mValues:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Lcom/htc/preference/HtcDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/preference/HtcMultiSelectListPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v1

    :cond_0
    new-instance v0, Lcom/htc/preference/HtcMultiSelectListPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/htc/preference/HtcMultiSelectListPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/htc/preference/HtcMultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/preference/HtcMultiSelectListPreference$SavedState;->values:Ljava/util/Set;

    move-object v1, v0

    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/preference/HtcMultiSelectListPreference;->mValues:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcMultiSelectListPreference;->getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    :goto_0
    invoke-virtual {p0, p2}, Lcom/htc/preference/HtcMultiSelectListPreference;->setValues(Ljava/util/Set;)V

    return-void

    :cond_0
    check-cast p2, Ljava/util/Set;

    goto :goto_0
.end method

.method public setEntries(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/preference/HtcMultiSelectListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcMultiSelectListPreference;->setEntries([Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/preference/HtcMultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    return-void
.end method

.method public setEntryValues(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/preference/HtcMultiSelectListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcMultiSelectListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEntryValues([Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/preference/HtcMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-void
.end method

.method public setValues(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/htc/preference/HtcMultiSelectListPreference;->mValues:Ljava/util/Set;

    invoke-virtual {p0, p1}, Lcom/htc/preference/HtcMultiSelectListPreference;->persistStringSet(Ljava/util/Set;)Z

    return-void
.end method
