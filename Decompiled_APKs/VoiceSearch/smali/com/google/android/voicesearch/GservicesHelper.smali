.class public Lcom/google/android/voicesearch/GservicesHelper;
.super Ljava/lang/Object;
.source "GservicesHelper.java"


# static fields
.field private static final DEFAULT_LANGUAGE_OVERRIDE:Ljava/lang/String;

.field private static final DEFAULT_MOFE_HTTP_URL:Ljava/lang/String;

.field private static final DEFAULT_MOFE_PROTO_URL:Ljava/lang/String;

.field private static final FALSE_PATTERN:Ljava/util/regex/Pattern;

.field private static final TRUE_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mObservable:Ljava/util/Observable;

.field protected mValueLists:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mValueMaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mValues:Ljava/util/Map;
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
    .locals 2

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x0

    .line 270
    sput-object v0, Lcom/google/android/voicesearch/GservicesHelper;->DEFAULT_MOFE_HTTP_URL:Ljava/lang/String;

    .line 277
    sput-object v0, Lcom/google/android/voicesearch/GservicesHelper;->DEFAULT_MOFE_PROTO_URL:Ljava/lang/String;

    .line 320
    sput-object v0, Lcom/google/android/voicesearch/GservicesHelper;->DEFAULT_LANGUAGE_OVERRIDE:Ljava/lang/String;

    .line 434
    const-string v0, "^(1|true|t|on|yes|y)$"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/voicesearch/GservicesHelper;->TRUE_PATTERN:Ljava/util/regex/Pattern;

    .line 436
    const-string v0, "^(0|false|f|off|no|n)$"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/voicesearch/GservicesHelper;->FALSE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 701
    iput-object v0, p0, Lcom/google/android/voicesearch/GservicesHelper;->mContext:Landroid/content/Context;

    .line 702
    iput-object v0, p0, Lcom/google/android/voicesearch/GservicesHelper;->mObservable:Ljava/util/Observable;

    .line 703
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 691
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 692
    iput-object p1, p0, Lcom/google/android/voicesearch/GservicesHelper;->mContext:Landroid/content/Context;

    .line 693
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/GservicesHelper;->mValueMaps:Ljava/util/Map;

    .line 694
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/GservicesHelper;->mValueLists:Ljava/util/Map;

    .line 695
    invoke-virtual {p0}, Lcom/google/android/voicesearch/GservicesHelper;->refreshGservicesValues()V

    .line 696
    new-instance v0, Ljava/util/Observable;

    invoke-direct {v0}, Ljava/util/Observable;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/GservicesHelper;->mObservable:Ljava/util/Observable;

    .line 697
    return-void
.end method

.method private getBoolean(Ljava/lang/String;Z)Z
    .locals 4
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 795
    iget-object v1, p0, Lcom/google/android/voicesearch/GservicesHelper;->mValues:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 796
    .local v0, valString:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 806
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 798
    .restart local p2
    :cond_1
    sget-object v1, Lcom/google/android/voicesearch/GservicesHelper;->TRUE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 799
    const/4 p2, 0x1

    goto :goto_0

    .line 800
    :cond_2
    sget-object v1, Lcom/google/android/voicesearch/GservicesHelper;->FALSE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 801
    const/4 p2, 0x0

    goto :goto_0

    .line 804
    :cond_3
    const-string v1, "GservicesHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attempt to read gservices key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (value \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\") as boolean"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getFloat(Ljava/lang/String;F)F
    .locals 4
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 780
    iget-object v2, p0, Lcom/google/android/voicesearch/GservicesHelper;->mValues:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 781
    .local v1, value:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 789
    .end local p2
    :goto_0
    return p2

    .line 786
    .restart local p2
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 787
    :catch_0
    move-exception v0

    .line 788
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v2, "GservicesHelper"

    const-string v3, "Gservices value is not a long"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getInt(Ljava/lang/String;I)I
    .locals 4
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 766
    iget-object v2, p0, Lcom/google/android/voicesearch/GservicesHelper;->mValues:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 767
    .local v1, value:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 775
    .end local p2
    :goto_0
    return p2

    .line 772
    .restart local p2
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 773
    :catch_0
    move-exception v0

    .line 774
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v2, "GservicesHelper"

    const-string v3, "Gservices value is not a long"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getList(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 739
    iget-object v2, p0, Lcom/google/android/voicesearch/GservicesHelper;->mValueLists:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 740
    .local v0, list:[Ljava/lang/String;
    if-nez v0, :cond_1

    .line 741
    iget-object v2, p0, Lcom/google/android/voicesearch/GservicesHelper;->mValues:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 742
    .local v1, value:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 743
    move-object v1, p2

    .line 745
    :cond_0
    invoke-direct {p0, v1}, Lcom/google/android/voicesearch/GservicesHelper;->parseArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 746
    iget-object v2, p0, Lcom/google/android/voicesearch/GservicesHelper;->mValueLists:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    .end local v1           #value:Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private getLong(Ljava/lang/String;J)J
    .locals 4
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 752
    iget-object v2, p0, Lcom/google/android/voicesearch/GservicesHelper;->mValues:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 753
    .local v1, value:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 761
    .end local p2
    :goto_0
    return-wide p2

    .line 758
    .restart local p2
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    goto :goto_0

    .line 759
    :catch_0
    move-exception v0

    .line 760
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v2, "GservicesHelper"

    const-string v3, "Gservices value is not a long"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .parameter "key"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
    .line 726
    iget-object v2, p0, Lcom/google/android/voicesearch/GservicesHelper;->mValueMaps:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 727
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_1

    .line 728
    iget-object v2, p0, Lcom/google/android/voicesearch/GservicesHelper;->mValues:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 729
    .local v1, value:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 730
    move-object v1, p2

    .line 732
    :cond_0
    invoke-direct {p0, v1}, Lcom/google/android/voicesearch/GservicesHelper;->parseMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 733
    iget-object v2, p0, Lcom/google/android/voicesearch/GservicesHelper;->mValueMaps:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    .end local v1           #value:Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 717
    iget-object v1, p0, Lcom/google/android/voicesearch/GservicesHelper;->mValues:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 718
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 722
    .end local p2
    :goto_0
    return-object p2

    .restart local p2
    :cond_0
    move-object p2, v0

    goto :goto_0
.end method

.method private parseArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 1258
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parseMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 1249
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1250
    .local v4, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, " "

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 1251
    .local v1, entry:Ljava/lang/String;
    const-string v6, ":"

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1252
    .local v5, token:[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v6, v5, v6

    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1250
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1254
    .end local v1           #entry:Ljava/lang/String;
    .end local v5           #token:[Ljava/lang/String;
    :cond_0
    return-object v4
.end method


# virtual methods
.method public getAdvancedFeaturesEnabled()Z
    .locals 2

    .prologue
    .line 1119
    const-string v0, "voice_search:advanced_features_enabled"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/GservicesHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getAlternateBackoffLanguages()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 834
    const-string v0, "voice_search:alternate_backoff_languages"

    const-string v1, "cs:cs-CZ de-AT:de-DE de-CH:de-DE de-LI:de-DE de:de-DE es:es-ES fr-BE:fr-FR fr-CA:fr-FR fr-CH:fr-FR fr:fr-FR id:id-ID in-ID:id-ID in:id-ID it-CH:it-IT it:it-IT ja:ja-JP ko:ko-KR ms-BN:ms-MY ms-SG:ms-MY ms:ms-MY nl-BE:nl-NL pl:pl-PL pt-AO:pt-BR pt-PT:pt-BR pt:pt-BR ru:ru-RU tr:tr-TR zh-CN:cmn-Hans-CN zh-HK:yue-Hant-HK zh-SG:cmn-Hans-CN zh-TW:cmn-Hant-TW zh:cmn-Hans-CN"

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/GservicesHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAlternateBackoffLanguagesMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 840
    const-string v0, "voice_search:alternate_backoff_languages"

    const-string v1, "cs:cs-CZ de-AT:de-DE de-CH:de-DE de-LI:de-DE de:de-DE es:es-ES fr-BE:fr-FR fr-CA:fr-FR fr-CH:fr-FR fr:fr-FR id:id-ID in-ID:id-ID in:id-ID it-CH:it-IT it:it-IT ja:ja-JP ko:ko-KR ms-BN:ms-MY ms-SG:ms-MY ms:ms-MY nl-BE:nl-NL pl:pl-PL pt-AO:pt-BR pt-PT:pt-BR pt:pt-BR ru:ru-RU tr:tr-TR zh-CN:cmn-Hans-CN zh-HK:yue-Hant-HK zh-SG:cmn-Hans-CN zh-TW:cmn-Hant-TW zh:cmn-Hans-CN"

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/GservicesHelper;->getMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getAlternateMaxSpanLength()I
    .locals 2

    .prologue
    .line 1173
    const-string v0, "voice_search:alternate_max_span_length"

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/GservicesHelper;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getAlternateMaxTotalSpanLength()I
    .locals 2

    .prologue
    .line 1182
    const-string v0, "voice_search:partial_result_min_confidence"

    const/16 v1, 0xfa

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/GservicesHelper;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getAudioEncoding3G()Ljava/lang/String;
    .locals 2

    .prologue
    .line 966
    const-string v0, "voice_search:encoding_three_g"

    const-string v1, "AMR_NB"

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/GservicesHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAudioEncodingWifi()Ljava/lang/String;
    .locals 2

    .prologue
    .line 974
    const-string v0, "voice_search:encoding_wifi"

    const-string v1, "AMR_NB"

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/GservicesHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionRetries()I
    .locals 2

    .prologue
    .line 1047
    const-string v0, "voice_search:connection_tries"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/GservicesHelper;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDelayBetweenCommittingNewText()J
    .locals 3

    .prologue
    .line 1165
    const-string v0, "voice_search:delay_between_pcommitting_new_text_msec"

    const-wide/16 v1, 0xc8

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/voicesearch/GservicesHelper;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDictationTimeout()I
    .locals 2

    .prologue
    .line 1038
    const-string v0, "voice_search:dictation_timeout_ms"

    const v1, 0x1adb0

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/GservicesHelper;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDirectTcpEnabled()Z
    .locals 2

    .prologue
    .line 1130
    const-string v0, "voice_search:use_direct_tcp"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/GservicesHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getDirectTcpHost()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1139
    const-string v0, "voice_search:direct_tcp_host"

    const-string v1, "74.125.95.192"

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/GservicesHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDirectTcpPort()I
    .locals 2

    .prologue
    .line 1148
    const-string v0, "voice_search:direct_tcp_port"

    const/16 v1, 0x37ad

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/GservicesHelper;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDirectTcpPrefix()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1157
    const-string v0, "voice_search:direct_tcp_prefix"

    const-string v1, "2d38_3a5c_0556_c713"

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/GservicesHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEndResultTimout()I
    .locals 2

    .prologue
    .line 1065
    const-string v0, "voice_search:end_result_timeout_ms"

    const/16 v1, 0x32c8

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/GservicesHelper;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getEndpointerCompleteSilenceMillis()J
    .locals 3

    .prologue
    .line 982
    const-string v0, "voice_search:endpointer_complete_silence_ms"

    const-wide/16 v1, 0x2ee

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/voicesearch/GservicesHelper;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getEndpointerPossiblyCompleteSilenceMillis()J
    .locals 3

    .prologue
    .line 991
    const-string v0, "voice_search:endpointer_possibly_complete_silence_ms"

    const-wide/16 v1, -0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/voicesearch/GservicesHelper;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getExtraTotalResultTimeout()I
    .locals 2

    .prologue
    .line 1074
    const-string v0, "voice_search:extra_total_result_timeout_ms"

    const/16 v1, 0x7d0

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/GservicesHelper;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getFeedbackUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 922
    const-string v0, "voice_search:help_center_url"

    const-string v1, "http://www.google.com/mobile/voicesearch/feedback"

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/GservicesHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHelpCenterUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 929
    const-string v1, "voice_search:help_center_url"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/google/android/voicesearch/GservicesHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 930
    .local v0, override:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 931
    iget-object v1, p0, Lcom/google/android/voicesearch/GservicesHelper;->mContext:Landroid/content/Context;

    const-string v2, "voicesearch_all"

    invoke-static {v1, v2}, Lcom/google/android/gsf/HelpUrl;->getHelpUrl(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 933
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method public getHelpHintBubbleMaxAppStartCount()I
    .locals 2

    .prologue
    .line 1018
    const-string v0, "voice_search:help_hint_bubble_max_app_start_count"

    const/16 v1, 0xf

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/GservicesHelper;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHelpHintBubbleMaxHelpCount()I
    .locals 2

    .prologue
    .line 1009
    const-string v0, "voice_search:help_hint_bubble_max_help_count"

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/GservicesHelper;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHelpVideoUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 915
    const-string v0, "voice_search:help_video_url"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/GservicesHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHintDisplayThreshold()I
    .locals 2

    .prologue
    .line 1000
    const-string v0, "voice_search:hint_display_threshold"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/GservicesHelper;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getImeBackoffLanguages()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1214
    const-string v0, "voice_search:ime_backoff_languages"

    const-string v1, "cs:cs-CZ de-AT:de-DE de-CH:de-DE de-LI:de-DE de:de-DE en:en-001 es:es-ES fr-BE:fr-FR fr-CA:fr-FR fr-CH:fr-FR fr:fr-FR id:id-ID in-ID:id-ID in:id-ID it-CH:it-IT it:it-IT ja:ja-JP ko:ko-KR ms-BN:ms-MY ms-SG:ms-MY ms:ms-MY nl-BE:nl-NL nl:nl-NL pl:pl-PL pt-AO:pt-BR pt-PT:pt-BR pt:pt-BR ru:ru-RU tr:tr-TR zh-CN:cmn-Hans-CN zh-HK:yue-Hant-HK zh-SG:cmn-Hans-CN zh-TW:cmn-Hant-TW zh:cmn-Hans-CN"

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/GservicesHelper;->getMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getImeEditDistanceMaxContiguousChars()I
    .locals 2

    .prologue
    .line 1229
    const-string v0, "voice_search:ime_edit_distance_max_contiguous_chars"

    const/16 v1, 0xf

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/GservicesHelper;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getImeEditDistanceMaxNewCharsPerc()I
    .locals 2

    .prologue
    .line 1239
    const-string v0, "voice_search:ime_edit_distance_max_new_chars_perc"

    const/16 v1, 0x32

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/GservicesHelper;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getImeSupportedLanguages()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 1207
    const-string v0, "voice_search:ime_supported_languages"

    const-string v1, "af-ZA cmn-Hans-CN cmn-Hans-HK cmn-Hant-TW yue-Hant-HK cs-CZ nl-NL en-AU en-CA en-IN en-NZ en-ZA en-GB en-US en-001 fr-FR de-DE id-ID zu-ZA it-IT ja-JP ko-KR ms-MY pl-PL pt-BR ru-RU es-AR es-BO es-CL es-CO es-CR es-DO es-EC es-SV es-GT es-HN es-MX es-NI es-PA es-PY es-PE es-PR es-ES es-US es-UY es-VE tr-TR "

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/GservicesHelper;->getList(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLanguageOverride()Ljava/lang/String;
    .locals 2

    .prologue
    .line 958
    const-string v0, "voice_search:language_override"

    sget-object v1, Lcom/google/android/voicesearch/GservicesHelper;->DEFAULT_LANGUAGE_OVERRIDE:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/GservicesHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMapBcp47ToJavaLocale()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1221
    const-string v0, "voice_search:map_bcp47_to_java_locales"

    const-string v1, "af-ZA:af_ZA cmn-Hans-CN:cmn_CN_Hans cmn-Hans-HK:cmn_HK_Hans cmn-Hant-TW:cmn_TW_Hant cs:cs cs-CZ:cs_CZ de:de de-AT:de_AT de-CH:de_CH de-DE:de_DE de-LI:de_LI en:en en-001:en_001 en-AU:en_AU en-CA:en_CA en-GB:en_GB en-IN:en_IN en-NZ:en_NZ en-US:en_US en-ZA:en_ZA es:es es-AR:es_AR es-BO:es_BO es-CL:es_CL es-CO:es_CO es-CR:es_CR es-DO:es_DO es-EC:es_EC es-ES:es_ES es-GT:es_GT es-HN:es_HN es-MX:es_MX es-NI:es_NI es-PA:es_PA es-PE:es_PE es-PR:es_PR es-PY:es_PY es-SV:es_SV es-US:es_US es-UY:es_UY es-VE:es_VE fr:fr fr-BE:fr_BE fr-CA:fr_CA fr-CH:fr_CH fr-FR:fr_FR id:id id-ID:id_ID in:in in-ID:in_ID it:it it-CH:it_CH it-IT:it_IT ja:ja ja-JP:ja_JP ja-JP:ja_JP ko:ko ko-KR:ko_KR ms:ms ms-BN:ms_BN ms-MY:ms_MY ms-SG:ms_SG nl:nl nl-BE:nl_BE nl-NL:nl_NL pl:pl pl-PL:pl_PL pt:pt pt-AO:pt_AO pt-BR:pt_BR pt-PT:pt_PT ru:ru ru-RU:ru_RU tr:tr tr-TR:tr_TR yue-Hant-HK:yue_HK_Hant zh:zh zh-CN:zh_CN zh-HK:zh_HK zh-SG:zh_SG zh-TW:zh_TW zu-ZA:zu_ZA"

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/GservicesHelper;->getMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getMobilePrivacyUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 875
    const-string v0, "voice_search:mobile_privacy_url"

    const-string v1, "http://www.google.com/mobile/privacy.html"

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/GservicesHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMofeHttpUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 891
    const-string v0, "voice_search:mofe_http_url"

    sget-object v1, Lcom/google/android/voicesearch/GservicesHelper;->DEFAULT_MOFE_HTTP_URL:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/GservicesHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMofeProtoUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 899
    const-string v0, "voice_search:mofe_proto_url"

    sget-object v1, Lcom/google/android/voicesearch/GservicesHelper;->DEFAULT_MOFE_PROTO_URL:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/GservicesHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationEnabled()I
    .locals 3

    .prologue
    .line 1093
    iget-object v0, p0, Lcom/google/android/voicesearch/GservicesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "maps_enable_navigation"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getNetworkTimeout()I
    .locals 2

    .prologue
    .line 1083
    const-string v0, "voice_search:network_timeout_ms"

    const/16 v1, 0x1388

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/GservicesHelper;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getObservable()Ljava/util/Observable;
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Lcom/google/android/voicesearch/GservicesHelper;->mObservable:Ljava/util/Observable;

    return-object v0
.end method

.method public getPartialResultMinConfidence()F
    .locals 2

    .prologue
    .line 1199
    const-string v0, "voice_search:partial_result_min_confidence"

    const v1, 0x3f666666

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/GservicesHelper;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getPersonalizationCountries()Ljava/lang/String;
    .locals 2

    .prologue
    .line 857
    const-string v0, "voice_search:personalization_v2_countries"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/GservicesHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPersonalizationDashboardUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 865
    const-string v0, "voice_search:personalization_dashboard_url"

    const-string v1, "https://www.google.com/dashboard/"

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/GservicesHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPersonalizationMoreInfoUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 870
    const-string v0, "voice_search:personalization_more_info_url"

    const-string v1, "http://www.google.com/support/mobile/bin/answer.py?answer=186263"

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/GservicesHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSearchUrlPrefix()Ljava/lang/String;
    .locals 2

    .prologue
    .line 942
    const-string v0, "voice_search:search_url_prefix"

    const-string v1, "http://www.google.com/m/search?v=UTF-8&source=mobilesearchapp-vs&channel=iss&uipref=6"

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/GservicesHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpeechTimeout()I
    .locals 2

    .prologue
    .line 1027
    const-string v0, "voice_search:speech_timeout_ms"

    const/16 v1, 0x2710

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/GservicesHelper;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSsfeUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 883
    const-string v0, "voice_search:url"

    const-string v1, "http://www.google.com/m/voice-search"

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/GservicesHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringResourceOverride(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "stringName"

    .prologue
    .line 1192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "voice_search:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/GservicesHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedActions()Ljava/lang/String;
    .locals 2

    .prologue
    .line 849
    const-string v0, "voice_search:supported_actions_new_numbering_scheme"

    const-string v1, "en-US:14,18,2,12,13,15,4,17,1,6,3 en-CA:2,3,4,1 en-GB:2,3,4,1 en-AU:2,3,4,1 en-NZ:2,3,4,1 en-IN:2,3,4,1 en-001:2,3,4,1 cmn-Hans-CN: cmn-Hant-TW: cmn-Hans-SG: ja-JP: de-DE: es-ES: fr-FR: it-IT: ko-KR: pl-PL: cs-CZ: ru-RU: tr-TR: pt-BR: nl-NL: af-ZA: en-ZA: zu-ZA: yue-Hant-HK:"

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/GservicesHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedLanguages()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 818
    const-string v0, "voice_search:supported_languages"

    const-string v1, "af-ZA cmn-Hans-CN cmn-Hans-HK cmn-Hant-TW yue-Hant-HK cs-CZ nl-NL en-AU en-CA en-IN en-NZ en-ZA en-GB en-US en-001 fr-FR de-DE id-ID zu-ZA it-IT ja-JP ko-KR ms-MY pl-PL pt-BR ru-RU es-AR es-BO es-CL es-CO es-CR es-DO es-EC es-SV es-GT es-HN es-MX es-NI es-PA es-PY es-PE es-PR es-ES es-US es-UY es-VE tr-TR Latin Pig-Latin"

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/GservicesHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedLanguagesList()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 823
    const-string v0, "voice_search:supported_languages"

    const-string v1, "af-ZA cmn-Hans-CN cmn-Hans-HK cmn-Hant-TW yue-Hant-HK cs-CZ nl-NL en-AU en-CA en-IN en-NZ en-ZA en-GB en-US en-001 fr-FR de-DE id-ID zu-ZA it-IT ja-JP ko-KR ms-MY pl-PL pt-BR ru-RU es-AR es-BO es-CL es-CO es-CR es-DO es-EC es-SV es-GT es-HN es-MX es-NI es-PA es-PY es-PE es-PR es-ES es-US es-UY es-VE tr-TR Latin Pig-Latin"

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/GservicesHelper;->getList(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTcpAttempts()I
    .locals 2

    .prologue
    .line 1056
    const-string v0, "voice_search:tcp_attempts"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/GservicesHelper;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getUtteranceLengthTimoutFactor()F
    .locals 2

    .prologue
    .line 1102
    const-string v0, "voice_search:utterance_length_timeout_factor"

    const/high16 v1, 0x3f00

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/GservicesHelper;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public handleGservicesChange(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 1244
    invoke-virtual {p0}, Lcom/google/android/voicesearch/GservicesHelper;->refreshGservicesValues()V

    .line 1245
    iget-object v0, p0, Lcom/google/android/voicesearch/GservicesHelper;->mObservable:Ljava/util/Observable;

    invoke-virtual {v0}, Ljava/util/Observable;->notifyObservers()V

    .line 1246
    return-void
.end method

.method protected refreshGservicesValues()V
    .locals 4

    .prologue
    .line 706
    iget-object v0, p0, Lcom/google/android/voicesearch/GservicesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "voice_search:"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gsf/Gservices;->getStringsByPrefix(Landroid/content/ContentResolver;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/GservicesHelper;->mValues:Ljava/util/Map;

    .line 708
    iget-object v0, p0, Lcom/google/android/voicesearch/GservicesHelper;->mValueMaps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 709
    iget-object v0, p0, Lcom/google/android/voicesearch/GservicesHelper;->mValueLists:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 710
    return-void
.end method
