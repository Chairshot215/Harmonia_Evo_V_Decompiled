.class public Lorg/apache/xml/res/XMLMessages;
.super Ljava/lang/Object;
.source "XMLMessages.java"


# static fields
.field protected static final BAD_CODE:Ljava/lang/String; = "BAD_CODE"

.field protected static final FORMAT_FAILED:Ljava/lang/String; = "FORMAT_FAILED"

.field private static XMLBundle:Ljava/util/ListResourceBundle;


# instance fields
.field protected fLocale:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/xml/res/XMLErrorResources;

    invoke-direct {v0}, Lorg/apache/xml/res/XMLErrorResources;-><init>()V

    sput-object v0, Lorg/apache/xml/res/XMLMessages;->XMLBundle:Ljava/util/ListResourceBundle;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/res/XMLMessages;->fLocale:Ljava/util/Locale;

    return-void
.end method

.method public static final createMsg(Ljava/util/ListResourceBundle;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 8

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/ListResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_0
    if-nez v3, :cond_1

    const-string v6, "BAD_CODE"

    invoke-virtual {p0, v6}, Ljava/util/ListResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    :cond_1
    if-eqz p2, :cond_4

    :try_start_0
    array-length v4, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_3

    aget-object v6, p2, v2

    if-nez v6, :cond_2

    const-string v6, ""

    aput-object v6, p2, v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v3, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    if-eqz v5, :cond_5

    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :catch_0
    move-exception v0

    const-string v6, "FORMAT_FAILED"

    invoke-virtual {p0, v6}, Ljava/util/ListResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    move-object v1, v3

    goto :goto_1

    :cond_5
    return-object v1
.end method

.method public static final createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/xml/res/XMLMessages;->XMLBundle:Ljava/util/ListResourceBundle;

    invoke-static {v0, p0, p1}, Lorg/apache/xml/res/XMLMessages;->createMsg(Ljava/util/ListResourceBundle;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getLocale()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/res/XMLMessages;->fLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xml/res/XMLMessages;->fLocale:Ljava/util/Locale;

    return-void
.end method
