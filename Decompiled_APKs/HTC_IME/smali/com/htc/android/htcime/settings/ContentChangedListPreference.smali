.class public Lcom/htc/android/htcime/settings/ContentChangedListPreference;
.super Lcom/htc/preference/HtcListPreference;
.source "ContentChangedListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/htcime/settings/ContentChangedListPreference$SavedState;
    }
.end annotation


# instance fields
.field private mChangedEntries:[Ljava/lang/String;

.field private mChangedEntryValues:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/android/htcime/settings/ContentChangedListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method


# virtual methods
.method protected onPrepareDialogBuilder(Lcom/htc/widget/HtcAlertDialog$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/android/htcime/settings/ContentChangedListPreference;->mChangedEntries:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/settings/ContentChangedListPreference;->mChangedEntries:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/settings/ContentChangedListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/settings/ContentChangedListPreference;->mChangedEntryValues:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/android/htcime/settings/ContentChangedListPreference;->mChangedEntryValues:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/settings/ContentChangedListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 60
    :cond_1
    invoke-super {p0, p1}, Lcom/htc/preference/HtcListPreference;->onPrepareDialogBuilder(Lcom/htc/widget/HtcAlertDialog$Builder;)V

    .line 61
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 91
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/htc/android/htcime/settings/ContentChangedListPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 93
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/preference/HtcListPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 104
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 97
    check-cast v0, Lcom/htc/android/htcime/settings/ContentChangedListPreference$SavedState;

    .line 98
    .local v0, myState:Lcom/htc/android/htcime/settings/ContentChangedListPreference$SavedState;
    iget-object v1, v0, Lcom/htc/android/htcime/settings/ContentChangedListPreference$SavedState;->entry:[Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/android/htcime/settings/ContentChangedListPreference;->mChangedEntries:[Ljava/lang/String;

    .line 99
    iget-object v1, v0, Lcom/htc/android/htcime/settings/ContentChangedListPreference$SavedState;->entryValue:[Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/android/htcime/settings/ContentChangedListPreference;->mChangedEntryValues:[Ljava/lang/String;

    .line 100
    invoke-virtual {v0}, Lcom/htc/android/htcime/settings/ContentChangedListPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/htc/preference/HtcListPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    .prologue
    .line 65
    invoke-super {p0}, Lcom/htc/preference/HtcListPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v4

    .line 71
    .local v4, superState:Landroid/os/Parcelable;
    new-instance v3, Lcom/htc/android/htcime/settings/ContentChangedListPreference$SavedState;

    invoke-direct {v3, v4}, Lcom/htc/android/htcime/settings/ContentChangedListPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 73
    .local v3, myState:Lcom/htc/android/htcime/settings/ContentChangedListPreference$SavedState;
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/ContentChangedListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 74
    .local v0, content:[Ljava/lang/CharSequence;
    array-length v1, v0

    .line 75
    .local v1, count:I
    new-array v5, v1, [Ljava/lang/String;

    iput-object v5, v3, Lcom/htc/android/htcime/settings/ContentChangedListPreference$SavedState;->entry:[Ljava/lang/String;

    .line 76
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 77
    iget-object v5, v3, Lcom/htc/android/htcime/settings/ContentChangedListPreference$SavedState;->entry:[Ljava/lang/String;

    aget-object v6, v0, v2

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    .line 76
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/htcime/settings/ContentChangedListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 80
    array-length v1, v0

    .line 81
    new-array v5, v1, [Ljava/lang/String;

    iput-object v5, v3, Lcom/htc/android/htcime/settings/ContentChangedListPreference$SavedState;->entryValue:[Ljava/lang/String;

    .line 82
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 83
    iget-object v5, v3, Lcom/htc/android/htcime/settings/ContentChangedListPreference$SavedState;->entryValue:[Ljava/lang/String;

    aget-object v6, v0, v2

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    .line 82
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 86
    :cond_1
    return-object v3
.end method
