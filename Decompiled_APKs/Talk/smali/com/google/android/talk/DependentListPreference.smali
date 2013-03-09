.class public Lcom/google/android/talk/DependentListPreference;
.super Landroid/preference/ListPreference;
.source "DependentListPreference.java"


# instance fields
.field private mDisabledState:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method


# virtual methods
.method public setDisabledEntry(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/google/android/talk/DependentListPreference;->mDisabledState:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/google/android/talk/DependentListPreference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/talk/DependentListPreference;->notifyDependencyChange(Z)V

    .line 61
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 3

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/google/android/talk/DependentListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/DependentListPreference;->mDisabledState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 48
    .local v0, shouldDisable:Z
    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/preference/ListPreference;->shouldDisableDependents()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
