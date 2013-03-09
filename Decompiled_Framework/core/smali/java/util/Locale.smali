.class public final Ljava/util/Locale;
.super Ljava/lang/Object;
.source "Locale.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CANADA:Ljava/util/Locale; = null

.field public static final CANADA_FRENCH:Ljava/util/Locale; = null

.field public static final CHINA:Ljava/util/Locale; = null

.field public static final CHINESE:Ljava/util/Locale; = null

.field public static final ENGLISH:Ljava/util/Locale; = null

.field public static final FRANCE:Ljava/util/Locale; = null

.field public static final FRENCH:Ljava/util/Locale; = null

.field public static final GERMAN:Ljava/util/Locale; = null

.field public static final GERMANY:Ljava/util/Locale; = null

.field public static final ITALIAN:Ljava/util/Locale; = null

.field public static final ITALY:Ljava/util/Locale; = null

.field public static final JAPAN:Ljava/util/Locale; = null

.field public static final JAPANESE:Ljava/util/Locale; = null

.field public static final KOREA:Ljava/util/Locale; = null

.field public static final KOREAN:Ljava/util/Locale; = null

.field public static final PRC:Ljava/util/Locale; = null

.field public static final ROOT:Ljava/util/Locale; = null

.field public static final SIMPLIFIED_CHINESE:Ljava/util/Locale; = null

.field public static final TAIWAN:Ljava/util/Locale; = null

.field public static final TRADITIONAL_CHINESE:Ljava/util/Locale; = null

.field public static final UK:Ljava/util/Locale; = null

.field public static final US:Ljava/util/Locale; = null

.field private static defaultLocale:Ljava/util/Locale; = null

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField; = null

.field private static final serialVersionUID:J = 0x7ef811609c30f9ecL


# instance fields
.field private transient cachedToStringResult:Ljava/lang/String;

.field private transient countryCode:Ljava/lang/String;

.field private transient languageCode:Ljava/lang/String;

.field private transient variantCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x1

    new-instance v3, Ljava/util/Locale;

    const-string v4, "en"

    const-string v5, "CA"

    invoke-direct {v3, v8, v4, v5}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->CANADA:Ljava/util/Locale;

    new-instance v3, Ljava/util/Locale;

    const-string v4, "fr"

    const-string v5, "CA"

    invoke-direct {v3, v8, v4, v5}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->CANADA_FRENCH:Ljava/util/Locale;

    new-instance v3, Ljava/util/Locale;

    const-string v4, "zh"

    const-string v5, "CN"

    invoke-direct {v3, v8, v4, v5}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    new-instance v3, Ljava/util/Locale;

    const-string v4, "zh"

    const-string v5, ""

    invoke-direct {v3, v8, v4, v5}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    new-instance v3, Ljava/util/Locale;

    const-string v4, "en"

    const-string v5, ""

    invoke-direct {v3, v8, v4, v5}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-instance v3, Ljava/util/Locale;

    const-string v4, "fr"

    const-string v5, "FR"

    invoke-direct {v3, v8, v4, v5}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    new-instance v3, Ljava/util/Locale;

    const-string v4, "fr"

    const-string v5, ""

    invoke-direct {v3, v8, v4, v5}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->FRENCH:Ljava/util/Locale;

    new-instance v3, Ljava/util/Locale;

    const-string v4, "de"

    const-string v5, ""

    invoke-direct {v3, v8, v4, v5}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    new-instance v3, Ljava/util/Locale;

    const-string v4, "de"

    const-string v5, "DE"

    invoke-direct {v3, v8, v4, v5}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    new-instance v3, Ljava/util/Locale;

    const-string v4, "it"

    const-string v5, ""

    invoke-direct {v3, v8, v4, v5}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->ITALIAN:Ljava/util/Locale;

    new-instance v3, Ljava/util/Locale;

    const-string v4, "it"

    const-string v5, "IT"

    invoke-direct {v3, v8, v4, v5}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    new-instance v3, Ljava/util/Locale;

    const-string v4, "ja"

    const-string v5, "JP"

    invoke-direct {v3, v8, v4, v5}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    new-instance v3, Ljava/util/Locale;

    const-string v4, "ja"

    const-string v5, ""

    invoke-direct {v3, v8, v4, v5}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    new-instance v3, Ljava/util/Locale;

    const-string v4, "ko"

    const-string v5, "KR"

    invoke-direct {v3, v8, v4, v5}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    new-instance v3, Ljava/util/Locale;

    const-string v4, "ko"

    const-string v5, ""

    invoke-direct {v3, v8, v4, v5}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    new-instance v3, Ljava/util/Locale;

    const-string v4, "zh"

    const-string v5, "CN"

    invoke-direct {v3, v8, v4, v5}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->PRC:Ljava/util/Locale;

    new-instance v3, Ljava/util/Locale;

    const-string v4, ""

    const-string v5, ""

    invoke-direct {v3, v8, v4, v5}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-instance v3, Ljava/util/Locale;

    const-string v4, "zh"

    const-string v5, "CN"

    invoke-direct {v3, v8, v4, v5}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    new-instance v3, Ljava/util/Locale;

    const-string v4, "zh"

    const-string v5, "TW"

    invoke-direct {v3, v8, v4, v5}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    new-instance v3, Ljava/util/Locale;

    const-string v4, "zh"

    const-string v5, "TW"

    invoke-direct {v3, v8, v4, v5}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    new-instance v3, Ljava/util/Locale;

    const-string v4, "en"

    const-string v5, "GB"

    invoke-direct {v3, v8, v4, v5}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    new-instance v3, Ljava/util/Locale;

    const-string v4, "en"

    const-string v5, "US"

    invoke-direct {v3, v8, v4, v5}, Ljava/util/Locale;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    sput-object v3, Ljava/util/Locale;->defaultLocale:Ljava/util/Locale;

    const-string v3, "user.language"

    const-string v4, "en"

    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "user.region"

    const-string v4, "US"

    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "user.variant"

    const-string v4, ""

    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Ljava/util/Locale;->defaultLocale:Ljava/util/Locale;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/io/ObjectStreamField;

    const/4 v4, 0x0

    new-instance v5, Ljava/io/ObjectStreamField;

    const-string v6, "country"

    const-class v7, Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v5, v3, v4

    new-instance v4, Ljava/io/ObjectStreamField;

    const-string v5, "hashcode"

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v4, v5, v6}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v4, v3, v8

    const/4 v4, 0x2

    new-instance v5, Ljava/io/ObjectStreamField;

    const-string v6, "language"

    const-class v7, Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v5, v3, v4

    const/4 v4, 0x3

    new-instance v5, Ljava/io/ObjectStreamField;

    const-string v6, "variant"

    const-class v7, Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v5, v3, v4

    sput-object v3, Ljava/util/Locale;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, ""

    const-string v1, ""

    invoke-direct {p0, p1, v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ""

    iput-object v0, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    iput-object p3, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    :goto_0
    return-void

    :cond_2
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    iget-object v0, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    const-string v1, "he"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "iw"

    iput-object v0, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    :cond_3
    :goto_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    iput-object p3, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    const-string v1, "id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "in"

    iput-object v0, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    goto :goto_1

    :cond_5
    iget-object v0, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    const-string v1, "yi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "ji"

    iput-object v0, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    goto :goto_1
.end method

.method private constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    iput-object p3, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    return-void
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    invoke-static {}, Llibcore/icu/ICU;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static getDefault()Ljava/util/Locale;
    .locals 1

    sget-object v0, Ljava/util/Locale;->defaultLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public static getISOCountries()[Ljava/lang/String;
    .locals 1

    invoke-static {}, Llibcore/icu/ICU;->getISOCountries()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getISOLanguages()[Ljava/lang/String;
    .locals 1

    invoke-static {}, Llibcore/icu/ICU;->getISOLanguages()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    const-string v1, "country"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    const-string v1, "language"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    const-string v1, "variant"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized setDefault(Ljava/util/Locale;)V
    .locals 2

    const-class v1, Ljava/util/Locale;

    monitor-enter v1

    if-nez p0, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    sput-object p0, Ljava/util/Locale;->defaultLocale:Ljava/util/Locale;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void
.end method

.method private toNewString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x5f

    iget-object v1, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ""

    :goto_0
    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    iget-object v1, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    const-string v1, "country"

    iget-object v2, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "hashcode"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    const-string v1, "language"

    iget-object v2, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "variant"

    iget-object v2, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v3, p1, Ljava/util/Locale;

    if-eqz v3, :cond_3

    move-object v0, p1

    check-cast v0, Ljava/util/Locale;

    iget-object v3, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    iget-object v4, v0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    iget-object v4, v0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    iget-object v4, v0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getDisplayCountry()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, ""

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Llibcore/icu/ICU;->getDisplayCountryNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Llibcore/icu/ICU;->getDisplayCountryNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getDisplayLanguage()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, ""

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Llibcore/icu/ICU;->getDisplayLanguageNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Llibcore/icu/ICU;->getDisplayLanguageNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0, p1}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v3, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    :cond_1
    iget-object v5, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    if-ne v1, v6, :cond_2

    const-string v5, " ("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p0, p1}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v2, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    :cond_4
    iget-object v5, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    if-ne v1, v6, :cond_9

    const-string v5, " ("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    :goto_0
    invoke-virtual {p0, p1}, Ljava/util/Locale;->getDisplayVariant(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v4, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    :cond_6
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    :cond_7
    if-le v1, v6, :cond_8

    const-string v5, ")"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_9
    const/4 v5, 0x2

    if-ne v1, v5, :cond_5

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public final getDisplayVariant()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Locale;->getDisplayVariant(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayVariant(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Llibcore/icu/ICU;->getDisplayVariantNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Llibcore/icu/ICU;->getDisplayVariantNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getISO3Country()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llibcore/icu/ICU;->getISO3CountryNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getISO3Language()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llibcore/icu/ICU;->getISO3LanguageNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    return-object v0
.end method

.method public getVariant()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized hashCode()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/util/Locale;->countryCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava/util/Locale;->languageCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Ljava/util/Locale;->variantCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/util/Locale;->cachedToStringResult:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0}, Ljava/util/Locale;->toNewString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Locale;->cachedToStringResult:Ljava/lang/String;

    :cond_0
    return-object v0
.end method
