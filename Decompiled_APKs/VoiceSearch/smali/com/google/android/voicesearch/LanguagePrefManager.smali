.class public Lcom/google/android/voicesearch/LanguagePrefManager;
.super Ljava/lang/Object;
.source "LanguagePrefManager.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

.field private mLanguageToNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSharedPrefs:Landroid/content/SharedPreferences;

.field private mStringToListCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSupportedActions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object v0, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mContext:Landroid/content/Context;

    .line 164
    iput-object v0, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    .line 165
    iput-object v0, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 166
    iput-object v0, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mLanguageToNameMap:Ljava/util/HashMap;

    .line 167
    iput-object v0, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mStringToListCache:Ljava/util/HashMap;

    .line 168
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/voicesearch/GservicesHelper;)V
    .locals 3
    .parameter "context"
    .parameter "helper"

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p1, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mContext:Landroid/content/Context;

    .line 151
    iput-object p2, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    .line 153
    iget-object v0, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mContext:Landroid/content/Context;

    const-string v1, "VoiceSearchPreferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 155
    invoke-direct {p0}, Lcom/google/android/voicesearch/LanguagePrefManager;->buildLanguageCodeToNameMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mLanguageToNameMap:Ljava/util/HashMap;

    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mStringToListCache:Ljava/util/HashMap;

    .line 158
    const-string v0, "language"

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/LanguagePrefManager;->normalizeLanguageSetting(Ljava/lang/String;)V

    .line 159
    const-string v0, "actual_language_setting"

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/LanguagePrefManager;->normalizeLanguageSetting(Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method private buildLanguageCodeToNameMap()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 707
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 709
    .local v2, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f0b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 710
    .local v0, codes:[Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 712
    .local v3, names:[Ljava/lang/String;
    array-length v4, v0

    array-length v5, v3

    if-eq v4, v5, :cond_0

    .line 713
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "count of languageCodes and languageNames does not match"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 716
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_1

    .line 717
    aget-object v4, v0, v1

    aget-object v5, v3, v1

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 720
    :cond_1
    return-object v2
.end method

.method public static getHlParameter()Ljava/lang/String;
    .locals 5

    .prologue
    .line 823
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 824
    .local v2, locale:Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 825
    .local v1, language:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 828
    .local v0, country:Ljava/lang/String;
    const-string v3, "zh"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "pt"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 829
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 831
    .end local v1           #language:Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method private getStoredAlternateBackoffLanguageCodes()Ljava/lang/String;
    .locals 5

    .prologue
    .line 692
    iget-object v2, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v3, "alternate_backoff_languages"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 694
    .local v0, alternateBackoffLanguagesString:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 695
    iget-object v2, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    invoke-virtual {v2}, Lcom/google/android/voicesearch/GservicesHelper;->getAlternateBackoffLanguages()Ljava/lang/String;

    move-result-object v0

    .line 696
    iget-object v2, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 697
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "alternate_backoff_languages"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 698
    invoke-static {v1}, Lcom/google/android/voicesearch/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 700
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-object v0
.end method

.method private getStoredSupportedLanguageCodes()Ljava/lang/String;
    .locals 5

    .prologue
    .line 673
    iget-object v2, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v3, "supported_languages"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 675
    .local v1, supportedLanguageCodesString:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 676
    iget-object v2, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    invoke-virtual {v2}, Lcom/google/android/voicesearch/GservicesHelper;->getSupportedLanguages()Ljava/lang/String;

    move-result-object v1

    .line 677
    iget-object v2, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 678
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "supported_languages"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 679
    invoke-static {v0}, Lcom/google/android/voicesearch/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 681
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-object v1
.end method

.method private languageMappingStringAsMap(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 8
    .parameter "string"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 746
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 747
    .local v1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/LanguagePrefManager;->languagesStringAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 748
    .local v4, mappingStrings:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 749
    .local v3, mappingString:Ljava/lang/String;
    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 750
    .local v2, mapping:[Ljava/lang/String;
    array-length v5, v2

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    .line 751
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "malformed language mapping ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 753
    :cond_0
    const/4 v5, 0x0

    aget-object v5, v2, v5

    const/4 v6, 0x1

    aget-object v6, v2, v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 755
    .end local v2           #mapping:[Ljava/lang/String;
    .end local v3           #mappingString:Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method private languagesStringAsList(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .parameter "string"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 729
    if-nez p1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 738
    :cond_0
    :goto_0
    return-object v0

    .line 731
    :cond_1
    iget-object v1, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mStringToListCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 733
    .local v0, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 734
    const-string v1, "\\s+"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 735
    iget-object v1, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mStringToListCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private normalizeLanguageSetting(Ljava/lang/String;)V
    .locals 5
    .parameter "key"

    .prologue
    .line 178
    iget-object v2, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, languageSettingCode:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    const-string v2, "default"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 190
    iget-object v2, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v3, "supported_languages"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 198
    iget-object v2, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 199
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "default"

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 200
    invoke-static {v0}, Lcom/google/android/voicesearch/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0
.end method

.method private parseActions(Ljava/lang/String;)[I
    .locals 8
    .parameter "actionString"

    .prologue
    const/4 v4, 0x0

    .line 319
    const-string v5, ","

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 320
    .local v1, actions:[Ljava/lang/String;
    array-length v5, v1

    new-array v0, v5, [I

    .line 322
    .local v0, actionInts:[I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    :try_start_0
    array-length v5, v1

    if-ge v3, v5, :cond_0

    .line 323
    aget-object v5, v1, v3

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v0, v3

    .line 324
    aget v5, v0, v3

    if-gez v5, :cond_1

    .line 325
    const-string v5, "LanguagePrefManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "problem in supported actions list ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 333
    .end local v0           #actionInts:[I
    :cond_0
    :goto_1
    return-object v0

    .line 322
    .restart local v0       #actionInts:[I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 330
    :catch_0
    move-exception v2

    .line 331
    .local v2, e:Ljava/lang/NumberFormatException;
    const-string v5, "LanguagePrefManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "problem in supported actions list ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v4

    .line 333
    goto :goto_1
.end method


# virtual methods
.method public acknowledgeUnsupportedDeviceLanguage()V
    .locals 3

    .prologue
    .line 593
    iget-object v1, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 594
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "acknowledged_unsupported_device_language"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 595
    invoke-static {v0}, Lcom/google/android/voicesearch/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 596
    return-void
.end method

.method public deviceLanguageIsSupported()Z
    .locals 2

    .prologue
    .line 398
    invoke-direct {p0}, Lcom/google/android/voicesearch/LanguagePrefManager;->getStoredSupportedLanguageCodes()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/voicesearch/LanguagePrefManager;->languagesStringAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 399
    .local v0, supportedLanguages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/android/voicesearch/LanguagePrefManager;->getDeviceLanguageCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method protected getDefaultLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 791
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceDefaultLanguageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 544
    invoke-virtual {p0}, Lcom/google/android/voicesearch/LanguagePrefManager;->getDeviceLanguageCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/LanguagePrefManager;->getSupportedLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/LanguagePrefManager;->getLanguageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceLanguageCode()Ljava/lang/String;
    .locals 5

    .prologue
    .line 603
    invoke-virtual {p0}, Lcom/google/android/voicesearch/LanguagePrefManager;->getDefaultLocale()Ljava/util/Locale;

    move-result-object v2

    .line 604
    .local v2, locale:Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 605
    .local v1, language:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 606
    .local v0, country:Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 607
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 612
    :goto_0
    return-object v3

    :cond_0
    const-string v3, "en-001"

    goto :goto_0
.end method

.method public getLanguageChoices()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 475
    invoke-direct {p0}, Lcom/google/android/voicesearch/LanguagePrefManager;->getStoredSupportedLanguageCodes()Ljava/lang/String;

    move-result-object v3

    .line 476
    .local v3, supportedLanguagesString:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/google/android/voicesearch/LanguagePrefManager;->languagesStringAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 478
    .local v2, supportedLanguages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    .line 483
    .local v0, choices:[Ljava/lang/String;
    const/4 v4, 0x0

    const-string v5, "default"

    aput-object v5, v0, v4

    .line 486
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 487
    add-int/lit8 v5, v1, 0x1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v0, v5

    .line 486
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 490
    :cond_0
    return-object v0
.end method

.method public getLanguageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "language"

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/google/android/voicesearch/LanguagePrefManager;->getDeviceLanguageCode()Ljava/lang/String;

    move-result-object v2

    .line 519
    .local v2, deviceLanguage:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mLanguageToNameMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 520
    .local v3, name:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 521
    const-string v4, "default"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 524
    invoke-virtual {p0, v2}, Lcom/google/android/voicesearch/LanguagePrefManager;->getSupportedLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 525
    .local v0, defaultLanguage:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mLanguageToNameMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 526
    .local v1, defaultLanguageName:Ljava/lang/String;
    if-nez v1, :cond_0

    move-object v1, v0

    .line 527
    :cond_0
    iget-object v4, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0739

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 537
    .end local v0           #defaultLanguage:Ljava/lang/String;
    .end local v1           #defaultLanguageName:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v3

    .line 532
    :cond_2
    const-string v4, "LanguagePrefManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no display name available for supported voice search language: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    move-object v3, p1

    goto :goto_0
.end method

.method public getLanguageNames([Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "languages"

    .prologue
    .line 504
    array-length v2, p1

    new-array v1, v2, [Ljava/lang/String;

    .line 505
    .local v1, names:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 506
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/google/android/voicesearch/LanguagePrefManager;->getLanguageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 505
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 508
    :cond_0
    return-object v1
.end method

.method public getLanguageSetting()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 354
    iget-object v2, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    invoke-virtual {v2}, Lcom/google/android/voicesearch/GservicesHelper;->getLanguageOverride()Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, languageOverride:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 362
    .end local v0           #languageOverride:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 358
    .restart local v0       #languageOverride:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v3, "actual_language_setting"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 359
    .local v1, setting:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 360
    invoke-virtual {p0, v4}, Lcom/google/android/voicesearch/LanguagePrefManager;->updateLanguageSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 362
    goto :goto_0
.end method

.method public getSupportedActions()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation

    .prologue
    .line 341
    iget-object v0, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mSupportedActions:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/LanguagePrefManager;->updateSupportedActions(Ljava/lang/String;)V

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mSupportedActions:Ljava/util/HashMap;

    return-object v0
.end method

.method public getSupportedLanguageCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "desiredLanguageCode"

    .prologue
    .line 634
    invoke-direct {p0}, Lcom/google/android/voicesearch/LanguagePrefManager;->getStoredSupportedLanguageCodes()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/voicesearch/LanguagePrefManager;->languagesStringAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 636
    .local v2, supportedLanguages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 649
    .end local p1
    :goto_0
    return-object p1

    .line 642
    .restart local p1
    :cond_0
    invoke-direct {p0}, Lcom/google/android/voicesearch/LanguagePrefManager;->getStoredAlternateBackoffLanguageCodes()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/voicesearch/LanguagePrefManager;->languageMappingStringAsMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 644
    .local v0, alternateBackoffLanguages:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 646
    .local v1, backoff:Ljava/lang/String;
    if-eqz v1, :cond_1

    move-object p1, v1

    .line 647
    goto :goto_0

    .line 649
    :cond_1
    const-string p1, "en-001"

    goto :goto_0
.end method

.method public getSupportedLanguages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 662
    invoke-direct {p0}, Lcom/google/android/voicesearch/LanguagePrefManager;->getStoredSupportedLanguageCodes()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/LanguagePrefManager;->languagesStringAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public handleDeviceLanguageChange()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 554
    iget-object v3, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 556
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v4, "last_known_device_language"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 558
    .local v2, oldDeviceLanguageCode:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/voicesearch/LanguagePrefManager;->getDeviceLanguageCode()Ljava/lang/String;

    move-result-object v1

    .line 562
    .local v1, newDeviceLanguageCode:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/android/voicesearch/LanguagePrefManager;->getSupportedLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2}, Lcom/google/android/voicesearch/LanguagePrefManager;->getSupportedLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 566
    const-string v3, "default_language_changed"

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 568
    invoke-virtual {p0, v0, v5}, Lcom/google/android/voicesearch/LanguagePrefManager;->updateLanguageSetting(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)Ljava/lang/String;

    .line 571
    :cond_0
    const-string v3, "last_known_device_language"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 572
    const-string v3, "acknowledged_unsupported_device_language"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 573
    invoke-static {v0}, Lcom/google/android/voicesearch/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 574
    invoke-direct {p0}, Lcom/google/android/voicesearch/LanguagePrefManager;->buildLanguageCodeToNameMap()Ljava/util/HashMap;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mLanguageToNameMap:Ljava/util/HashMap;

    .line 575
    return-void
.end method

.method public handleGservicesChange(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 765
    const-string v5, "VoiceSearchPreferences"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 767
    .local v4, prefs:Landroid/content/SharedPreferences;
    const-string v5, "supported_languages"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 769
    .local v3, oldSupportedLanguages:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    invoke-virtual {v5}, Lcom/google/android/voicesearch/GservicesHelper;->getSupportedLanguages()Ljava/lang/String;

    move-result-object v1

    .line 771
    .local v1, newSupportedLanguages:Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 772
    invoke-virtual {p0, v3, v1}, Lcom/google/android/voicesearch/LanguagePrefManager;->updateSupportedLanguages(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    :cond_0
    const-string v5, "alternate_backoff_languages"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 777
    .local v2, oldAlternateBackoffLanguages:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    invoke-virtual {v5}, Lcom/google/android/voicesearch/GservicesHelper;->getAlternateBackoffLanguages()Ljava/lang/String;

    move-result-object v0

    .line 779
    .local v0, newAlternateBackoffLanguages:Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 780
    invoke-virtual {p0, v2, v0}, Lcom/google/android/voicesearch/LanguagePrefManager;->updateAlternateBackoffLanguages(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    :cond_1
    iget-object v5, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    invoke-virtual {v5}, Lcom/google/android/voicesearch/GservicesHelper;->getSupportedActions()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/android/voicesearch/LanguagePrefManager;->updateSupportedActions(Ljava/lang/String;)V

    .line 785
    return-void
.end method

.method public hasAcknowledgedUnsupportedDeviceLanguage()Z
    .locals 3

    .prologue
    .line 407
    iget-object v0, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "acknowledged_unsupported_device_language"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public languageSettingHasVoiceActions()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 370
    invoke-virtual {p0}, Lcom/google/android/voicesearch/LanguagePrefManager;->getLanguageSetting()Ljava/lang/String;

    move-result-object v0

    .line 371
    .local v0, languageSetting:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/voicesearch/LanguagePrefManager;->getSupportedActions()Ljava/util/HashMap;

    move-result-object v1

    .line 373
    .local v1, supportedActions:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;[I>;"
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    .line 382
    :goto_0
    return v2

    .line 377
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    array-length v2, v2

    if-nez v2, :cond_2

    :cond_1
    move v2, v3

    .line 379
    goto :goto_0

    .line 382
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public languageSettingIsDefault()Z
    .locals 4

    .prologue
    .line 389
    iget-object v1, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v2, "language"

    const-string v3, "default"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, setting:Ljava/lang/String;
    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method protected parseSupportedActions(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 10
    .parameter "supportedActionsString"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation

    .prologue
    .line 299
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 301
    .local v7, supportedActionMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;[I>;"
    const-string v8, "\\s+"

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 302
    .local v5, pairs:[Ljava/lang/String;
    move-object v1, v5

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    .line 303
    .local v4, pair:Ljava/lang/String;
    const-string v8, ":"

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 308
    .local v6, splitPair:[Ljava/lang/String;
    array-length v8, v6

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 309
    const/4 v8, 0x1

    aget-object v8, v6, v8

    invoke-direct {p0, v8}, Lcom/google/android/voicesearch/LanguagePrefManager;->parseActions(Ljava/lang/String;)[I

    move-result-object v0

    .line 310
    .local v0, actionInts:[I
    if-eqz v0, :cond_0

    .line 311
    const/4 v8, 0x0

    aget-object v8, v6, v8

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    .end local v0           #actionInts:[I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 315
    .end local v4           #pair:Ljava/lang/String;
    .end local v6           #splitPair:[Ljava/lang/String;
    :cond_1
    return-object v7
.end method

.method public resetDefaultLanguageChange()V
    .locals 3

    .prologue
    .line 582
    iget-object v1, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 583
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "default_language_changed"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 585
    invoke-static {v0}, Lcom/google/android/voicesearch/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 586
    return-void
.end method

.method public shouldShowVoiceSearchLanguage(Landroid/content/Context;)Z
    .locals 9
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 798
    invoke-virtual {p0}, Lcom/google/android/voicesearch/LanguagePrefManager;->getLanguageSetting()Ljava/lang/String;

    move-result-object v4

    .line 799
    .local v4, voiceSearchLanguage:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/voicesearch/LanguagePrefManager;->getDeviceLanguageCode()Ljava/lang/String;

    move-result-object v0

    .line 804
    .local v0, deviceLocale:Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 819
    :goto_0
    return v5

    .line 810
    :cond_0
    iget-object v7, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mContext:Landroid/content/Context;

    const-string v8, "input_method"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 812
    .local v2, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 813
    .local v3, inputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v2, v3, v6}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_1

    goto :goto_0

    .end local v3           #inputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;
    :cond_2
    move v5, v6

    .line 819
    goto :goto_0
.end method

.method updateAlternateBackoffLanguages(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "oldAlternateBackoffLanguagesString"
    .parameter "newAlternateBackoffLanguagesString"

    .prologue
    .line 253
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/LanguagePrefManager;->languageMappingStringAsMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    .line 255
    .local v4, oldAlternateBackoffLanguages:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lcom/google/android/voicesearch/LanguagePrefManager;->languageMappingStringAsMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 258
    .local v2, newAlternateBackoffLanguages:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 260
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p0}, Lcom/google/android/voicesearch/LanguagePrefManager;->getDeviceLanguageCode()Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, deviceLanguage:Ljava/lang/String;
    invoke-direct {p0}, Lcom/google/android/voicesearch/LanguagePrefManager;->getStoredSupportedLanguageCodes()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/google/android/voicesearch/LanguagePrefManager;->languagesStringAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 263
    .local v6, supportedLanguages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 267
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 269
    .local v5, oldBackoffLanguageForDeviceLanguage:Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 272
    .local v3, newBackoffLanguageForDeviceLanguage:Ljava/lang/String;
    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 274
    const-string v7, "default_language_changed"

    const/4 v8, 0x2

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 276
    const/4 v7, 0x0

    invoke-virtual {p0, v1, v7}, Lcom/google/android/voicesearch/LanguagePrefManager;->updateLanguageSetting(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)Ljava/lang/String;

    .line 280
    .end local v3           #newBackoffLanguageForDeviceLanguage:Ljava/lang/String;
    .end local v5           #oldBackoffLanguageForDeviceLanguage:Ljava/lang/String;
    :cond_0
    const-string v7, "alternate_backoff_languages"

    invoke-interface {v1, v7, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 281
    invoke-static {v1}, Lcom/google/android/voicesearch/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 282
    return-void
.end method

.method updateLanguageSetting(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "editor"
    .parameter "newLanguageCode"

    .prologue
    .line 438
    invoke-virtual {p0}, Lcom/google/android/voicesearch/LanguagePrefManager;->getDeviceLanguageCode()Ljava/lang/String;

    move-result-object v1

    .line 440
    .local v1, deviceLanguage:Ljava/lang/String;
    const-string v2, "last_known_device_language"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 446
    if-nez p2, :cond_0

    .line 447
    iget-object v2, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v3, "language"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 449
    :cond_0
    if-nez p2, :cond_1

    .line 450
    const-string p2, "default"

    .line 455
    :cond_1
    const-string v2, "default"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 456
    invoke-virtual {p0}, Lcom/google/android/voicesearch/LanguagePrefManager;->getDeviceLanguageCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/voicesearch/LanguagePrefManager;->getSupportedLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 460
    .local v0, actualLanguageSetting:Ljava/lang/String;
    :goto_0
    const-string v2, "actual_language_setting"

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 462
    return-object v0

    .line 458
    .end local v0           #actualLanguageSetting:Ljava/lang/String;
    :cond_2
    move-object v0, p2

    .restart local v0       #actualLanguageSetting:Ljava/lang/String;
    goto :goto_0
.end method

.method public updateLanguageSetting(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "newValue"

    .prologue
    .line 419
    iget-object v2, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 420
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p0, v0, p1}, Lcom/google/android/voicesearch/LanguagePrefManager;->updateLanguageSetting(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 421
    .local v1, result:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/voicesearch/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 422
    return-object v1
.end method

.method updateSupportedActions(Ljava/lang/String;)V
    .locals 1
    .parameter "newSupportedActionsString"

    .prologue
    .line 291
    if-nez p1, :cond_0

    .line 292
    iget-object v0, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/GservicesHelper;->getSupportedActions()Ljava/lang/String;

    move-result-object p1

    .line 295
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/LanguagePrefManager;->parseSupportedActions(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mSupportedActions:Ljava/util/HashMap;

    .line 296
    return-void
.end method

.method updateSupportedLanguages(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "oldSupportedLanguagesString"
    .parameter "newSupportedLanguagesString"

    .prologue
    .line 214
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/LanguagePrefManager;->languagesStringAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 215
    .local v3, oldSupportedLanguages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lcom/google/android/voicesearch/LanguagePrefManager;->languagesStringAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 217
    .local v2, newSupportedLanguages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/google/android/voicesearch/LanguagePrefManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 223
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "supported_languages"

    invoke-interface {v1, v4, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 224
    invoke-static {v1}, Lcom/google/android/voicesearch/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 226
    invoke-virtual {p0}, Lcom/google/android/voicesearch/LanguagePrefManager;->getDeviceLanguageCode()Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, deviceLanguage:Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 235
    const-string v4, "default_language_changed"

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 237
    invoke-static {v1}, Lcom/google/android/voicesearch/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 239
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4}, Lcom/google/android/voicesearch/LanguagePrefManager;->updateLanguageSetting(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)Ljava/lang/String;

    .line 240
    invoke-static {v1}, Lcom/google/android/voicesearch/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 242
    :cond_0
    return-void
.end method
