.class public Lorg/apache/xml/utils/res/XResourceBundle;
.super Ljava/util/ListResourceBundle;
.source "XResourceBundle.java"


# static fields
.field public static final ERROR_RESOURCES:Ljava/lang/String; = "org.apache.xalan.res.XSLTErrorResources"

.field public static final LANG_ADDITIVE:Ljava/lang/String; = "additive"

.field public static final LANG_ALPHABET:Ljava/lang/String; = "alphabet"

.field public static final LANG_BUNDLE_NAME:Ljava/lang/String; = "org.apache.xml.utils.res.XResources"

.field public static final LANG_LEFTTORIGHT:Ljava/lang/String; = "leftToRight"

.field public static final LANG_MULTIPLIER:Ljava/lang/String; = "multiplier"

.field public static final LANG_MULTIPLIER_CHAR:Ljava/lang/String; = "multiplierChar"

.field public static final LANG_MULT_ADD:Ljava/lang/String; = "multiplicative-additive"

.field public static final LANG_NUMBERGROUPS:Ljava/lang/String; = "numberGroups"

.field public static final LANG_NUMBERING:Ljava/lang/String; = "numbering"

.field public static final LANG_NUM_TABLES:Ljava/lang/String; = "tables"

.field public static final LANG_ORIENTATION:Ljava/lang/String; = "orientation"

.field public static final LANG_RIGHTTOLEFT:Ljava/lang/String; = "rightToLeft"

.field public static final LANG_TRAD_ALPHABET:Ljava/lang/String; = "tradAlphabet"

.field public static final MULT_FOLLOWS:Ljava/lang/String; = "follows"

.field public static final MULT_ORDER:Ljava/lang/String; = "multiplierOrder"

.field public static final MULT_PRECEDES:Ljava/lang/String; = "precedes"

.field public static final XSLT_RESOURCE:Ljava/lang/String; = "org.apache.xml.utils.res.XResourceBundle"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/ListResourceBundle;-><init>()V

    return-void
.end method

.method private static final getResourceSuffix(Ljava/util/Locale;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "zh"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    const-string v4, "JP"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    return-object v2
.end method

.method public static final loadResourceBundle(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/xml/utils/res/XResourceBundle;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    invoke-static {p1}, Lorg/apache/xml/utils/res/XResourceBundle;->getResourceSuffix(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v4

    check-cast v4, Lorg/apache/xml/utils/res/XResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v4

    :catch_0
    move-exception v0

    :try_start_1
    const-string v4, "org.apache.xml.utils.res.XResourceBundle"

    new-instance v5, Ljava/util/Locale;

    const-string v6, "en"

    const-string v7, "US"

    invoke-direct {v5, v6, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v5}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v4

    check-cast v4, Lorg/apache/xml/utils/res/XResourceBundle;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    new-instance v4, Ljava/util/MissingResourceException;

    const-string v5, "Could not load any resource bundles."

    const-string v6, ""

    invoke-direct {v4, v5, p0, v6}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public getContents()[[Ljava/lang/Object;
    .locals 9

    const/16 v8, 0x1a

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x7

    new-array v0, v0, [[Ljava/lang/Object;

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "ui_language"

    aput-object v2, v1, v5

    const-string v2, "en"

    aput-object v2, v1, v6

    aput-object v1, v0, v5

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "help_language"

    aput-object v2, v1, v5

    const-string v2, "en"

    aput-object v2, v1, v6

    aput-object v1, v0, v6

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "language"

    aput-object v2, v1, v5

    const-string v2, "en"

    aput-object v2, v1, v6

    aput-object v1, v0, v7

    const/4 v1, 0x3

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "alphabet"

    aput-object v3, v2, v5

    new-instance v3, Lorg/apache/xml/utils/res/CharArrayWrapper;

    new-array v4, v8, [C

    fill-array-data v4, :array_0

    invoke-direct {v3, v4}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "tradAlphabet"

    aput-object v3, v2, v5

    new-instance v3, Lorg/apache/xml/utils/res/CharArrayWrapper;

    new-array v4, v8, [C

    fill-array-data v4, :array_1

    invoke-direct {v3, v4}, Lorg/apache/xml/utils/res/CharArrayWrapper;-><init>([C)V

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "orientation"

    aput-object v3, v2, v5

    const-string v3, "LeftToRight"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "numbering"

    aput-object v3, v2, v5

    const-string v3, "additive"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    return-object v0

    nop

    :array_0
    .array-data 0x2
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
        0x47t 0x0t
        0x48t 0x0t
        0x49t 0x0t
        0x4at 0x0t
        0x4bt 0x0t
        0x4ct 0x0t
        0x4dt 0x0t
        0x4et 0x0t
        0x4ft 0x0t
        0x50t 0x0t
        0x51t 0x0t
        0x52t 0x0t
        0x53t 0x0t
        0x54t 0x0t
        0x55t 0x0t
        0x56t 0x0t
        0x57t 0x0t
        0x58t 0x0t
        0x59t 0x0t
        0x5at 0x0t
    .end array-data

    :array_1
    .array-data 0x2
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
        0x47t 0x0t
        0x48t 0x0t
        0x49t 0x0t
        0x4at 0x0t
        0x4bt 0x0t
        0x4ct 0x0t
        0x4dt 0x0t
        0x4et 0x0t
        0x4ft 0x0t
        0x50t 0x0t
        0x51t 0x0t
        0x52t 0x0t
        0x53t 0x0t
        0x54t 0x0t
        0x55t 0x0t
        0x56t 0x0t
        0x57t 0x0t
        0x58t 0x0t
        0x59t 0x0t
        0x5at 0x0t
    .end array-data
.end method
