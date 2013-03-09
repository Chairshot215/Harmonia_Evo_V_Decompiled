.class public final Lorg/apache/xml/serializer/dom3/NamespaceSupport$Prefixes;
.super Ljava/lang/Object;
.source "NamespaceSupport.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/serializer/dom3/NamespaceSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "Prefixes"
.end annotation


# instance fields
.field private counter:I

.field private prefixes:[Ljava/lang/String;

.field private size:I

.field final synthetic this$0:Lorg/apache/xml/serializer/dom3/NamespaceSupport;


# direct methods
.method public constructor <init>(Lorg/apache/xml/serializer/dom3/NamespaceSupport;[Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport$Prefixes;->this$0:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport$Prefixes;->counter:I

    iput v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport$Prefixes;->size:I

    iput-object p2, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport$Prefixes;->prefixes:[Ljava/lang/String;

    iput p3, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport$Prefixes;->size:I

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 2

    iget v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport$Prefixes;->counter:I

    iget v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport$Prefixes;->size:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport$Prefixes;->counter:I

    iget v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport$Prefixes;->size:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport$Prefixes;->this$0:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport$Prefixes;->counter:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport$Prefixes;->counter:I

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Illegal access to Namespace prefixes enumeration."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport$Prefixes;->size:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport$Prefixes;->prefixes:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
