.class public Lcom/google/android/googlequicksearchbox/preferences/SearchableItemsController;
.super Lcom/google/android/googlequicksearchbox/preferences/SettingsControllerBase;
.source "SearchableItemsController.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mNewSourceLabelSuffixSpan:Landroid/text/style/ForegroundColorSpan;

.field private final mNewSourceWatcher:Lcom/google/android/googlequicksearchbox/NewSourceWatcher;

.field private final mQueryStrategy:Lcom/google/android/googlequicksearchbox/QueryStrategy;

.field private mSourcePreferences:Landroid/preference/PreferenceGroup;

.field private final mSources:Lcom/google/android/googlequicksearchbox/Sources;


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/SearchSettings;Lcom/google/android/googlequicksearchbox/Sources;Lcom/google/android/googlequicksearchbox/NewSourceWatcher;Landroid/content/Context;Lcom/google/android/googlequicksearchbox/QueryStrategy;)V
    .locals 3
    .parameter "searchSettings"
    .parameter "sources"
    .parameter "newSourceWatcher"
    .parameter "context"
    .parameter "strategy"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/preferences/SettingsControllerBase;-><init>(Lcom/google/android/googlequicksearchbox/SearchSettings;)V

    .line 57
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemsController;->mSources:Lcom/google/android/googlequicksearchbox/Sources;

    .line 58
    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemsController;->mNewSourceWatcher:Lcom/google/android/googlequicksearchbox/NewSourceWatcher;

    .line 59
    iput-object p4, p0, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemsController;->mContext:Landroid/content/Context;

    .line 60
    iput-object p5, p0, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemsController;->mQueryStrategy:Lcom/google/android/googlequicksearchbox/QueryStrategy;

    .line 61
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemsController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemsController;->mNewSourceLabelSuffixSpan:Landroid/text/style/ForegroundColorSpan;

    .line 63
    return-void
.end method

.method private createSourcePreference(Lcom/google/android/googlequicksearchbox/Source;)Landroid/preference/Preference;
    .locals 9
    .parameter "source"

    .prologue
    .line 100
    new-instance v3, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemPreference;

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemsController;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemPreference;-><init>(Landroid/content/Context;)V

    .line 101
    .local v3, sourcePref:Lcom/google/android/googlequicksearchbox/preferences/SearchableItemPreference;
    invoke-static {p1}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getSourceEnabledPreference(Lcom/google/android/googlequicksearchbox/Source;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemPreference;->setKey(Ljava/lang/String;)V

    .line 102
    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/Source;->isEnabledByDefault()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 103
    invoke-virtual {v3, p0}, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 104
    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/Source;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    .line 105
    .local v2, label:Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemsController;->mNewSourceWatcher:Lcom/google/android/googlequicksearchbox/NewSourceWatcher;

    invoke-virtual {v5, p1}, Lcom/google/android/googlequicksearchbox/NewSourceWatcher;->isNewSource(Lcom/google/android/googlequicksearchbox/Source;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 106
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemPreference;->setIsNewSource(Z)V

    .line 107
    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemsController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0037

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 110
    .local v4, suffix:Ljava/lang/CharSequence;
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v6, " "

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 114
    .local v0, builder:Landroid/text/SpannableStringBuilder;
    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemsController;->mNewSourceLabelSuffixSpan:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 116
    move-object v2, v0

    .line 118
    .end local v0           #builder:Landroid/text/SpannableStringBuilder;
    .end local v4           #suffix:Ljava/lang/CharSequence;
    :cond_0
    invoke-virtual {v3, v2}, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 119
    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/Source;->getSettingsDescription()Ljava/lang/CharSequence;

    move-result-object v1

    .line 120
    .local v1, description:Ljava/lang/CharSequence;
    invoke-virtual {v3, v1}, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 121
    invoke-virtual {v3, v1}, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 122
    invoke-interface {p1}, Lcom/google/android/googlequicksearchbox/Source;->getSourceIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 123
    return-object v3
.end method

.method private createWebSourcePreference()Landroid/preference/Preference;
    .locals 5

    .prologue
    .line 127
    new-instance v2, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemPreference;

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemsController;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemPreference;-><init>(Landroid/content/Context;)V

    .line 128
    .local v2, sourcePref:Lcom/google/android/googlequicksearchbox/preferences/SearchableItemPreference;
    invoke-static {}, Lcom/google/android/googlequicksearchbox/SearchSettingsImpl;->getWebSourceEnabledPreference()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemPreference;->setKey(Ljava/lang/String;)V

    .line 130
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemPreference;->setOrder(I)V

    .line 131
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 132
    invoke-virtual {v2, p0}, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 133
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemsController;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b0017

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, label:Ljava/lang/CharSequence;
    invoke-virtual {v2, v1}, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 135
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemsController;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b0019

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, description:Ljava/lang/CharSequence;
    invoke-virtual {v2, v0}, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 137
    invoke-virtual {v2, v0}, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 139
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemsController;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f03

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 140
    return-object v2
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemsController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getSources()Lcom/google/android/googlequicksearchbox/Sources;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemsController;->mSources:Lcom/google/android/googlequicksearchbox/Sources;

    return-object v0
.end method

.method private populateSourcePreference()V
    .locals 5

    .prologue
    .line 83
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemsController;->mSourcePreferences:Landroid/preference/PreferenceGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 84
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemsController;->mSourcePreferences:Landroid/preference/PreferenceGroup;

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemsController;->createWebSourcePreference()Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 85
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemsController;->getSources()Lcom/google/android/googlequicksearchbox/Sources;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/googlequicksearchbox/Sources;->getSources()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/googlequicksearchbox/Source;

    .line 86
    .local v2, source:Lcom/google/android/googlequicksearchbox/Source;
    invoke-interface {v2}, Lcom/google/android/googlequicksearchbox/Source;->isHiddenFromSettings()Z

    move-result v3

    if-nez v3, :cond_0

    .line 87
    invoke-direct {p0, v2}, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemsController;->createSourcePreference(Lcom/google/android/googlequicksearchbox/Source;)Landroid/preference/Preference;

    move-result-object v1

    .line 88
    .local v1, pref:Landroid/preference/Preference;
    if-eqz v1, :cond_0

    .line 90
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemsController;->mSourcePreferences:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 94
    .end local v1           #pref:Landroid/preference/Preference;
    .end local v2           #source:Lcom/google/android/googlequicksearchbox/Source;
    :cond_1
    return-void
.end method


# virtual methods
.method public handlePreference(Landroid/preference/Preference;)V
    .locals 1
    .parameter "sourcePreferences"

    .prologue
    .line 66
    check-cast p1, Landroid/preference/PreferenceGroup;

    .end local p1
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemsController;->mSourcePreferences:Landroid/preference/PreferenceGroup;

    .line 67
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemsController;->populateSourcePreference()V

    .line 68
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemsController;->mNewSourceWatcher:Lcom/google/android/googlequicksearchbox/NewSourceWatcher;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/NewSourceWatcher;->searchableItemsShown()V

    .line 69
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemsController;->getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/SearchSettings;->broadcastSettingsChanged()V

    .line 145
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/SearchableItemsController;->mQueryStrategy:Lcom/google/android/googlequicksearchbox/QueryStrategy;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/QueryStrategy;->setForceSuggestionFetch()V

    .line 146
    const/4 v0, 0x1

    return v0
.end method
