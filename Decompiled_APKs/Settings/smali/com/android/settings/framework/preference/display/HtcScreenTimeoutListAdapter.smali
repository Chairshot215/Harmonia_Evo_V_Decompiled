.class public Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListAdapter;
.super Landroid/widget/BaseAdapter;
.source "HtcScreenTimeoutListAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEnabled:[Z

.field private mEntries:[Ljava/lang/String;

.field private mItems:[Landroid/widget/CheckedTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;[Z)V
    .locals 3
    .parameter "context"
    .parameter "entries"
    .parameter "enabled"

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 36
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 37
    :cond_0
    const-string v0, "The parameters context, entryList and enabled should not be null."

    .line 38
    .local v0, error:Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 39
    .end local v0           #error:Ljava/lang/String;
    :cond_1
    array-length v1, p2

    array-length v2, p3

    if-eq v1, v2, :cond_2

    .line 40
    const-string v0, "Both sizes of the entryList and enabled should be the same."

    .line 41
    .restart local v0       #error:Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 45
    .end local v0           #error:Ljava/lang/String;
    :cond_2
    iput-object p1, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListAdapter;->mContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListAdapter;->mEntries:[Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListAdapter;->mEnabled:[Z

    .line 50
    invoke-direct {p0}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListAdapter;->hideDisabledItems()V

    .line 53
    invoke-direct {p0}, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListAdapter;->inflaterEnabledItems()V

    .line 54
    return-void
.end method

.method private hideDisabledItems()V
    .locals 6

    .prologue
    .line 60
    iget-object v5, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListAdapter;->mEntries:[Ljava/lang/String;

    array-length v4, v5

    .line 63
    .local v4, size:I
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v0, 0x0

    .local v0, count:I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 64
    iget-object v5, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListAdapter;->mEnabled:[Z

    aget-boolean v5, v5, v1

    if-eqz v5, :cond_0

    .line 65
    add-int/lit8 v0, v0, 0x1

    .line 63
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    :cond_1
    new-array v3, v0, [Ljava/lang/String;

    .line 72
    .local v3, newEntries:[Ljava/lang/String;
    new-array v2, v0, [Z

    .line 74
    .local v2, newEnabled:[Z
    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_1
    if-ge v1, v4, :cond_3

    .line 75
    iget-object v5, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListAdapter;->mEnabled:[Z

    aget-boolean v5, v5, v1

    if-eqz v5, :cond_2

    .line 76
    iget-object v5, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListAdapter;->mEntries:[Ljava/lang/String;

    aget-object v5, v5, v1

    aput-object v5, v3, v0

    .line 77
    iget-object v5, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListAdapter;->mEnabled:[Z

    aget-boolean v5, v5, v1

    aput-boolean v5, v2, v0

    .line 78
    add-int/lit8 v0, v0, 0x1

    .line 74
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 83
    :cond_3
    iput-object v3, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListAdapter;->mEntries:[Ljava/lang/String;

    .line 84
    iput-object v2, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListAdapter;->mEnabled:[Z

    .line 85
    return-void
.end method

.method private inflaterEnabledItems()V
    .locals 6

    .prologue
    .line 96
    iget-object v4, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 97
    .local v2, layoutInflater:Landroid/view/LayoutInflater;
    iget-object v4, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListAdapter;->mEntries:[Ljava/lang/String;

    array-length v4, v4

    new-array v4, v4, [Landroid/widget/CheckedTextView;

    iput-object v4, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListAdapter;->mItems:[Landroid/widget/CheckedTextView;

    .line 99
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListAdapter;->mItems:[Landroid/widget/CheckedTextView;

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 103
    const v4, 0x20900af

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 107
    .local v3, view:Landroid/view/View;
    instance-of v4, v3, Landroid/widget/CheckedTextView;

    if-eqz v4, :cond_0

    .line 108
    iget-object v4, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListAdapter;->mItems:[Landroid/widget/CheckedTextView;

    check-cast v3, Landroid/widget/CheckedTextView;

    .end local v3           #view:Landroid/view/View;
    aput-object v3, v4, v1

    .line 122
    :goto_1
    iget-object v4, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListAdapter;->mItems:[Landroid/widget/CheckedTextView;

    aget-object v4, v4, v1

    iget-object v5, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListAdapter;->mEntries:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    .restart local v3       #view:Landroid/view/View;
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListAdapter;->mItems:[Landroid/widget/CheckedTextView;

    const v4, 0x1020014

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckedTextView;

    aput-object v4, v5, v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, e:Ljava/lang/ClassCastException;
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_1

    .line 125
    .end local v0           #e:Ljava/lang/ClassCastException;
    .end local v3           #view:Landroid/view/View;
    :cond_1
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListAdapter;->mEntries:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListAdapter;->mEntries:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 136
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListAdapter;->mItems:[Landroid/widget/CheckedTextView;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/settings/framework/preference/display/HtcScreenTimeoutListAdapter;->mEnabled:[Z

    aget-boolean v0, v0, p1

    return v0
.end method
