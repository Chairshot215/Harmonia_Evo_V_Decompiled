.class public Lcom/android/browser/search/SearchEngineInfo;
.super Ljava/lang/Object;
.source "SearchEngineInfo.java"


# static fields
.field private static final FIELD_ENCODING:I = 0x4

.field private static final FIELD_FAVICON_URI:I = 0x2

.field private static final FIELD_KEYWORD:I = 0x1

.field private static final FIELD_LABEL:I = 0x0

.field private static final FIELD_SEARCH_URI:I = 0x3

.field private static final FIELD_SUGGEST_URI:I = 0x5

.field private static final NUM_FIELDS:I = 0x6

.field private static final PARAMETER_INPUT_ENCODING:Ljava/lang/String; = "{inputEncoding}"

.field private static final PARAMETER_LANGUAGE:Ljava/lang/String; = "{language}"

.field private static final PARAMETER_SEARCH_TERMS:Ljava/lang/String; = "{searchTerms}"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mSearchEngineData:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "SearchEngineInfo"

    sput-object v0, Lcom/android/browser/search/SearchEngineInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 13
    .parameter "context"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x5

    const/4 v10, 0x3

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p2, p0, Lcom/android/browser/search/SearchEngineInfo;->mName:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 66
    .local v6, res:Landroid/content/res/Resources;
    const-class v7, Lcom/android/browser/R;

    invoke-virtual {v7}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v5

    .line 67
    .local v5, packageName:Ljava/lang/String;
    const-string v7, "array"

    invoke-virtual {v6, p2, v7, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 68
    .local v1, id_data:I
    if-nez v1, :cond_0

    .line 69
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No resources found for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 71
    :cond_0
    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/browser/search/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    .line 73
    iget-object v7, p0, Lcom/android/browser/search/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    if-nez v7, :cond_1

    .line 74
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No data found for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 76
    :cond_1
    iget-object v7, p0, Lcom/android/browser/search/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    array-length v7, v7

    const/4 v8, 0x6

    if-eq v7, v8, :cond_2

    .line 77
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " has invalid number of fields - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/browser/search/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    array-length v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 80
    :cond_2
    iget-object v7, p0, Lcom/android/browser/search/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    aget-object v7, v7, v10

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 81
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " has an empty search URI"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 85
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget-object v4, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 86
    .local v4, locale:Ljava/util/Locale;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .local v2, language:Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 88
    const/16 v7, 0x2d

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, language_str:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/browser/search/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    iget-object v8, p0, Lcom/android/browser/search/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    aget-object v8, v8, v10

    const-string v9, "{language}"

    invoke-virtual {v8, v9, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    .line 95
    iget-object v7, p0, Lcom/android/browser/search/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    iget-object v8, p0, Lcom/android/browser/search/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    aget-object v8, v8, v11

    const-string v9, "{language}"

    invoke-virtual {v8, v9, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    .line 99
    iget-object v7, p0, Lcom/android/browser/search/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    aget-object v0, v7, v12

    .line 100
    .local v0, enc:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 101
    const-string v0, "UTF-8"

    .line 102
    iget-object v7, p0, Lcom/android/browser/search/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    aput-object v0, v7, v12

    .line 106
    :cond_5
    iget-object v7, p0, Lcom/android/browser/search/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    iget-object v8, p0, Lcom/android/browser/search/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    aget-object v8, v8, v10

    const-string v9, "{inputEncoding}"

    invoke-virtual {v8, v9, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    .line 108
    iget-object v7, p0, Lcom/android/browser/search/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    iget-object v8, p0, Lcom/android/browser/search/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    aget-object v8, v8, v11

    const-string v9, "{inputEncoding}"

    invoke-virtual {v8, v9, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    .line 110
    return-void
.end method

.method private getFormattedUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "templateUri"
    .parameter "query"

    .prologue
    const/4 v2, 0x0

    .line 157
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 167
    :goto_0
    return-object v2

    .line 162
    :cond_0
    iget-object v3, p0, Lcom/android/browser/search/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v1, v3, v4

    .line 164
    .local v1, enc:Ljava/lang/String;
    :try_start_0
    const-string v3, "{searchTerms}"

    invoke-static {p2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    sget-object v3, Lcom/android/browser/search/SearchEngineInfo;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception occured when encoding query "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private searchUri()Ljava/lang/String;
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/browser/search/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    return-object v0
.end method

.method private suggestUri()Ljava/lang/String;
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/browser/search/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    return-object v0
.end method


# virtual methods
.method public faviconUri()Ljava/lang/String;
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/browser/search/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/browser/search/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/browser/search/SearchEngineInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchUriForQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "query"

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/browser/search/SearchEngineInfo;->searchUri()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/browser/search/SearchEngineInfo;->getFormattedUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestUriForQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "query"

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/android/browser/search/SearchEngineInfo;->suggestUri()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/browser/search/SearchEngineInfo;->getFormattedUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public supportsSuggestions()Z
    .locals 1

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/android/browser/search/SearchEngineInfo;->suggestUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SearchEngineInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/search/SearchEngineInfo;->mSearchEngineData:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
