.class public Lorg/apache/http/impl/client/naf/realm/NafRealmParsed;
.super Ljava/lang/Object;
.source "NafRealmParsed.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/realm/NafRealmDataExtractor;


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;

.field private final nafRealParts:[Lorg/apache/http/impl/client/naf/realm/NafRealmPart;

.field private final unparsedContent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Lorg/apache/http/impl/client/naf/realm/NafRealmPart;)V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/realm/NafRealmParsed;->log:Lorg/apache/commons/logging/Log;

    sget v0, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/realm/NafRealmParsed;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NafRealmParsed()#   unparsedContent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   nafRealParts="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "All params must be not null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    array-length v0, p2

    const/4 v1, 0x1

    if-ge v0, v1, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "It can\'t be less one part here!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput-object p1, p0, Lorg/apache/http/impl/client/naf/realm/NafRealmParsed;->unparsedContent:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/http/impl/client/naf/realm/NafRealmParsed;->nafRealParts:[Lorg/apache/http/impl/client/naf/realm/NafRealmPart;

    return-void
.end method

.method private getNafRealmPartByInitiatedGbaType(Lorg/apache/http/impl/client/naf/gba/GbaType;)Lorg/apache/http/impl/client/naf/realm/NafRealmPart;
    .locals 7

    if-nez p1, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "initiatedGbaType param can\'t be null."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    sget-object v5, Lorg/apache/http/impl/client/naf/gba/GbaType;->GBA_NOT_SUPPORTED:Lorg/apache/http/impl/client/naf/gba/GbaType;

    if-ne p1, v5, :cond_1

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "This method shouldn\'t be called if GBA is not supported at all."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    const/4 v4, 0x0

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/realm/NafRealmParsed;->nafRealParts:[Lorg/apache/http/impl/client/naf/realm/NafRealmPart;

    array-length v3, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v2, v0, v1

    invoke-virtual {v2}, Lorg/apache/http/impl/client/naf/realm/NafRealmPart;->getGbaTypeMarker()Lorg/apache/http/impl/client/naf/realm/NafRealmGbaTypeMarker;

    move-result-object v5

    invoke-virtual {v5, p1}, Lorg/apache/http/impl/client/naf/realm/NafRealmGbaTypeMarker;->is(Lorg/apache/http/impl/client/naf/gba/GbaType;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v4, v2

    :cond_2
    return-object v4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getNafFqdn(Lorg/apache/http/impl/client/naf/gba/GbaType;)Ljava/lang/String;
    .locals 2

    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/naf/realm/NafRealmParsed;->getNafRealmPartByInitiatedGbaType(Lorg/apache/http/impl/client/naf/gba/GbaType;)Lorg/apache/http/impl/client/naf/realm/NafRealmPart;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/http/impl/client/naf/realm/NafRealmPart;->getNafFqdn()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getNafRealParts()[Lorg/apache/http/impl/client/naf/realm/NafRealmPart;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/realm/NafRealmParsed;->nafRealParts:[Lorg/apache/http/impl/client/naf/realm/NafRealmPart;

    return-object v0
.end method

.method public getRealmPart(Lorg/apache/http/impl/client/naf/gba/GbaType;)Ljava/lang/String;
    .locals 2

    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/naf/realm/NafRealmParsed;->getNafRealmPartByInitiatedGbaType(Lorg/apache/http/impl/client/naf/gba/GbaType;)Lorg/apache/http/impl/client/naf/realm/NafRealmPart;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/http/impl/client/naf/realm/NafRealmPart;->getWholeContent()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getUnparsedContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/realm/NafRealmParsed;->unparsedContent:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NafRealmParsed [unparsedContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/realm/NafRealmParsed;->unparsedContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nafRealParts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/realm/NafRealmParsed;->nafRealParts:[Lorg/apache/http/impl/client/naf/realm/NafRealmPart;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
