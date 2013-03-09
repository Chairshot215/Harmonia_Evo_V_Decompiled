.class public final Lorg/apache/xml/dtm/ref/ExtendedType;
.super Ljava/lang/Object;
.source "ExtendedType.java"


# instance fields
.field private hash:I

.field private localName:Ljava/lang/String;

.field private namespace:Ljava/lang/String;

.field private nodetype:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->nodetype:I

    iput-object p2, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->namespace:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->localName:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->hash:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->nodetype:I

    iput-object p2, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->namespace:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->localName:Ljava/lang/String;

    iput p4, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->hash:I

    return-void
.end method


# virtual methods
.method public equals(Lorg/apache/xml/dtm/ref/ExtendedType;)Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget v2, p1, Lorg/apache/xml/dtm/ref/ExtendedType;->nodetype:I

    iget v3, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->nodetype:I

    if-ne v2, v3, :cond_0

    iget-object v2, p1, Lorg/apache/xml/dtm/ref/ExtendedType;->localName:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->localName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lorg/apache/xml/dtm/ref/ExtendedType;->namespace:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->namespace:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->localName:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeType()I
    .locals 1

    iget v0, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->nodetype:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->hash:I

    return v0
.end method

.method protected redefine(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    iput p1, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->nodetype:I

    iput-object p2, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->namespace:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->localName:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->hash:I

    return-void
.end method

.method protected redefine(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput p1, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->nodetype:I

    iput-object p2, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->namespace:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->localName:Ljava/lang/String;

    iput p4, p0, Lorg/apache/xml/dtm/ref/ExtendedType;->hash:I

    return-void
.end method
