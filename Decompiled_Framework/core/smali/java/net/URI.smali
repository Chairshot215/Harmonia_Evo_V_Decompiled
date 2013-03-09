.class public final Ljava/net/URI;
.super Ljava/lang/Object;
.source "URI.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/net/URI$PartEncoder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/net/URI;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final ALL_LEGAL_ENCODER:Llibcore/net/UriCodec; = null

.field private static final ASCII_ONLY:Llibcore/net/UriCodec; = null

.field static final AUTHORITY_ENCODER:Llibcore/net/UriCodec; = null

.field static final FILE_AND_QUERY_ENCODER:Llibcore/net/UriCodec; = null

.field static final PATH_ENCODER:Llibcore/net/UriCodec; = null

.field static final PUNCTUATION:Ljava/lang/String; = ",;:$&+="

.field static final UNRESERVED:Ljava/lang/String; = "_-!.~\'()*"

.field static final USER_INFO_ENCODER:Llibcore/net/UriCodec; = null

.field private static final serialVersionUID:J = -0x53fe87d1bc61b655L


# instance fields
.field private transient absolute:Z

.field private transient authority:Ljava/lang/String;

.field private transient fragment:Ljava/lang/String;

.field private transient hash:I

.field private transient host:Ljava/lang/String;

.field private transient opaque:Z

.field private transient path:Ljava/lang/String;

.field private transient port:I

.field private transient query:Ljava/lang/String;

.field private transient scheme:Ljava/lang/String;

.field private transient schemeSpecificPart:Ljava/lang/String;

.field private transient serverAuthority:Z

.field private string:Ljava/lang/String;

.field private transient userInfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/net/URI$PartEncoder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/net/URI$PartEncoder;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/net/URI;->USER_INFO_ENCODER:Llibcore/net/UriCodec;

    new-instance v0, Ljava/net/URI$PartEncoder;

    const-string v1, "/@"

    invoke-direct {v0, v1}, Ljava/net/URI$PartEncoder;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/net/URI;->PATH_ENCODER:Llibcore/net/UriCodec;

    new-instance v0, Ljava/net/URI$PartEncoder;

    const-string v1, "@[]"

    invoke-direct {v0, v1}, Ljava/net/URI$PartEncoder;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/net/URI;->AUTHORITY_ENCODER:Llibcore/net/UriCodec;

    new-instance v0, Ljava/net/URI$PartEncoder;

    const-string v1, "/@?"

    invoke-direct {v0, v1}, Ljava/net/URI$PartEncoder;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/net/URI;->FILE_AND_QUERY_ENCODER:Llibcore/net/UriCodec;

    new-instance v0, Ljava/net/URI$PartEncoder;

    const-string v1, "?/[]@"

    invoke-direct {v0, v1}, Ljava/net/URI$PartEncoder;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/net/URI;->ALL_LEGAL_ENCODER:Llibcore/net/UriCodec;

    new-instance v0, Ljava/net/URI$1;

    invoke-direct {v0}, Ljava/net/URI$1;-><init>()V

    sput-object v0, Ljava/net/URI;->ASCII_ONLY:Llibcore/net/UriCodec;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Ljava/net/URI;->port:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/net/URI;->serverAuthority:Z

    iput v1, p0, Ljava/net/URI;->hash:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Ljava/net/URI;->port:I

    iput-boolean v1, p0, Ljava/net/URI;->serverAuthority:Z

    iput v0, p0, Ljava/net/URI;->hash:I

    invoke-direct {p0, p1, v1}, Ljava/net/URI;->parseURI(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Ljava/net/URI;->port:I

    iput-boolean v2, p0, Ljava/net/URI;->serverAuthority:Z

    iput v1, p0, Ljava/net/URI;->hash:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz p2, :cond_1

    sget-object v1, Ljava/net/URI;->ALL_LEGAL_ENCODER:Llibcore/net/UriCodec;

    invoke-virtual {v1, v0, p2}, Llibcore/net/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_1
    if-eqz p3, :cond_2

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/net/URI;->ALL_LEGAL_ENCODER:Llibcore/net/UriCodec;

    invoke-virtual {v1, v0, p3}, Llibcore/net/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Ljava/net/URI;->parseURI(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    const/4 v2, 0x0

    const/16 v4, 0x3a

    const/4 v3, -0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Ljava/net/URI;->port:I

    iput-boolean v2, p0, Ljava/net/URI;->serverAuthority:Z

    iput v3, p0, Ljava/net/URI;->hash:I

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-nez p5, :cond_0

    if-nez p6, :cond_0

    if-nez p7, :cond_0

    const-string v1, ""

    iput-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p5, :cond_1

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_1

    new-instance v1, Ljava/net/URISyntaxException;

    const-string v2, "Relative path"

    invoke-direct {v1, p5, v2}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    if-nez p2, :cond_3

    if-nez p3, :cond_3

    if-eq p4, v3, :cond_4

    :cond_3
    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    if-eqz p2, :cond_5

    sget-object v1, Ljava/net/URI;->USER_INFO_ENCODER:Llibcore/net/UriCodec;

    invoke-virtual {v1, v0, p2}, Llibcore/net/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    if-eqz p3, :cond_7

    invoke-virtual {p3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_6

    const/16 v1, 0x5d

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v3, :cond_6

    const/16 v1, 0x5b

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v3, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_6
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    if-eq p4, v3, :cond_8

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_8
    if-eqz p5, :cond_9

    sget-object v1, Ljava/net/URI;->PATH_ENCODER:Llibcore/net/UriCodec;

    invoke-virtual {v1, v0, p5}, Llibcore/net/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_9
    if-eqz p6, :cond_a

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/net/URI;->ALL_LEGAL_ENCODER:Llibcore/net/UriCodec;

    invoke-virtual {v1, v0, p6}, Llibcore/net/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_a
    if-eqz p7, :cond_b

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/net/URI;->ALL_LEGAL_ENCODER:Llibcore/net/UriCodec;

    invoke-virtual {v1, v0, p7}, Llibcore/net/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Ljava/net/URI;->parseURI(Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, v2

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    const/4 v1, -0x1

    const/4 v3, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Ljava/net/URI;->port:I

    iput-boolean v3, p0, Ljava/net/URI;->serverAuthority:Z

    iput v1, p0, Ljava/net/URI;->hash:I

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p3, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/net/URISyntaxException;

    const-string v2, "Relative path"

    invoke-direct {v1, p3, v2}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz p2, :cond_2

    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/net/URI;->AUTHORITY_ENCODER:Llibcore/net/UriCodec;

    invoke-virtual {v1, v0, p2}, Llibcore/net/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_2
    if-eqz p3, :cond_3

    sget-object v1, Ljava/net/URI;->PATH_ENCODER:Llibcore/net/UriCodec;

    invoke-virtual {v1, v0, p3}, Llibcore/net/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_3
    if-eqz p4, :cond_4

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/net/URI;->ALL_LEGAL_ENCODER:Llibcore/net/UriCodec;

    invoke-virtual {v1, v0, p4}, Llibcore/net/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_4
    if-eqz p5, :cond_5

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/net/URI;->ALL_LEGAL_ENCODER:Llibcore/net/UriCodec;

    invoke-virtual {v1, v0, p5}, Llibcore/net/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Ljava/net/URI;->parseURI(Ljava/lang/String;Z)V

    return-void
.end method

.method private convertHexToLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/16 v6, 0x25

    const/4 v5, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v3, v5, :cond_0

    :goto_0
    return-object p1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-eq v0, v5, :cond_1

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v0, 0x1

    add-int/lit8 v4, v0, 0x3

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x3

    move v1, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static create(Ljava/lang/String;)Ljava/net/URI;
    .locals 3

    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p1}, Llibcore/net/UriCodec;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private duplicate()Ljava/net/URI;
    .locals 2

    new-instance v0, Ljava/net/URI;

    invoke-direct {v0}, Ljava/net/URI;-><init>()V

    iget-boolean v1, p0, Ljava/net/URI;->absolute:Z

    iput-boolean v1, v0, Ljava/net/URI;->absolute:Z

    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->authority:Ljava/lang/String;

    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->fragment:Ljava/lang/String;

    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->host:Ljava/lang/String;

    iget-boolean v1, p0, Ljava/net/URI;->opaque:Z

    iput-boolean v1, v0, Ljava/net/URI;->opaque:Z

    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->path:Ljava/lang/String;

    iget v1, p0, Ljava/net/URI;->port:I

    iput v1, v0, Ljava/net/URI;->port:I

    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->query:Ljava/lang/String;

    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->scheme:Ljava/lang/String;

    iget-object v1, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    iget-object v1, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    iget-boolean v1, p0, Ljava/net/URI;->serverAuthority:Z

    iput-boolean v1, v0, Ljava/net/URI;->serverAuthority:Z

    return-object v0
.end method

.method private escapedEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const/4 v3, 0x0

    const/16 v7, 0x25

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {p2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v4, v5, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    :cond_0
    :goto_0
    return v3

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p1, v7, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_2

    invoke-virtual {p2, v7, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-ne v4, v0, :cond_2

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v4, v0, 0x1

    add-int/lit8 v5, v0, 0x3

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v6, v0, 0x3

    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x3

    move v2, v0

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method public static getEffectivePort(Ljava/lang/String;I)I
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    :goto_0
    return p1

    :cond_0
    const-string v1, "http"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 p1, 0x50

    goto :goto_0

    :cond_1
    const-string v1, "https"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 p1, 0x1bb

    goto :goto_0

    :cond_2
    move p1, v0

    goto :goto_0
.end method

.method private getHashString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    iget-boolean v1, p0, Ljava/net/URI;->opaque:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v1, :cond_2

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/net/URI;->convertHexToLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_3
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    if-nez v1, :cond_6

    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_1
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_6
    iget-object v1, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljava/net/URI;->port:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/net/URI;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private isValidDomainName(Ljava/lang/String;)Z
    .locals 9

    const/4 v7, 0x0

    :try_start_0
    const-string v8, "-."

    invoke-static {p1, v8}, Llibcore/net/UriCodec;->validateSimple(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x0

    const-string v8, "\\."

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v5, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v6, v0, v3

    move-object v4, v6

    const-string v8, "-"

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "-"

    invoke-virtual {v4, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    :goto_1
    return v7

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_0

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v8, 0x30

    if-lt v1, v8, :cond_3

    const/16 v8, 0x39

    if-le v1, v8, :cond_0

    :cond_3
    const/4 v7, 0x1

    goto :goto_1
.end method

.method private isValidHost(ZLjava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    const/4 v5, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "["

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "]"

    invoke-virtual {p2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v2, Ljava/net/URISyntaxException;

    const-string v4, "Expected a closing square bracket for IPv6 address"

    invoke-direct {v2, p2, v4, v3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v2

    :cond_0
    invoke-static {p2}, Ljava/net/InetAddress;->isNumeric(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    :goto_0
    return v2

    :cond_2
    new-instance v2, Ljava/net/URISyntaxException;

    const-string v3, "Malformed IPv6 address"

    invoke-direct {v2, p2, v3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    :cond_3
    const/16 v4, 0x5b

    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ne v4, v5, :cond_4

    const/16 v4, 0x5d

    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eq v4, v5, :cond_5

    :cond_4
    new-instance v2, Ljava/net/URISyntaxException;

    const-string v4, "Illegal character in host name"

    invoke-direct {v2, p2, v4, v3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v2

    :cond_5
    const/16 v4, 0x2e

    invoke-virtual {p2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ltz v1, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v1, v4, :cond_6

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_8

    :cond_6
    invoke-direct {p0, p2}, Ljava/net/URI;->isValidDomainName(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz p1, :cond_7

    new-instance v2, Ljava/net/URISyntaxException;

    const-string v4, "Illegal character in host name"

    invoke-direct {v2, p2, v4, v3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v2

    :cond_7
    move v2, v3

    goto :goto_0

    :cond_8
    :try_start_0
    invoke-static {p2}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    instance-of v4, v0, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_1

    :goto_1
    if-eqz p1, :cond_9

    new-instance v2, Ljava/net/URISyntaxException;

    const-string v4, "Malformed IPv4 address"

    invoke-direct {v2, p2, v4, v3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v2

    :cond_9
    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private normalize(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    const/4 v3, -0x1

    invoke-static {p1, p2}, Llibcore/net/url/UrlUtils;->canonicalizePath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v3, :cond_1

    const/16 v2, 0x2f

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_0

    if-ge v0, v1, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "./"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private parseAuthority(Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    const/4 v10, -0x1

    const/4 v9, 0x0

    iget-object v8, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v7, 0x0

    iget-object v4, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    const/16 v8, 0x40

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v2, 0x0

    if-eq v3, v10, :cond_2

    invoke-virtual {v4, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-direct {p0, v8, v7, v9}, Ljava/net/URI;->validateUserInfo(Ljava/lang/String;Ljava/lang/String;I)V

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v2, v3, 0x1

    :cond_2
    const/16 v8, 0x3a

    invoke-virtual {v4, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    const/16 v8, 0x5d

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v6, -0x1

    if-eq v3, v10, :cond_3

    if-ge v1, v3, :cond_3

    invoke-virtual {v4, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v3, v8, :cond_4

    add-int/lit8 v8, v3, 0x1

    :try_start_0
    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_4

    if-eqz p1, :cond_0

    new-instance v8, Ljava/net/URISyntaxException;

    iget-object v9, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    const-string v10, "Invalid port number"

    add-int v11, v2, v3

    add-int/lit8 v11, v11, 0x1

    invoke-direct {v8, v9, v10, v11}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v8
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    if-eqz p1, :cond_0

    new-instance v8, Ljava/net/URISyntaxException;

    iget-object v9, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    const-string v10, "Invalid port number"

    add-int v11, v2, v3

    add-int/lit8 v11, v11, 0x1

    invoke-direct {v8, v9, v10, v11}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v8

    :cond_3
    move-object v5, v4

    :cond_4
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_5

    if-eqz p1, :cond_0

    new-instance v8, Ljava/net/URISyntaxException;

    iget-object v9, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    const-string v10, "Expected host"

    invoke-direct {v8, v9, v10, v2}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v8

    :cond_5
    invoke-direct {p0, p1, v5}, Ljava/net/URI;->isValidHost(ZLjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    iput-object v7, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    iput-object v5, p0, Ljava/net/URI;->host:Ljava/lang/String;

    iput v6, p0, Ljava/net/URI;->port:I

    const/4 v8, 0x1

    iput-boolean v8, p0, Ljava/net/URI;->serverAuthority:Z

    goto/16 :goto_0
.end method

.method private parseURI(Ljava/lang/String;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    const/4 v11, 0x1

    const/4 v10, 0x0

    iput-object p1, p0, Ljava/net/URI;->string:Ljava/lang/String;

    const-string v6, "#"

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {p1, v6, v10, v7}, Llibcore/net/url/UrlUtils;->findFirstOf(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_0

    sget-object v6, Ljava/net/URI;->ALL_LEGAL_ENCODER:Llibcore/net/UriCodec;

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    const-string v9, "fragment"

    invoke-virtual {v6, p1, v7, v8, v9}, Llibcore/net/UriCodec;->validate(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    :cond_0
    const-string v6, ":"

    invoke-static {p1, v6, v10, v3}, Llibcore/net/url/UrlUtils;->findFirstOf(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    const-string v6, "/?#"

    invoke-static {p1, v6, v10, v3}, Llibcore/net/url/UrlUtils;->findFirstOf(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v6

    if-ge v1, v6, :cond_2

    iput-boolean v11, p0, Ljava/net/URI;->absolute:Z

    invoke-direct {p0, p1, v1}, Ljava/net/URI;->validateScheme(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    add-int/lit8 v5, v1, 0x1

    if-ne v5, v3, :cond_1

    new-instance v6, Ljava/net/URISyntaxException;

    const-string v7, "Scheme-specific part expected"

    invoke-direct {v6, p1, v7, v5}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v6

    :cond_1
    const-string v6, "/"

    invoke-virtual {p1, v5, v6, v10, v11}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_3

    iput-boolean v11, p0, Ljava/net/URI;->opaque:Z

    sget-object v6, Ljava/net/URI;->ALL_LEGAL_ENCODER:Llibcore/net/UriCodec;

    const-string v7, "scheme specific part"

    invoke-virtual {v6, p1, v5, v3, v7}, Llibcore/net/UriCodec;->validate(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    :goto_0
    return-void

    :cond_2
    iput-boolean v10, p0, Ljava/net/URI;->absolute:Z

    const/4 v5, 0x0

    :cond_3
    iput-boolean v10, p0, Ljava/net/URI;->opaque:Z

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    const-string v6, "//"

    const/4 v7, 0x2

    invoke-virtual {p1, v5, v6, v10, v7}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_7

    add-int/lit8 v0, v5, 0x2

    const-string v6, "/?"

    invoke-static {p1, v6, v0, v3}, Llibcore/net/url/UrlUtils;->findFirstOf(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v0, v6, :cond_4

    new-instance v6, Ljava/net/URISyntaxException;

    const-string v7, "Authority expected"

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-direct {v6, p1, v7, v8}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v6

    :cond_4
    if-ge v0, v2, :cond_5

    sget-object v6, Ljava/net/URI;->AUTHORITY_ENCODER:Llibcore/net/UriCodec;

    const-string v7, "authority"

    invoke-virtual {v6, p1, v0, v2, v7}, Llibcore/net/UriCodec;->validate(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    :cond_5
    :goto_1
    const-string v6, "?"

    invoke-static {p1, v6, v2, v3}, Llibcore/net/url/UrlUtils;->findFirstOf(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v4

    sget-object v6, Ljava/net/URI;->PATH_ENCODER:Llibcore/net/UriCodec;

    const-string v7, "path"

    invoke-virtual {v6, p1, v2, v4, v7}, Llibcore/net/UriCodec;->validate(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ljava/net/URI;->path:Ljava/lang/String;

    if-ge v4, v3, :cond_6

    sget-object v6, Ljava/net/URI;->ALL_LEGAL_ENCODER:Llibcore/net/UriCodec;

    add-int/lit8 v7, v4, 0x1

    const-string v8, "query"

    invoke-virtual {v6, p1, v7, v3, v8}, Llibcore/net/UriCodec;->validate(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ljava/net/URI;->query:Ljava/lang/String;

    :cond_6
    invoke-direct {p0, p2}, Ljava/net/URI;->parseAuthority(Z)V

    goto :goto_0

    :cond_7
    move v2, v5

    goto :goto_1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    :try_start_0
    iget-object v1, p0, Ljava/net/URI;->string:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Ljava/net/URI;->parseURI(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private setSchemeSpecificPart()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "//"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/net/URI;->query:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Ljava/net/URI;->string:Ljava/lang/String;

    return-void
.end method

.method private validateScheme(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    const/4 v3, 0x0

    if-nez p2, :cond_0

    new-instance v1, Ljava/net/URISyntaxException;

    const-string v2, "Scheme expected"

    invoke-direct {v1, p1, v2, v3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v0, v1}, Llibcore/net/url/UrlUtils;->isValidSchemeChar(IC)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/net/URISyntaxException;

    const-string v2, "Illegal character in scheme"

    invoke-direct {v1, p1, v2, v3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private validateUserInfo(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x5d

    if-eq v0, v2, :cond_0

    const/16 v2, 0x5b

    if-ne v0, v2, :cond_1

    :cond_0
    new-instance v2, Ljava/net/URISyntaxException;

    const-string v3, "Illegal character in userInfo"

    add-int v4, p3, v1

    invoke-direct {v2, p1, v3, v4}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/net/URI;

    invoke-virtual {p0, p1}, Ljava/net/URI;->compareTo(Ljava/net/URI;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/net/URI;)I
    .locals 5

    const/4 v2, 0x1

    const/4 v1, -0x1

    iget-object v3, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-nez v3, :cond_1

    iget-object v3, p1, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-eqz v3, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v3, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p1, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-nez v3, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p1, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    iget-object v4, p1, Ljava/net/URI;->scheme:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    iget-boolean v3, p0, Ljava/net/URI;->opaque:Z

    if-nez v3, :cond_4

    iget-boolean v3, p1, Ljava/net/URI;->opaque:Z

    if-eqz v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-boolean v3, p0, Ljava/net/URI;->opaque:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p1, Ljava/net/URI;->opaque:Z

    if-nez v3, :cond_5

    move v0, v2

    goto :goto_0

    :cond_5
    iget-boolean v3, p0, Ljava/net/URI;->opaque:Z

    if-eqz v3, :cond_7

    iget-boolean v3, p1, Ljava/net/URI;->opaque:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    iget-object v4, p1, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_6
    iget-object v3, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v3, :cond_11

    iget-object v3, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-nez v3, :cond_11

    move v0, v2

    goto :goto_0

    :cond_7
    iget-object v3, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v3, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    if-nez v3, :cond_8

    move v0, v2

    goto :goto_0

    :cond_8
    iget-object v3, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-nez v3, :cond_9

    iget-object v3, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v3, :cond_9

    move v0, v1

    goto :goto_0

    :cond_9
    iget-object v3, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v3, :cond_e

    iget-object v3, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v3, :cond_e

    iget-object v3, p0, Ljava/net/URI;->host:Ljava/lang/String;

    if-eqz v3, :cond_d

    iget-object v3, p1, Ljava/net/URI;->host:Ljava/lang/String;

    if-eqz v3, :cond_d

    iget-object v3, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-eqz v3, :cond_a

    iget-object v3, p1, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-nez v3, :cond_a

    move v0, v2

    goto :goto_0

    :cond_a
    iget-object v3, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-nez v3, :cond_b

    iget-object v3, p1, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-eqz v3, :cond_b

    move v0, v1

    goto/16 :goto_0

    :cond_b
    iget-object v3, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-eqz v3, :cond_c

    iget-object v3, p1, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-eqz v3, :cond_c

    iget-object v3, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    iget-object v4, p1, Ljava/net/URI;->userInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_c
    iget-object v3, p0, Ljava/net/URI;->host:Ljava/lang/String;

    iget-object v4, p1, Ljava/net/URI;->host:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget v3, p0, Ljava/net/URI;->port:I

    iget v4, p1, Ljava/net/URI;->port:I

    if-eq v3, v4, :cond_e

    iget v1, p0, Ljava/net/URI;->port:I

    iget v2, p1, Ljava/net/URI;->port:I

    sub-int v0, v1, v2

    goto/16 :goto_0

    :cond_d
    iget-object v3, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    iget-object v4, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_e
    iget-object v3, p0, Ljava/net/URI;->path:Ljava/lang/String;

    iget-object v4, p1, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v3, p0, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v3, :cond_f

    iget-object v3, p1, Ljava/net/URI;->query:Ljava/lang/String;

    if-nez v3, :cond_f

    move v0, v2

    goto/16 :goto_0

    :cond_f
    iget-object v3, p0, Ljava/net/URI;->query:Ljava/lang/String;

    if-nez v3, :cond_10

    iget-object v3, p1, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v3, :cond_10

    move v0, v1

    goto/16 :goto_0

    :cond_10
    iget-object v3, p0, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p1, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Ljava/net/URI;->query:Ljava/lang/String;

    iget-object v4, p1, Ljava/net/URI;->query:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_6

    goto/16 :goto_0

    :cond_11
    iget-object v2, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-nez v2, :cond_12

    iget-object v2, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v2, :cond_12

    move v0, v1

    goto/16 :goto_0

    :cond_12
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v1, :cond_13

    iget-object v1, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v1, :cond_13

    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    iget-object v2, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_13
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    instance-of v3, p1, Ljava/net/URI;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/net/URI;

    iget-object v3, v0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-nez v3, :cond_2

    iget-object v3, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-nez v3, :cond_0

    :cond_2
    iget-object v3, v0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v3, :cond_0

    :cond_3
    iget-object v3, v0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, v0, Ljava/net/URI;->fragment:Ljava/lang/String;

    iget-object v4, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Ljava/net/URI;->escapedEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_4
    iget-object v3, v0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-nez v3, :cond_0

    :cond_5
    iget-object v3, v0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-eqz v3, :cond_0

    :cond_6
    iget-object v3, v0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, v0, Ljava/net/URI;->scheme:Ljava/lang/String;

    iget-object v4, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_7
    iget-boolean v3, v0, Ljava/net/URI;->opaque:Z

    if-eqz v3, :cond_8

    iget-boolean v3, p0, Ljava/net/URI;->opaque:Z

    if-eqz v3, :cond_8

    iget-object v1, v0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    iget-object v2, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Ljava/net/URI;->escapedEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    :cond_8
    iget-boolean v3, v0, Ljava/net/URI;->opaque:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Ljava/net/URI;->opaque:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Ljava/net/URI;->path:Ljava/lang/String;

    iget-object v4, v0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Ljava/net/URI;->escapedEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v3, :cond_9

    iget-object v3, p0, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v3, :cond_0

    :cond_9
    iget-object v3, v0, Ljava/net/URI;->query:Ljava/lang/String;

    if-nez v3, :cond_a

    iget-object v3, p0, Ljava/net/URI;->query:Ljava/lang/String;

    if-nez v3, :cond_0

    :cond_a
    iget-object v3, v0, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v3, :cond_b

    iget-object v3, p0, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v3, :cond_b

    iget-object v3, v0, Ljava/net/URI;->query:Ljava/lang/String;

    iget-object v4, p0, Ljava/net/URI;->query:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Ljava/net/URI;->escapedEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_b
    iget-object v3, v0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v3, :cond_c

    iget-object v3, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v3, :cond_0

    :cond_c
    iget-object v3, v0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-nez v3, :cond_d

    iget-object v3, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-nez v3, :cond_0

    :cond_d
    iget-object v3, v0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v3, :cond_14

    iget-object v3, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v3, :cond_14

    iget-object v3, v0, Ljava/net/URI;->host:Ljava/lang/String;

    if-eqz v3, :cond_e

    iget-object v3, p0, Ljava/net/URI;->host:Ljava/lang/String;

    if-eqz v3, :cond_0

    :cond_e
    iget-object v3, v0, Ljava/net/URI;->host:Ljava/lang/String;

    if-nez v3, :cond_f

    iget-object v3, p0, Ljava/net/URI;->host:Ljava/lang/String;

    if-nez v3, :cond_0

    :cond_f
    iget-object v3, v0, Ljava/net/URI;->host:Ljava/lang/String;

    if-nez v3, :cond_10

    iget-object v3, p0, Ljava/net/URI;->host:Ljava/lang/String;

    if-nez v3, :cond_10

    iget-object v1, v0, Ljava/net/URI;->authority:Ljava/lang/String;

    iget-object v2, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Ljava/net/URI;->escapedEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto/16 :goto_0

    :cond_10
    iget-object v3, p0, Ljava/net/URI;->host:Ljava/lang/String;

    iget-object v4, v0, Ljava/net/URI;->host:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Ljava/net/URI;->port:I

    iget v4, v0, Ljava/net/URI;->port:I

    if-ne v3, v4, :cond_0

    iget-object v3, v0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-eqz v3, :cond_11

    iget-object v3, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-eqz v3, :cond_0

    :cond_11
    iget-object v3, v0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-nez v3, :cond_12

    iget-object v3, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-nez v3, :cond_0

    :cond_12
    iget-object v1, v0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-eqz v1, :cond_13

    iget-object v1, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-eqz v1, :cond_13

    iget-object v1, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    iget-object v2, v0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Ljava/net/URI;->escapedEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto/16 :goto_0

    :cond_13
    move v1, v2

    goto/16 :goto_0

    :cond_14
    move v1, v2

    goto/16 :goto_0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEffectivePort()I
    .locals 2

    iget-object v0, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    iget v1, p0, Ljava/net/URI;->port:I

    invoke-static {v0, v1}, Ljava/net/URI;->getEffectivePort(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/URI;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .locals 1

    iget v0, p0, Ljava/net/URI;->port:I

    return v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/URI;->query:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawAuthority()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    return-object v0
.end method

.method public getRawFragment()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    return-object v0
.end method

.method public getRawPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/URI;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getRawQuery()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/URI;->query:Ljava/lang/String;

    return-object v0
.end method

.method public getRawSchemeSpecificPart()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    return-object v0
.end method

.method public getRawUserInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public getSchemeSpecificPart()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Ljava/net/URI;->hash:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Ljava/net/URI;->getHashString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Ljava/net/URI;->hash:I

    :cond_0
    iget v0, p0, Ljava/net/URI;->hash:I

    return v0
.end method

.method public isAbsolute()Z
    .locals 1

    iget-boolean v0, p0, Ljava/net/URI;->absolute:Z

    return v0
.end method

.method public isOpaque()Z
    .locals 1

    iget-boolean v0, p0, Ljava/net/URI;->opaque:Z

    return v0
.end method

.method public normalize()Ljava/net/URI;
    .locals 4

    iget-boolean v2, p0, Ljava/net/URI;->opaque:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    iget-object v2, p0, Ljava/net/URI;->path:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Ljava/net/URI;->normalize(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Ljava/net/URI;->duplicate()Ljava/net/URI;

    move-result-object v1

    iput-object v0, v1, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-direct {v1}, Ljava/net/URI;->setSchemeSpecificPart()V

    move-object p0, v1

    goto :goto_0
.end method

.method public parseServerAuthority()Ljava/net/URI;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    iget-boolean v0, p0, Ljava/net/URI;->serverAuthority:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/net/URI;->parseAuthority(Z)V

    :cond_0
    return-object p0
.end method

.method public relativize(Ljava/net/URI;)Ljava/net/URI;
    .locals 6

    const/4 v5, 0x0

    iget-boolean v3, p1, Ljava/net/URI;->opaque:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Ljava/net/URI;->opaque:Z

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    iget-object v3, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, p1, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-nez v3, :cond_0

    :cond_2
    iget-object v3, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-nez v3, :cond_6

    iget-object v3, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    if-nez v3, :cond_0

    :cond_3
    iget-object v3, p0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-direct {p0, v3, v5}, Ljava/net/URI;->normalize(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-direct {p0, v3, v5}, Ljava/net/URI;->normalize(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_4
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1}, Ljava/net/URI;-><init>()V

    iget-object v3, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    iput-object v3, v1, Ljava/net/URI;->fragment:Ljava/lang/String;

    iget-object v3, p1, Ljava/net/URI;->query:Ljava/lang/String;

    iput-object v3, v1, Ljava/net/URI;->query:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-direct {v1}, Ljava/net/URI;->setSchemeSpecificPart()V

    move-object p1, v1

    goto :goto_0

    :cond_5
    iget-object v3, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    iget-object v4, p1, Ljava/net/URI;->scheme:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_6
    iget-object v3, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    iget-object v4, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0
.end method

.method public resolve(Ljava/lang/String;)Ljava/net/URI;
    .locals 1

    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public resolve(Ljava/net/URI;)Ljava/net/URI;
    .locals 6

    iget-boolean v3, p1, Ljava/net/URI;->absolute:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Ljava/net/URI;->opaque:Z

    if-eqz v3, :cond_1

    :cond_0
    move-object v2, p1

    :goto_0
    return-object v2

    :cond_1
    iget-object v3, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-direct {p1}, Ljava/net/URI;->duplicate()Ljava/net/URI;

    move-result-object v2

    iget-object v3, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    iput-object v3, v2, Ljava/net/URI;->scheme:Ljava/lang/String;

    iget-boolean v3, p0, Ljava/net/URI;->absolute:Z

    iput-boolean v3, v2, Ljava/net/URI;->absolute:Z

    goto :goto_0

    :cond_2
    iget-object v3, p1, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p1, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-nez v3, :cond_3

    iget-object v3, p1, Ljava/net/URI;->query:Ljava/lang/String;

    if-nez v3, :cond_3

    invoke-direct {p0}, Ljava/net/URI;->duplicate()Ljava/net/URI;

    move-result-object v2

    iget-object v3, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    iput-object v3, v2, Ljava/net/URI;->fragment:Ljava/lang/String;

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Ljava/net/URI;->duplicate()Ljava/net/URI;

    move-result-object v2

    iget-object v3, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    iput-object v3, v2, Ljava/net/URI;->fragment:Ljava/lang/String;

    iget-object v3, p1, Ljava/net/URI;->query:Ljava/lang/String;

    iput-object v3, v2, Ljava/net/URI;->query:Ljava/lang/String;

    iget-object v3, p1, Ljava/net/URI;->path:Ljava/lang/String;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v1, p1, Ljava/net/URI;->path:Ljava/lang/String;

    :goto_1
    iget-object v3, v2, Ljava/net/URI;->authority:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {p0, v1, v4}, Ljava/net/URI;->normalize(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Llibcore/net/url/UrlUtils;->authoritySafePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-direct {v2}, Ljava/net/URI;->setSchemeSpecificPart()V

    goto :goto_0

    :cond_4
    iget-object v3, p1, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    goto :goto_1

    :cond_5
    iget-object v3, p0, Ljava/net/URI;->path:Ljava/lang/String;

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v0, v3, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Ljava/net/URI;->path:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public toASCIIString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/net/URI;->ASCII_ONLY:Llibcore/net/UriCodec;

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Llibcore/net/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Ljava/net/URI;->string:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/net/URI;->string:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    iget-boolean v1, p0, Ljava/net/URI;->opaque:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v1, :cond_3

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/net/URI;->string:Ljava/lang/String;

    iget-object v1, p0, Ljava/net/URI;->string:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v1, :cond_5

    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v1, :cond_2

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public toURL()Ljava/net/URL;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    iget-boolean v0, p0, Ljava/net/URI;->absolute:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URI is not absolute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
