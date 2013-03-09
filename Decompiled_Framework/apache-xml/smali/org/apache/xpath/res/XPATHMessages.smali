.class public Lorg/apache/xpath/res/XPATHMessages;
.super Lorg/apache/xml/res/XMLMessages;
.source "XPATHMessages.java"


# static fields
.field private static XPATHBundle:Ljava/util/ListResourceBundle; = null

.field private static final XPATH_ERROR_RESOURCES:Ljava/lang/String; = "org.apache.xpath.res.XPATHErrorResources"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/xpath/res/XPATHErrorResources;

    invoke-direct {v0}, Lorg/apache/xpath/res/XPATHErrorResources;-><init>()V

    sput-object v0, Lorg/apache/xpath/res/XPATHMessages;->XPATHBundle:Ljava/util/ListResourceBundle;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xml/res/XMLMessages;-><init>()V

    return-void
.end method

.method public static final createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/xpath/res/XPATHMessages;->XPATHBundle:Ljava/util/ListResourceBundle;

    invoke-static {v0, p0, p1}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMsg(Ljava/util/ListResourceBundle;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final createXPATHMsg(Ljava/util/ListResourceBundle;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
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

.method public static final createXPATHWarning(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/xpath/res/XPATHMessages;->XPATHBundle:Ljava/util/ListResourceBundle;

    invoke-static {v0, p0, p1}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMsg(Ljava/util/ListResourceBundle;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
