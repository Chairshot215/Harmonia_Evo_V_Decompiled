.class public final Ljava/net/HttpCookie;
.super Ljava/lang/Object;
.source "HttpCookie.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/net/HttpCookie$CookieParser;
    }
.end annotation


# static fields
.field private static final RESERVED_NAMES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private comment:Ljava/lang/String;

.field private commentURL:Ljava/lang/String;

.field private discard:Z

.field private domain:Ljava/lang/String;

.field private maxAge:J

.field private final name:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private portList:Ljava/lang/String;

.field private secure:Z

.field private value:Ljava/lang/String;

.field private version:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string v1, "comment"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string v1, "commenturl"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string v1, "discard"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string v1, "domain"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string v1, "expires"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string v1, "max-age"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string v1, "path"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string v1, "port"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string v1, "secure"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string v1, "version"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Ljava/net/HttpCookie;->maxAge:J

    const/4 v1, 0x1

    iput v1, p0, Ljava/net/HttpCookie;->version:I

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/net/HttpCookie;->isValidName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_0
    iput-object v0, p0, Ljava/net/HttpCookie;->name:Ljava/lang/String;

    iput-object p2, p0, Ljava/net/HttpCookie;->value:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Ljava/net/HttpCookie;I)I
    .locals 0

    iput p1, p0, Ljava/net/HttpCookie;->version:I

    return p1
.end method

.method static synthetic access$100(Ljava/net/HttpCookie;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/HttpCookie;->comment:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Ljava/net/HttpCookie;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Ljava/net/HttpCookie;->comment:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Ljava/net/HttpCookie;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/HttpCookie;->commentURL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Ljava/net/HttpCookie;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Ljava/net/HttpCookie;->commentURL:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Ljava/net/HttpCookie;Z)Z
    .locals 0

    iput-boolean p1, p0, Ljava/net/HttpCookie;->discard:Z

    return p1
.end method

.method static synthetic access$400(Ljava/net/HttpCookie;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Ljava/net/HttpCookie;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Ljava/net/HttpCookie;)J
    .locals 2

    iget-wide v0, p0, Ljava/net/HttpCookie;->maxAge:J

    return-wide v0
.end method

.method static synthetic access$502(Ljava/net/HttpCookie;J)J
    .locals 0

    iput-wide p1, p0, Ljava/net/HttpCookie;->maxAge:J

    return-wide p1
.end method

.method static synthetic access$600(Ljava/net/HttpCookie;Ljava/util/Date;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/net/HttpCookie;->setExpires(Ljava/util/Date;)V

    return-void
.end method

.method static synthetic access$700(Ljava/net/HttpCookie;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/HttpCookie;->path:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Ljava/net/HttpCookie;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Ljava/net/HttpCookie;->path:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Ljava/net/HttpCookie;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/HttpCookie;->portList:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Ljava/net/HttpCookie;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Ljava/net/HttpCookie;->portList:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Ljava/net/HttpCookie;Z)Z
    .locals 0

    iput-boolean p1, p0, Ljava/net/HttpCookie;->secure:Z

    return p1
.end method

.method private appendAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p3, :cond_0

    if-eqz p1, :cond_0

    const-string v0, ";$"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public static domainMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v2, v3

    :cond_1
    :goto_0
    return v2

    :cond_2
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v0, v3}, Ljava/net/HttpCookie;->isFullyQualifiedDomainName(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v0}, Ljava/net/InetAddress;->isNumeric(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_3
    invoke-static {v0, v3}, Ljava/net/HttpCookie;->isFullyQualifiedDomainName(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v2, ".local"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    if-ne v4, v5, :cond_5

    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v2}, Ljava/net/HttpCookie;->isFullyQualifiedDomainName(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v4, v5, :cond_7

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {v1, v2}, Ljava/net/HttpCookie;->isFullyQualifiedDomainName(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_6
    const-string v4, ".local"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_7
    move v2, v3

    goto :goto_0
.end method

.method private static isFullyQualifiedDomainName(Ljava/lang/String;I)Z
    .locals 3

    const/16 v1, 0x2e

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isValidName(Ljava/lang/String;)Z
    .locals 5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "$"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ltz v2, :cond_0

    const/16 v3, 0x7f

    if-ge v2, v3, :cond_0

    const/16 v3, 0x3b

    if-eq v2, v3, :cond_0

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_0

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x20

    if-eq v2, v3, :cond_3

    :cond_0
    const/4 v1, 0x0

    :cond_1
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static matchablePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_1

    const-string p0, "/"

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static parse(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/net/HttpCookie$CookieParser;

    invoke-direct {v0, p0}, Ljava/net/HttpCookie$CookieParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpCookie$CookieParser;->parse()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static pathMatches(Ljava/net/HttpCookie;Ljava/net/URI;)Z
    .locals 3

    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/HttpCookie;->matchablePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/HttpCookie;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/HttpCookie;->matchablePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method static portMatches(Ljava/net/HttpCookie;Ljava/net/URI;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/net/HttpCookie;->getPortlist()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/net/HttpCookie;->getPortlist()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/URI;->getEffectivePort()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method static secureMatches(Ljava/net/HttpCookie;Ljava/net/URI;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/net/HttpCookie;->getSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https"

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

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

.method private setExpires(Ljava/util/Date;)V
    .locals 4

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Ljava/net/HttpCookie;->maxAge:J

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

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

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
    instance-of v3, p1, Ljava/net/HttpCookie;

    if-eqz v3, :cond_4

    move-object v0, p1

    check-cast v0, Ljava/net/HttpCookie;

    iget-object v3, p0, Ljava/net/HttpCookie;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    iget-object v4, v0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    iget-object v3, p0, Ljava/net/HttpCookie;->path:Ljava/lang/String;

    iget-object v4, v0, Ljava/net/HttpCookie;->path:Ljava/lang/String;

    invoke-static {v3, v4}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    iget-object v3, v0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    if-nez v3, :cond_2

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/HttpCookie;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/HttpCookie;->commentURL:Ljava/lang/String;

    return-object v0
.end method

.method public getDiscard()Z
    .locals 1

    iget-boolean v0, p0, Ljava/net/HttpCookie;->discard:Z

    return v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxAge()J
    .locals 2

    iget-wide v0, p0, Ljava/net/HttpCookie;->maxAge:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/HttpCookie;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/HttpCookie;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPortlist()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/HttpCookie;->portList:Ljava/lang/String;

    return-object v0
.end method

.method public getSecure()Z
    .locals 1

    iget-boolean v0, p0, Ljava/net/HttpCookie;->secure:Z

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/HttpCookie;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Ljava/net/HttpCookie;->version:I

    return v0
.end method

.method public hasExpired()Z
    .locals 5

    iget-wide v1, p0, Ljava/net/HttpCookie;->maxAge:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    iget-wide v1, p0, Ljava/net/HttpCookie;->maxAge:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Ljava/net/HttpCookie;->name:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    iget-object v0, p0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    iget-object v2, p0, Ljava/net/HttpCookie;->path:Ljava/lang/String;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Ljava/net/HttpCookie;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljava/net/HttpCookie;->comment:Ljava/lang/String;

    return-void
.end method

.method public setCommentURL(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljava/net/HttpCookie;->commentURL:Ljava/lang/String;

    return-void
.end method

.method public setDiscard(Z)V
    .locals 0

    iput-boolean p1, p0, Ljava/net/HttpCookie;->discard:Z

    return-void
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    return-void

    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setMaxAge(J)V
    .locals 0

    iput-wide p1, p0, Ljava/net/HttpCookie;->maxAge:J

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljava/net/HttpCookie;->path:Ljava/lang/String;

    return-void
.end method

.method public setPortlist(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljava/net/HttpCookie;->portList:Ljava/lang/String;

    return-void
.end method

.method public setSecure(Z)V
    .locals 0

    iput-boolean p1, p0, Ljava/net/HttpCookie;->secure:Z

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljava/net/HttpCookie;->value:Ljava/lang/String;

    return-void
.end method

.method public setVersion(I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iput p1, p0, Ljava/net/HttpCookie;->version:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v1, p0, Ljava/net/HttpCookie;->version:I

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljava/net/HttpCookie;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/net/HttpCookie;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljava/net/HttpCookie;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/net/HttpCookie;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Path"

    iget-object v2, p0, Ljava/net/HttpCookie;->path:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Ljava/net/HttpCookie;->appendAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Domain"

    iget-object v2, p0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Ljava/net/HttpCookie;->appendAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Port"

    iget-object v2, p0, Ljava/net/HttpCookie;->portList:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Ljava/net/HttpCookie;->appendAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
