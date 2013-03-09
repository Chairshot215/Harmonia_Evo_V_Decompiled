.class final Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;
.super Ljava/lang/Object;
.source "DOMLocatorImpl.java"

# interfaces
.implements Lorg/w3c/dom/DOMLocator;


# instance fields
.field private final fByteOffset:I

.field private final fColumnNumber:I

.field private final fLineNumber:I

.field private final fRelatedNode:Lorg/w3c/dom/Node;

.field private final fUri:Ljava/lang/String;

.field private final fUtf16Offset:I


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fColumnNumber:I

    iput v0, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fLineNumber:I

    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fRelatedNode:Lorg/w3c/dom/Node;

    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fUri:Ljava/lang/String;

    iput v0, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fByteOffset:I

    iput v0, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fUtf16Offset:I

    return-void
.end method

.method constructor <init>(IIILjava/lang/String;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fLineNumber:I

    iput p2, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fColumnNumber:I

    iput-object p4, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fUri:Ljava/lang/String;

    iput p3, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fUtf16Offset:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fRelatedNode:Lorg/w3c/dom/Node;

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fByteOffset:I

    return-void
.end method

.method constructor <init>(IIILorg/w3c/dom/Node;Ljava/lang/String;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fLineNumber:I

    iput p2, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fColumnNumber:I

    iput p3, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fByteOffset:I

    iput-object p4, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fRelatedNode:Lorg/w3c/dom/Node;

    iput-object p5, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fUri:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fUtf16Offset:I

    return-void
.end method

.method constructor <init>(IIILorg/w3c/dom/Node;Ljava/lang/String;I)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fLineNumber:I

    iput p2, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fColumnNumber:I

    iput p3, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fByteOffset:I

    iput-object p4, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fRelatedNode:Lorg/w3c/dom/Node;

    iput-object p5, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fUri:Ljava/lang/String;

    iput p6, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fUtf16Offset:I

    return-void
.end method

.method constructor <init>(IILjava/lang/String;)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fLineNumber:I

    iput p2, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fColumnNumber:I

    iput-object p3, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fUri:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fRelatedNode:Lorg/w3c/dom/Node;

    iput v1, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fByteOffset:I

    iput v1, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fUtf16Offset:I

    return-void
.end method


# virtual methods
.method public getByteOffset()I
    .locals 1

    iget v0, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fByteOffset:I

    return v0
.end method

.method public getColumnNumber()I
    .locals 1

    iget v0, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fColumnNumber:I

    return v0
.end method

.method public getLineNumber()I
    .locals 1

    iget v0, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fLineNumber:I

    return v0
.end method

.method public getRelatedNode()Lorg/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fRelatedNode:Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fUri:Ljava/lang/String;

    return-object v0
.end method

.method public getUtf16Offset()I
    .locals 1

    iget v0, p0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;->fUtf16Offset:I

    return v0
.end method
