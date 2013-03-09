.class public Lcom/google/android/voicesearch/ime/VoiceLanguageSelector;
.super Ljava/lang/Object;
.source "VoiceLanguageSelector.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

.field private final mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/android/voicesearch/ime/VoiceLanguageSelector;->mContext:Landroid/content/Context;

    .line 46
    invoke-static {p1}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer(Landroid/content/Context;)Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getGservicesHelper()Lcom/google/android/voicesearch/GservicesHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceLanguageSelector;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    .line 47
    invoke-static {p1}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer(Landroid/content/Context;)Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getLanguagePrefManager()Lcom/google/android/voicesearch/LanguagePrefManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/ime/VoiceLanguageSelector;->mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;

    .line 49
    return-void
.end method

.method private getDictationLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "javaLocale"

    .prologue
    const/4 v4, 0x0

    .line 205
    if-nez p1, :cond_1

    move-object v3, v4

    .line 215
    :cond_0
    :goto_0
    return-object v3

    .line 209
    :cond_1
    iget-object v5, p0, Lcom/google/android/voicesearch/ime/VoiceLanguageSelector;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    invoke-virtual {v5}, Lcom/google/android/voicesearch/GservicesHelper;->getImeSupportedLanguages()[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 210
    .local v3, supportedBcp47Language:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/google/android/voicesearch/ime/VoiceLanguageSelector;->toJavaLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 209
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v3           #supportedBcp47Language:Ljava/lang/String;
    :cond_2
    move-object v3, v4

    .line 215
    goto :goto_0
.end method

.method private getDictationLanguageBackoff(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "javaLocale"

    .prologue
    const/4 v3, 0x0

    .line 219
    if-nez p1, :cond_0

    move-object v2, v3

    .line 229
    :goto_0
    return-object v2

    .line 224
    :cond_0
    iget-object v2, p0, Lcom/google/android/voicesearch/ime/VoiceLanguageSelector;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    invoke-virtual {v2}, Lcom/google/android/voicesearch/GservicesHelper;->getImeBackoffLanguages()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 225
    .local v0, backoffEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/google/android/voicesearch/ime/VoiceLanguageSelector;->toJavaLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 226
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    .end local v0           #backoffEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    move-object v2, v3

    .line 229
    goto :goto_0
.end method

.method private getLastInputMethodSubTypeLocale(Landroid/view/inputmethod/InputMethodManager;)Ljava/lang/String;
    .locals 2
    .parameter "imm"

    .prologue
    .line 125
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->getLastInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    .line 126
    .local v0, lastSubType:Landroid/view/inputmethod/InputMethodSubtype;
    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v1

    .line 129
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getDictationLanguage()Ljava/lang/String;
    .locals 6

    .prologue
    .line 59
    iget-object v4, p0, Lcom/google/android/voicesearch/ime/VoiceLanguageSelector;->mContext:Landroid/content/Context;

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 61
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 66
    invoke-direct {p0, v1}, Lcom/google/android/voicesearch/ime/VoiceLanguageSelector;->getLastInputMethodSubTypeLocale(Landroid/view/inputmethod/InputMethodManager;)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, imeLocale:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, phoneLocale:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/voicesearch/ime/VoiceLanguageSelector;->mLanguagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;

    invoke-virtual {v4}, Lcom/google/android/voicesearch/LanguagePrefManager;->getLanguageSetting()Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, voicesearchLocale:Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/voicesearch/ime/VoiceLanguageSelector;->getDictationLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 72
    .end local v0           #imeLocale:Ljava/lang/String;
    .end local v2           #phoneLocale:Ljava/lang/String;
    .end local v3           #voicesearchLocale:Ljava/lang/String;
    :goto_0
    return-object v4

    :cond_0
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/android/voicesearch/ime/VoiceLanguageSelector;->toBcp47Locale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method protected getDictationLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "imeJavaLocale"
    .parameter "phoneJavaLocale"
    .parameter "voicesearchBcp47Locale"

    .prologue
    .line 165
    invoke-static {p2}, Lcom/google/android/voicesearch/util/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 166
    invoke-static {p3}, Lcom/google/android/voicesearch/util/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 168
    const/4 v0, 0x0

    .line 170
    .local v0, dictationLanguage:Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 171
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/ime/VoiceLanguageSelector;->getDictationLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    if-nez v0, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    invoke-direct {p0, p2}, Lcom/google/android/voicesearch/ime/VoiceLanguageSelector;->getDictationLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    :cond_0
    if-nez v0, :cond_1

    .line 181
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/ime/VoiceLanguageSelector;->getDictationLanguageBackoff(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    :cond_1
    if-nez v0, :cond_2

    .line 185
    invoke-direct {p0, p2}, Lcom/google/android/voicesearch/ime/VoiceLanguageSelector;->getDictationLanguageBackoff(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    :cond_2
    if-nez v0, :cond_3

    .line 190
    invoke-direct {p0, p2}, Lcom/google/android/voicesearch/ime/VoiceLanguageSelector;->getDictationLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    :cond_3
    if-nez v0, :cond_4

    .line 194
    invoke-direct {p0, p2}, Lcom/google/android/voicesearch/ime/VoiceLanguageSelector;->getDictationLanguageBackoff(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    :cond_4
    if-nez v0, :cond_5

    .line 198
    move-object v0, p3

    .line 201
    :cond_5
    return-object v0
.end method

.method public getDisplayLanguageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "dictationBcp47Locale"

    .prologue
    .line 137
    iget-object v3, p0, Lcom/google/android/voicesearch/ime/VoiceLanguageSelector;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f0b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, languageCodes:[Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/voicesearch/ime/VoiceLanguageSelector;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, languageNames:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 141
    aget-object v3, v1, v0

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 142
    aget-object p1, v2, v0

    .line 148
    .end local p1
    :cond_0
    return-object p1

    .line 140
    .restart local p1
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getSupportedVoiceImeLocales(Ljava/lang/String;)[Lcom/google/android/voicesearch/VoiceRecognitionLocale;
    .locals 7
    .parameter "currentBcp47Locale"

    .prologue
    .line 253
    iget-object v4, p0, Lcom/google/android/voicesearch/ime/VoiceLanguageSelector;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/voicesearch/ime/ImeUtils;->getSupportedLocales(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v2

    .line 255
    .local v2, javaLocales:[Ljava/lang/String;
    array-length v4, v2

    if-nez v4, :cond_0

    .line 256
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/String;

    .end local v2           #javaLocales:[Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/ime/VoiceLanguageSelector;->toJavaLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 259
    .restart local v2       #javaLocales:[Ljava/lang/String;
    :cond_0
    array-length v4, v2

    new-array v3, v4, [Lcom/google/android/voicesearch/VoiceRecognitionLocale;

    .line 262
    .local v3, voiceRecognitionLocale:[Lcom/google/android/voicesearch/VoiceRecognitionLocale;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_1

    .line 263
    aget-object v4, v2, v1

    invoke-virtual {p0, v4}, Lcom/google/android/voicesearch/ime/VoiceLanguageSelector;->toBcp47Locale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, bcp47Locale:Ljava/lang/String;
    new-instance v4, Lcom/google/android/voicesearch/VoiceRecognitionLocale;

    aget-object v5, v2, v1

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/ime/VoiceLanguageSelector;->getDisplayLanguageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v0, v6}, Lcom/google/android/voicesearch/VoiceRecognitionLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v3, v1

    .line 262
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 267
    .end local v0           #bcp47Locale:Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method public toBcp47Locale(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "javaLocale"

    .prologue
    .line 242
    iget-object v3, p0, Lcom/google/android/voicesearch/ime/VoiceLanguageSelector;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    invoke-virtual {v3}, Lcom/google/android/voicesearch/GservicesHelper;->getMapBcp47ToJavaLocale()Ljava/util/Map;

    move-result-object v2

    .line 244
    .local v2, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 245
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 246
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 249
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-object v3

    :cond_1
    move-object v3, p1

    goto :goto_0
.end method

.method public toJavaLocale(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "bcp47Locale"

    .prologue
    .line 234
    iget-object v1, p0, Lcom/google/android/voicesearch/ime/VoiceLanguageSelector;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/GservicesHelper;->getMapBcp47ToJavaLocale()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 235
    .local v0, javaLocale:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 236
    move-object v0, p1

    .line 238
    :cond_0
    return-object v0
.end method
