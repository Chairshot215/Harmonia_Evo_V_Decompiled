.class public Lorg/xml/sax/helpers/NamespaceSupport;
.super Ljava/lang/Object;
.source "NamespaceSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xml/sax/helpers/NamespaceSupport$Context;
    }
.end annotation


# static fields
.field private static final EMPTY_ENUMERATION:Ljava/util/Enumeration; = null

.field public static final NSDECL:Ljava/lang/String; = "http://www.w3.org/xmlns/2000/"

.field public static final XMLNS:Ljava/lang/String; = "http://www.w3.org/XML/1998/namespace"


# instance fields
.field private contextPos:I

.field private contexts:[Lorg/xml/sax/helpers/NamespaceSupport$Context;

.field private currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

.field private namespaceDeclUris:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    sput-object v0, Lorg/xml/sax/helpers/NamespaceSupport;->EMPTY_ENUMERATION:Ljava/util/Enumeration;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lorg/xml/sax/helpers/NamespaceSupport;->reset()V

    return-void
.end method

.method static synthetic access$000(Lorg/xml/sax/helpers/NamespaceSupport;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->namespaceDeclUris:Z

    return v0
.end method

.method static synthetic access$100()Ljava/util/Enumeration;
    .locals 1

    sget-object v0, Lorg/xml/sax/helpers/NamespaceSupport;->EMPTY_ENUMERATION:Ljava/util/Enumeration;

    return-object v0
.end method


# virtual methods
.method public declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "xmlns"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    invoke-virtual {v0, p1, p2}, Lorg/xml/sax/helpers/NamespaceSupport$Context;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getDeclaredPrefixes()Ljava/util/Enumeration;
    .locals 1

    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    invoke-virtual {v0}, Lorg/xml/sax/helpers/NamespaceSupport$Context;->getDeclaredPrefixes()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    invoke-virtual {v0, p1}, Lorg/xml/sax/helpers/NamespaceSupport$Context;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefixes()Ljava/util/Enumeration;
    .locals 1

    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    invoke-virtual {v0}, Lorg/xml/sax/helpers/NamespaceSupport$Context;->getPrefixes()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getPrefixes(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/xml/sax/helpers/NamespaceSupport;->getPrefixes()Ljava/util/Enumeration;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/xml/sax/helpers/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v2}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v3

    return-object v3
.end method

.method public getURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    invoke-virtual {v0, p1}, Lorg/xml/sax/helpers/NamespaceSupport$Context;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNamespaceDeclUris()Z
    .locals 1

    iget-boolean v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->namespaceDeclUris:Z

    return v0
.end method

.method public popContext()V
    .locals 2

    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contexts:[Lorg/xml/sax/helpers/NamespaceSupport$Context;

    iget v1, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/xml/sax/helpers/NamespaceSupport$Context;->clear()V

    iget v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    iget v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    if-gez v0, :cond_0

    new-instance v0, Ljava/util/EmptyStackException;

    invoke-direct {v0}, Ljava/util/EmptyStackException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contexts:[Lorg/xml/sax/helpers/NamespaceSupport$Context;

    iget v1, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    return-void
.end method

.method public processName(Ljava/lang/String;[Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    invoke-virtual {v1, p1, p3}, Lorg/xml/sax/helpers/NamespaceSupport$Context;->processName(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p2, 0x0

    :goto_0
    return-object p2

    :cond_0
    aget-object v1, v0, v2

    aput-object v1, p2, v2

    aget-object v1, v0, v3

    aput-object v1, p2, v3

    aget-object v1, v0, v4

    aput-object v1, p2, v4

    goto :goto_0
.end method

.method public pushContext()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contexts:[Lorg/xml/sax/helpers/NamespaceSupport$Context;

    array-length v0, v2

    iget-object v2, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contexts:[Lorg/xml/sax/helpers/NamespaceSupport$Context;

    iget v3, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    aget-object v2, v2, v3

    iput-boolean v4, v2, Lorg/xml/sax/helpers/NamespaceSupport$Context;->declsOK:Z

    iget v2, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    iget v2, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    if-lt v2, v0, :cond_0

    mul-int/lit8 v2, v0, 0x2

    new-array v1, v2, [Lorg/xml/sax/helpers/NamespaceSupport$Context;

    iget-object v2, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contexts:[Lorg/xml/sax/helpers/NamespaceSupport$Context;

    invoke-static {v2, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    mul-int/lit8 v0, v0, 0x2

    iput-object v1, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contexts:[Lorg/xml/sax/helpers/NamespaceSupport$Context;

    :cond_0
    iget-object v2, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contexts:[Lorg/xml/sax/helpers/NamespaceSupport$Context;

    iget v3, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    iget-object v2, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contexts:[Lorg/xml/sax/helpers/NamespaceSupport$Context;

    iget v3, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    new-instance v4, Lorg/xml/sax/helpers/NamespaceSupport$Context;

    invoke-direct {v4, p0}, Lorg/xml/sax/helpers/NamespaceSupport$Context;-><init>(Lorg/xml/sax/helpers/NamespaceSupport;)V

    iput-object v4, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    aput-object v4, v2, v3

    :cond_1
    iget v2, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    if-lez v2, :cond_2

    iget-object v2, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    iget-object v3, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contexts:[Lorg/xml/sax/helpers/NamespaceSupport$Context;

    iget v4, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lorg/xml/sax/helpers/NamespaceSupport$Context;->setParent(Lorg/xml/sax/helpers/NamespaceSupport$Context;)V

    :cond_2
    return-void
.end method

.method public reset()V
    .locals 3

    const/4 v1, 0x0

    const/16 v0, 0x20

    new-array v0, v0, [Lorg/xml/sax/helpers/NamespaceSupport$Context;

    iput-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contexts:[Lorg/xml/sax/helpers/NamespaceSupport$Context;

    iput-boolean v1, p0, Lorg/xml/sax/helpers/NamespaceSupport;->namespaceDeclUris:Z

    iput v1, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contexts:[Lorg/xml/sax/helpers/NamespaceSupport$Context;

    iget v1, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    new-instance v2, Lorg/xml/sax/helpers/NamespaceSupport$Context;

    invoke-direct {v2, p0}, Lorg/xml/sax/helpers/NamespaceSupport$Context;-><init>(Lorg/xml/sax/helpers/NamespaceSupport;)V

    iput-object v2, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    const-string v1, "xml"

    const-string v2, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v0, v1, v2}, Lorg/xml/sax/helpers/NamespaceSupport$Context;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setNamespaceDeclUris(Z)V
    .locals 3

    iget v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->namespaceDeclUris:Z

    if-ne p1, v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iput-boolean p1, p0, Lorg/xml/sax/helpers/NamespaceSupport;->namespaceDeclUris:Z

    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    const-string v1, "xmlns"

    const-string v2, "http://www.w3.org/xmlns/2000/"

    invoke-virtual {v0, v1, v2}, Lorg/xml/sax/helpers/NamespaceSupport$Context;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contexts:[Lorg/xml/sax/helpers/NamespaceSupport$Context;

    iget v1, p0, Lorg/xml/sax/helpers/NamespaceSupport;->contextPos:I

    new-instance v2, Lorg/xml/sax/helpers/NamespaceSupport$Context;

    invoke-direct {v2, p0}, Lorg/xml/sax/helpers/NamespaceSupport$Context;-><init>(Lorg/xml/sax/helpers/NamespaceSupport;)V

    iput-object v2, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport;->currentContext:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    const-string v1, "xml"

    const-string v2, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v0, v1, v2}, Lorg/xml/sax/helpers/NamespaceSupport$Context;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
