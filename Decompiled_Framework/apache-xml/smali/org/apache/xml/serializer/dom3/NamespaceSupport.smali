.class public Lorg/apache/xml/serializer/dom3/NamespaceSupport;
.super Ljava/lang/Object;
.source "NamespaceSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/serializer/dom3/NamespaceSupport$Prefixes;
    }
.end annotation


# static fields
.field static final PREFIX_XML:Ljava/lang/String;

.field static final PREFIX_XMLNS:Ljava/lang/String;

.field public static final XMLNS_URI:Ljava/lang/String;

.field public static final XML_URI:Ljava/lang/String;


# instance fields
.field protected fContext:[I

.field protected fCurrentContext:I

.field protected fNamespace:[Ljava/lang/String;

.field protected fNamespaceSize:I

.field protected fPrefixes:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "xml"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->PREFIX_XML:Ljava/lang/String;

    const-string v0, "xmlns"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->PREFIX_XMLNS:Ljava/lang/String;

    const-string v0, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->XML_URI:Ljava/lang/String;

    const-string v0, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->XMLNS_URI:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fContext:[I

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-object v4, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->PREFIX_XML:Ljava/lang/String;

    if-eq p1, v4, :cond_0

    sget-object v4, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne p1, v4, :cond_1

    :cond_0
    move v2, v3

    :goto_0
    return v2

    :cond_1
    iget v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    :goto_1
    iget-object v4, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fContext:[I

    iget v5, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fCurrentContext:I

    aget v4, v4, v5

    if-le v0, v4, :cond_3

    iget-object v4, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    add-int/lit8 v5, v0, -0x2

    aget-object v4, v4, v5

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v3, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    add-int/lit8 v4, v0, -0x1

    aput-object p2, v3, v4

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, -0x2

    goto :goto_1

    :cond_3
    iget v4, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    iget-object v5, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    array-length v5, v5

    if-ne v4, v5, :cond_4

    iget v4, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    mul-int/lit8 v4, v4, 0x2

    new-array v1, v4, [Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    iget v5, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    invoke-static {v4, v3, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    :cond_4
    iget-object v3, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    iget v4, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    aput-object p1, v3, v4

    iget-object v3, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    iget v4, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    aput-object p2, v3, v4

    goto :goto_0
.end method

.method public getAllPrefixes()Ljava/util/Enumeration;
    .locals 9

    const/4 v0, 0x0

    iget-object v7, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    array-length v7, v7

    iget-object v8, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    array-length v8, v8

    div-int/lit8 v8, v8, 0x2

    if-ge v7, v8, :cond_0

    iget v7, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    new-array v5, v7, [Ljava/lang/String;

    iput-object v5, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    :cond_0
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x2

    :goto_0
    iget v7, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    add-int/lit8 v7, v7, -0x2

    if-ge v2, v7, :cond_4

    iget-object v7, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    add-int/lit8 v8, v2, 0x2

    aget-object v4, v7, v8

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_1

    iget-object v7, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    aget-object v7, v7, v3

    if-ne v7, v4, :cond_3

    const/4 v6, 0x0

    :cond_1
    if-eqz v6, :cond_2

    iget-object v7, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    add-int/lit8 v1, v0, 0x1

    aput-object v4, v7, v0

    move v0, v1

    :cond_2
    const/4 v6, 0x1

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    new-instance v7, Lorg/apache/xml/serializer/dom3/NamespaceSupport$Prefixes;

    iget-object v8, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    invoke-direct {v7, p0, v8, v0}, Lorg/apache/xml/serializer/dom3/NamespaceSupport$Prefixes;-><init>(Lorg/apache/xml/serializer/dom3/NamespaceSupport;[Ljava/lang/String;I)V

    return-object v7
.end method

.method public getDeclaredPrefixAt(I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fContext:[I

    iget v2, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fCurrentContext:I

    aget v1, v1, v2

    mul-int/lit8 v2, p1, 0x2

    add-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getDeclaredPrefixCount()I
    .locals 3

    iget v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fContext:[I

    iget v2, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fCurrentContext:I

    aget v1, v1, v2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    :goto_0
    if-lez v0, :cond_1

    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    add-int/lit8 v2, v0, -0x2

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    add-int/lit8 v2, v0, -0x2

    aget-object v1, v1, v2

    :goto_1
    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    :goto_0
    if-lez v0, :cond_1

    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    add-int/lit8 v2, v0, -0x2

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    :goto_1
    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public popContext()V
    .locals 3

    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fContext:[I

    iget v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fCurrentContext:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fCurrentContext:I

    aget v0, v0, v1

    iput v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    return-void
.end method

.method public pushContext()V
    .locals 4

    const/4 v3, 0x0

    iget v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fCurrentContext:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fContext:[I

    array-length v2, v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fContext:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [I

    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fContext:[I

    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fContext:[I

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fContext:[I

    :cond_0
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fContext:[I

    iget v2, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fCurrentContext:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fCurrentContext:I

    iget v3, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    aput v3, v1, v2

    return-void
.end method

.method public reset()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    iput v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fCurrentContext:I

    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fContext:[I

    iget v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fCurrentContext:I

    iget v2, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    aput v2, v0, v1

    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    sget-object v2, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->PREFIX_XML:Ljava/lang/String;

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    sget-object v2, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->XML_URI:Ljava/lang/String;

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    sget-object v2, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->PREFIX_XMLNS:Ljava/lang/String;

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    sget-object v2, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->XMLNS_URI:Ljava/lang/String;

    aput-object v2, v0, v1

    iget v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fCurrentContext:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fCurrentContext:I

    return-void
.end method
