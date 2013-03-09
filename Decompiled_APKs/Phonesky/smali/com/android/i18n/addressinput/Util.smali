.class Lcom/android/i18n/addressinput/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final nonLatinLocalLanguageCountries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/i18n/addressinput/Util;->nonLatinLocalLanguageCountries:Ljava/util/Map;

    .line 43
    sget-object v0, Lcom/android/i18n/addressinput/Util;->nonLatinLocalLanguageCountries:Ljava/util/Map;

    const-string v1, "AM"

    const-string v2, "hy"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/android/i18n/addressinput/Util;->nonLatinLocalLanguageCountries:Ljava/util/Map;

    const-string v1, "CN"

    const-string v2, "zh"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/android/i18n/addressinput/Util;->nonLatinLocalLanguageCountries:Ljava/util/Map;

    const-string v1, "HK"

    const-string v2, "zh"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/android/i18n/addressinput/Util;->nonLatinLocalLanguageCountries:Ljava/util/Map;

    const-string v1, "JP"

    const-string v2, "ja"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/android/i18n/addressinput/Util;->nonLatinLocalLanguageCountries:Ljava/util/Map;

    const-string v1, "KP"

    const-string v2, "ko"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/android/i18n/addressinput/Util;->nonLatinLocalLanguageCountries:Ljava/util/Map;

    const-string v1, "KR"

    const-string v2, "ko"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/android/i18n/addressinput/Util;->nonLatinLocalLanguageCountries:Ljava/util/Map;

    const-string v1, "MO"

    const-string v2, "zh"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/android/i18n/addressinput/Util;->nonLatinLocalLanguageCountries:Ljava/util/Map;

    const-string v1, "TH"

    const-string v2, "th"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/android/i18n/addressinput/Util;->nonLatinLocalLanguageCountries:Ljava/util/Map;

    const-string v1, "TW"

    const-string v2, "zh"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/android/i18n/addressinput/Util;->nonLatinLocalLanguageCountries:Ljava/util/Map;

    const-string v1, "VN"

    const-string v2, "vi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method static buildNameToKeyMap([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;
    .locals 10
    .parameter "keys"
    .parameter "names"
    .parameter "lnames"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    if-nez p0, :cond_1

    .line 151
    const/4 v6, 0x0

    .line 188
    :cond_0
    return-object v6

    .line 154
    :cond_1
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 156
    .local v6, nameToKeyMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    array-length v4, p0

    .line 157
    .local v4, keyLength:I
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v3, v0, v2

    .line 158
    .local v3, k:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 160
    .end local v3           #k:Ljava/lang/String;
    :cond_2
    if-eqz p1, :cond_5

    .line 161
    array-length v7, p1

    if-le v7, v4, :cond_3

    .line 162
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "names length ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, p1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") is greater than keys length ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, p0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 166
    :cond_3
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v4, :cond_5

    .line 171
    array-length v7, p1

    if-ge v1, v7, :cond_4

    aget-object v7, p1, v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4

    .line 172
    aget-object v7, p1, v1

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    aget-object v8, p0, v1

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 176
    .end local v1           #i:I
    :cond_5
    if-eqz p2, :cond_0

    .line 177
    array-length v7, p2

    if-le v7, v4, :cond_6

    .line 178
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "lnames length ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, p2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") is greater than keys length ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, p0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 182
    :cond_6
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    if-ge v1, v4, :cond_0

    .line 183
    array-length v7, p2

    if-ge v1, v7, :cond_7

    aget-object v7, p2, v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_7

    .line 184
    aget-object v7, p2, v1

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    aget-object v8, p0, v1

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method static checkNotNull(Ljava/lang/Object;)V
    .locals 1
    .parameter "o"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 111
    const-string v0, "This object should not be null."

    invoke-static {p0, v0}, Lcom/android/i18n/addressinput/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method static checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .parameter "o"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 118
    if-nez p0, :cond_0

    .line 119
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    return-void
.end method

.method static getLanguageSubtag(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "languageCode"

    .prologue
    .line 86
    const-string v2, "(\\w{2,3})(?:[-_]\\w{4})?(?:[-_]\\w{2})?"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 88
    .local v0, languageCodePattern:Ljava/util/regex/Pattern;
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 89
    .local v1, m:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 92
    :goto_0
    return-object v2

    :cond_0
    const-string v2, "und"

    goto :goto_0
.end method

.method static getWidgetCompatibleLanguageCode(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "language"
    .parameter "currentCountry"

    .prologue
    .line 203
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, country:Ljava/lang/String;
    sget-object v3, Lcom/android/i18n/addressinput/Util;->nonLatinLocalLanguageCountries:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 207
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, languageTag:Ljava/lang/String;
    sget-object v3, Lcom/android/i18n/addressinput/Util;->nonLatinLocalLanguageCountries:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    .local v2, languageTagBuilder:Ljava/lang/StringBuilder;
    const-string v3, "_latn"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 218
    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 224
    .end local v1           #languageTag:Ljava/lang/String;
    .end local v2           #languageTagBuilder:Ljava/lang/StringBuilder;
    :goto_0
    return-object v3

    :cond_1
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method static isExplicitLatinScript(Ljava/lang/String;)Z
    .locals 5
    .parameter "languageCode"

    .prologue
    const/4 v3, 0x1

    .line 67
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 69
    const-string v4, "\\w{2,3}[-_](\\w{4})"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 70
    .local v0, languageCodePattern:Ljava/util/regex/Pattern;
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 71
    .local v1, m:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 72
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, script:Ljava/lang/String;
    const-string v4, "LATN"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 77
    .end local v2           #script:Ljava/lang/String;
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static varargs joinAndSkipNulls(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "separator"
    .parameter "strings"

    .prologue
    .line 127
    const/4 v4, 0x0

    .line 128
    .local v4, sb:Ljava/lang/StringBuilder;
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 129
    .local v3, s:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 130
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 131
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 132
    if-nez v4, :cond_1

    .line 133
    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #sb:Ljava/lang/StringBuilder;
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .restart local v4       #sb:Ljava/lang/StringBuilder;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    :cond_1
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 140
    .end local v3           #s:Ljava/lang/String;
    :cond_2
    if-nez v4, :cond_3

    const/4 v5, 0x0

    :goto_2
    return-object v5

    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2
.end method

.method static trimToNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "originalStr"

    .prologue
    const/4 v1, 0x0

    .line 100
    if-nez p0, :cond_0

    .line 104
    :goto_0
    return-object v1

    .line 103
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, trimmedString:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    move-object v0, v1

    .end local v0           #trimmedString:Ljava/lang/String;
    :cond_1
    move-object v1, v0

    goto :goto_0
.end method
