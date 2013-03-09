.class public Lcom/google/android/gm/preference/FancySummaryListPreference;
.super Landroid/preference/ListPreference;
.source "FancySummaryListPreference.java"


# instance fields
.field private mEntrySummaries:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gm/preference/FancySummaryListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    sget-object v1, Lcom/google/android/gm/R$styleable;->FancySummaryListPreference:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 30
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/preference/FancySummaryListPreference;->mEntrySummaries:[Ljava/lang/CharSequence;

    .line 31
    return-void
.end method

.method private getSummaryForValue(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "value"

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/google/android/gm/preference/FancySummaryListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 50
    .local v0, i:I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gm/preference/FancySummaryListPreference;->mEntrySummaries:[Ljava/lang/CharSequence;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gm/preference/FancySummaryListPreference;->mEntrySummaries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public setValue(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 45
    invoke-direct {p0, p1}, Lcom/google/android/gm/preference/FancySummaryListPreference;->getSummaryForValue(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/preference/FancySummaryListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 46
    return-void
.end method
