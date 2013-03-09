.class public Lcom/google/android/apps/uploader/googlemobile/common/I18n;
.super Ljava/lang/Object;


# static fields
.field private static final RESOURCE_SIGNATURE_AND_VERSION:I = 0xfab2

.field private static STRING_RESOURCE:Ljava/lang/String;

.field private static instance:Lcom/google/android/apps/uploader/googlemobile/common/I18n;


# instance fields
.field private embeddedLocalizedStrings:[Ljava/lang/String;

.field private remoteLocalizedStrings:[Ljava/lang/String;

.field private systemLanguage:Ljava/lang/String;

.field private systemLocale:Ljava/lang/String;

.field private uiLanguage:Ljava/lang/String;

.field private uiLocale:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "/strings.dat"

    sput-object v0, Lcom/google/android/apps/uploader/googlemobile/common/I18n;->STRING_RESOURCE:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/apps/uploader/googlemobile/common/I18n;->instance:Lcom/google/android/apps/uploader/googlemobile/common/I18n;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/I18n;->embeddedLocalizedStrings:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/I18n;->remoteLocalizedStrings:[Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/apps/uploader/googlemobile/common/I18n;->calculateSystemLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/googlemobile/common/I18n;->setSystemLocale(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/common/I18n;->locale()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/googlemobile/common/I18n;->setUiLocale(Ljava/lang/String;)V

    return-void
.end method

.method private static calculateSystemLocale(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/google/android/apps/uploader/googlemobile/common/I18n;->normalizeLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "microedition.locale"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/uploader/googlemobile/common/I18n;->normalizeLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "en"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static embed(I)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/common/I18n;->getInstance()Lcom/google/android/apps/uploader/googlemobile/common/I18n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/apps/uploader/googlemobile/common/I18n;->getEmbeddedLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static embed(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static get(I)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/common/I18n;->getInstance()Lcom/google/android/apps/uploader/googlemobile/common/I18n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/apps/uploader/googlemobile/common/I18n;->getRemoteLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBestLocaleMatch(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x0

    invoke-static {p0}, Lcom/google/android/apps/uploader/googlemobile/common/I18n;->optimizeLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/common/I18n;->getLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    move v3, v2

    move v4, v7

    move v2, v7

    :goto_0
    array-length v5, p1

    if-ge v2, v5, :cond_2

    aget-object v5, p1, v2

    if-nez v2, :cond_1

    const/4 v6, 0x1

    :goto_1
    invoke-static {v0, v1, v5, v6}, Lcom/google/android/apps/uploader/googlemobile/common/I18n;->getLocaleMatchLevel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v5

    if-le v5, v3, :cond_0

    move v3, v5

    move v4, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v6, v7

    goto :goto_1

    :cond_2
    aget-object v0, p1, v4

    return-object v0
.end method

.method private static getInstance()Lcom/google/android/apps/uploader/googlemobile/common/I18n;
    .locals 2

    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/common/I18n;->instance:Lcom/google/android/apps/uploader/googlemobile/common/I18n;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "I18n must be initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/common/I18n;->instance:Lcom/google/android/apps/uploader/googlemobile/common/I18n;

    return-object v0
.end method

.method public static getLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x5f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    :cond_0
    if-gez v0, :cond_1

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getLocaleMatchLevel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 1

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static init(Ljava/lang/String;)Lcom/google/android/apps/uploader/googlemobile/common/I18n;
    .locals 1

    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/common/I18n;

    invoke-direct {v0, p0}, Lcom/google/android/apps/uploader/googlemobile/common/I18n;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/uploader/googlemobile/common/I18n;->instance:Lcom/google/android/apps/uploader/googlemobile/common/I18n;

    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/common/I18n;->instance:Lcom/google/android/apps/uploader/googlemobile/common/I18n;

    return-object v0
.end method

.method static locale()Ljava/lang/String;
    .locals 1

    const-string v0, "en"

    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/debug/DebugUtil;->getAntPropertyOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static normalizeLocale(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/16 v2, 0x5f

    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    const-string v0, "en"

    if-eqz p0, :cond_1

    const/16 v1, 0x2d

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/google/android/apps/uploader/googlemobile/common/util/text/TextUtil;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v1

    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v5, :cond_0

    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    :cond_0
    aget-object v0, v1, v4

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    array-length v2, v1

    if-lt v2, v5, :cond_1

    aget-object v2, v1, v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v5, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v1, v6

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private static optimizeLocale(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string v0, "en"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "en_AU"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "en_NZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "en_GB"

    goto :goto_0

    :cond_2
    const-string v0, "nb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "no"

    goto :goto_0

    :cond_3
    move-object v0, p0

    goto :goto_0
.end method


# virtual methods
.method forceUiLocaleForTesting(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/google/android/apps/uploader/googlemobile/common/I18n;->normalizeLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/I18n;->uiLocale:Ljava/lang/String;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/I18n;->systemLocale:Ljava/lang/String;

    goto :goto_0
.end method

.method public getEmbeddedLocalizedString(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/I18n;->embeddedLocalizedStrings:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/I18n;->embeddedLocalizedStrings:[Ljava/lang/String;

    aget-object v0, v0, p1

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getRemoteLocalizedString(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/I18n;->remoteLocalizedStrings:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/I18n;->remoteLocalizedStrings:[Ljava/lang/String;

    aget-object v0, v0, p1

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getSystemLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/I18n;->systemLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemLocale()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/I18n;->systemLocale:Ljava/lang/String;

    return-object v0
.end method

.method public getUiLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/I18n;->uiLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getUiLocale()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/I18n;->uiLocale:Ljava/lang/String;

    return-object v0
.end method

.method public isRTL()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/I18n;->uiLanguage:Ljava/lang/String;

    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/I18n;->uiLocale:Ljava/lang/String;

    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/I18n;->uiLanguage:Ljava/lang/String;

    const-string v1, "fa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/I18n;->uiLocale:Ljava/lang/String;

    const-string v1, "fa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/I18n;->uiLanguage:Ljava/lang/String;

    const-string v1, "he"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/I18n;->uiLocale:Ljava/lang/String;

    const-string v1, "he"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadStringResources(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    invoke-static {p1}, Lcom/google/android/apps/uploader/googlemobile/common/I18n;->optimizeLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/uploader/googlemobile/common/I18n;->STRING_RESOURCE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/uploader/googlemobile/common/I18n;->STRING_RESOURCE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/apps/uploader/googlemobile/common/I18n;->loadStringResourcesFromInputStream(Ljava/lang/String;Ljava/io/InputStream;Z)[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-static {v1}, Lcom/google/android/apps/uploader/googlemobile/common/io/IoUtil;->closeInputStream(Ljava/io/InputStream;)V

    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/google/android/apps/uploader/googlemobile/common/I18n;->STRING_RESOURCE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/google/android/apps/uploader/googlemobile/common/io/IoUtil;->closeInputStream(Ljava/io/InputStream;)V

    throw v0
.end method

.method public loadStringResourcesFromInputStream(Ljava/lang/String;Ljava/io/InputStream;Z)[Ljava/lang/String;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/uploader/googlemobile/common/I18n;->optimizeLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/uploader/googlemobile/common/I18n;->getLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez p2, :cond_0

    new-instance v2, Ljava/io/IOException;

    const-string v3, "resourceInputStream is null"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    new-instance v4, Ljava/io/DataInputStream;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v4}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v5

    const v6, 0xfab2

    if-eq v5, v6, :cond_1

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Bum string resources signature"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const/4 v5, 0x0

    invoke-interface {v4}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v6

    invoke-interface {v4}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v7

    if-lez v7, :cond_6

    if-lez v6, :cond_6

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v15, v10

    move-object v10, v5

    move v5, v15

    move/from16 v16, v8

    move v8, v9

    move/from16 v9, v16

    :goto_0
    if-ge v5, v7, :cond_4

    invoke-interface {v4}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v4}, Ljava/io/DataInput;->readInt()I

    move-result v13

    if-nez v5, :cond_3

    const/4 v14, 0x1

    :goto_1
    invoke-static {v2, v3, v12, v14}, Lcom/google/android/apps/uploader/googlemobile/common/I18n;->getLocaleMatchLevel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v12

    if-le v12, v9, :cond_2

    move v8, v13

    move v9, v12

    move-object v10, v11

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    const/4 v14, 0x0

    goto :goto_1

    :cond_4
    const/4 v2, -0x1

    if-ne v9, v2, :cond_5

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Empty string resources"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    invoke-static {v4, v8}, Lcom/google/android/apps/uploader/googlemobile/common/io/IoUtil;->skipBytes(Ljava/io/DataInput;I)V

    new-array v2, v6, [Ljava/lang/String;

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v6, :cond_7

    invoke-interface {v4}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Bum string resources"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    if-eqz p3, :cond_8

    move-object v0, v10

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/uploader/googlemobile/common/I18n;->uiLocale:Ljava/lang/String;

    :cond_8
    return-object v2
.end method

.method public setRemoteLocalizedStrings([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/uploader/googlemobile/common/I18n;->remoteLocalizedStrings:[Ljava/lang/String;

    return-void
.end method

.method public setSystemLocale(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/apps/uploader/googlemobile/common/I18n;->normalizeLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/I18n;->systemLocale:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/I18n;->systemLocale:Ljava/lang/String;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/I18n;->systemLocale:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/I18n;->systemLanguage:Ljava/lang/String;

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/I18n;->systemLocale:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setUiLocale(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/google/android/apps/uploader/googlemobile/common/I18n;->normalizeLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/I18n;->uiLocale:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/I18n;->uiLocale:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/common/I18n;->getLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/I18n;->uiLanguage:Ljava/lang/String;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/I18n;->systemLocale:Ljava/lang/String;

    goto :goto_0
.end method
