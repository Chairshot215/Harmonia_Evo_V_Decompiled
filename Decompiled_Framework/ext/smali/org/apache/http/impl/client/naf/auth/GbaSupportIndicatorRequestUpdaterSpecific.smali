.class public Lorg/apache/http/impl/client/naf/auth/GbaSupportIndicatorRequestUpdaterSpecific;
.super Lorg/apache/http/impl/client/naf/auth/GbaSupportIndicatorRequestUpdaterAbstract;
.source "GbaSupportIndicatorRequestUpdaterSpecific.java"


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/naf/auth/GbaSupportIndicatorRequestUpdaterAbstract;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/auth/GbaSupportIndicatorRequestUpdaterSpecific;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method


# virtual methods
.method protected getContent(Lorg/apache/http/impl/client/naf/gba/GbaType;)Ljava/lang/String;
    .locals 4

    sget v1, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v1, v1, 0x2

    if-lez v1, :cond_0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/auth/GbaSupportIndicatorRequestUpdaterSpecific;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getContent()#started   gbaType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/apache/http/impl/client/naf/gba/GbaType;->getUserAgentIndicator()Ljava/lang/String;

    move-result-object v0

    :goto_0
    sget v1, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v1, v1, 0x4

    if-lez v1, :cond_1

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/auth/GbaSupportIndicatorRequestUpdaterSpecific;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getContent()#finished   userAgentIndicator="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_1
    return-object v0

    :cond_2
    sget-object v1, Lorg/apache/http/impl/client/naf/gba/GbaType;->GBA_NOT_SUPPORTED:Lorg/apache/http/impl/client/naf/gba/GbaType;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/naf/gba/GbaType;->getUserAgentIndicator()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
