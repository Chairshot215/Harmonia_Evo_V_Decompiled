.class public abstract Lorg/apache/http/impl/client/naf/auth/GbaSupportIndicatorRequestUpdaterAbstract;
.super Ljava/lang/Object;
.source "GbaSupportIndicatorRequestUpdaterAbstract.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/auth/GbaSupportIndicatorRequestUpdater;


# static fields
.field public static final USER_AGENT_HEADER_DELIMITER:Ljava/lang/String; = " "

.field public static final USER_AGENT_HEADER_NAME:Ljava/lang/String; = "User-Agent"

.field public static final USER_AGENT_HEADER_NAME_LOWECASE:Ljava/lang/String;


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;

.field private final userHeaderPredefined:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "User-Agent"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/impl/client/naf/auth/GbaSupportIndicatorRequestUpdaterAbstract;->USER_AGENT_HEADER_NAME_LOWECASE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/auth/GbaSupportIndicatorRequestUpdaterAbstract;->log:Lorg/apache/commons/logging/Log;

    iput-object p1, p0, Lorg/apache/http/impl/client/naf/auth/GbaSupportIndicatorRequestUpdaterAbstract;->userHeaderPredefined:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/auth/GbaSupportIndicatorRequestUpdaterAbstract;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GbaSupportIndicatorRequestUpdaterAbstract()   userHeaderPredefined="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method dumpAllHeaders(Lorg/apache/http/HttpRequest;)V
    .locals 10

    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v7, v0

    if-lez v7, :cond_3

    move-object v1, v0

    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v2, v1, v3

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/http/impl/client/naf/auth/GbaSupportIndicatorRequestUpdaterAbstract;->log:Lorg/apache/commons/logging/Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "HEADER:   "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v5, :cond_0

    const-string v5, "null"

    :cond_0
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v6, :cond_1

    const-string v6, "null"

    :cond_1
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lorg/apache/http/impl/client/naf/auth/GbaSupportIndicatorRequestUpdaterAbstract;->log:Lorg/apache/commons/logging/Log;

    const-string v8, "HEADER:   null"

    invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method protected abstract getContent(Lorg/apache/http/impl/client/naf/gba/GbaType;)Ljava/lang/String;
.end method

.method getUserAgentHeader(Lorg/apache/http/HttpRequest;)Lorg/apache/http/Header;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const-string v1, "User-Agent"

    invoke-interface {p1, v1}, Lorg/apache/http/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/http/impl/client/naf/auth/GbaSupportIndicatorRequestUpdaterAbstract;->getUserAgentHeaderCaseInsensitive(Lorg/apache/http/HttpRequest;)Lorg/apache/http/Header;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/http/impl/client/naf/auth/GbaSupportIndicatorRequestUpdaterAbstract;->dumpAllHeaders(Lorg/apache/http/HttpRequest;)V

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v1, p0, Lorg/apache/http/impl/client/naf/auth/GbaSupportIndicatorRequestUpdaterAbstract;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "httpRequest is null."

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method getUserAgentHeaderCaseInsensitive(Lorg/apache/http/HttpRequest;)Lorg/apache/http/Header;
    .locals 11

    const/4 v7, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v8, v0

    if-lez v8, :cond_2

    move-object v1, v0

    array-length v6, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v2, v1, v5

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    sget-object v8, Lorg/apache/http/impl/client/naf/auth/GbaSupportIndicatorRequestUpdaterAbstract;->USER_AGENT_HEADER_NAME_LOWECASE:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_1

    move-object v7, v2

    :cond_0
    :goto_1
    iget-object v8, p0, Lorg/apache/http/impl/client/naf/auth/GbaSupportIndicatorRequestUpdaterAbstract;->log:Lorg/apache/commons/logging/Log;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getUserAgentHeaderCaseInsensitive()#finished   userAgentHeader="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    return-object v7

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lorg/apache/http/impl/client/naf/auth/GbaSupportIndicatorRequestUpdaterAbstract;->log:Lorg/apache/commons/logging/Log;

    const-string v9, "allHeaders is empty or null. Let\'s try another way of searching header."

    invoke-interface {v8, v9}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    iget-object v8, p0, Lorg/apache/http/impl/client/naf/auth/GbaSupportIndicatorRequestUpdaterAbstract;->log:Lorg/apache/commons/logging/Log;

    const-string v9, "httpRequest is null."

    invoke-interface {v8, v9}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public update(Lorg/apache/http/HttpRequest;Lorg/apache/http/impl/client/naf/gba/GbaType;)V
    .locals 6

    invoke-virtual {p0, p2}, Lorg/apache/http/impl/client/naf/auth/GbaSupportIndicatorRequestUpdaterAbstract;->getContent(Lorg/apache/http/impl/client/naf/gba/GbaType;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    if-eqz p1, :cond_3

    invoke-virtual {p0, p1}, Lorg/apache/http/impl/client/naf/auth/GbaSupportIndicatorRequestUpdaterAbstract;->getUserAgentHeader(Lorg/apache/http/HttpRequest;)Lorg/apache/http/Header;

    move-result-object v2

    move-object v1, v0

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3, v1}, Lorg/apache/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/http/impl/client/naf/auth/GbaSupportIndicatorRequestUpdaterAbstract;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "USER-AGENT header has been updated with new value ... newUserAgentHeaderValue="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lorg/apache/http/impl/client/naf/auth/GbaSupportIndicatorRequestUpdaterAbstract;->userHeaderPredefined:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/apache/http/impl/client/naf/auth/GbaSupportIndicatorRequestUpdaterAbstract;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "User-Agent header hasn\'t been found, we need to create it and we have predefined value for it and it will be used"

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/auth/GbaSupportIndicatorRequestUpdaterAbstract;->userHeaderPredefined:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    const-string v3, "User-Agent"

    invoke-interface {p1, v3, v1}, Lorg/apache/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/http/impl/client/naf/auth/GbaSupportIndicatorRequestUpdaterAbstract;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "USER-AGENT header has been CREATED with ... newUserAgentHeaderValue="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lorg/apache/http/impl/client/naf/auth/GbaSupportIndicatorRequestUpdaterAbstract;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "httpRequest is null."

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lorg/apache/http/impl/client/naf/auth/GbaSupportIndicatorRequestUpdaterAbstract;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "newContent is null."

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_0
.end method
