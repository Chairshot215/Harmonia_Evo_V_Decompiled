.class public final Lorg/apache/xml/serializer/dom3/DOMErrorImpl;
.super Ljava/lang/Object;
.source "DOMErrorImpl.java"

# interfaces
.implements Lorg/w3c/dom/DOMError;


# instance fields
.field private fException:Ljava/lang/Exception;

.field private fLocation:Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;

.field private fMessage:Ljava/lang/String;

.field private fRelatedData:Ljava/lang/Object;

.field private fSeverity:S

.field private fType:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-short v0, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fSeverity:S

    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fMessage:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fException:Ljava/lang/Exception;

    new-instance v0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;

    invoke-direct {v0}, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fLocation:Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;

    return-void
.end method

.method public constructor <init>(SLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-short v0, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fSeverity:S

    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fMessage:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fException:Ljava/lang/Exception;

    new-instance v0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;

    invoke-direct {v0}, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fLocation:Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;

    iput-short p1, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fSeverity:S

    iput-object p2, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fMessage:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-short v0, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fSeverity:S

    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fMessage:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fException:Ljava/lang/Exception;

    new-instance v0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;

    invoke-direct {v0}, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fLocation:Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;

    iput-short p1, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fSeverity:S

    iput-object p2, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fMessage:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fType:Ljava/lang/String;

    iput-object p4, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fException:Ljava/lang/Exception;

    return-void
.end method

.method public constructor <init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-short v0, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fSeverity:S

    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fMessage:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fException:Ljava/lang/Exception;

    new-instance v0, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;

    invoke-direct {v0}, Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fLocation:Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;

    iput-short p1, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fSeverity:S

    iput-object p2, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fMessage:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fType:Ljava/lang/String;

    iput-object p4, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fException:Ljava/lang/Exception;

    iput-object p5, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fRelatedData:Ljava/lang/Object;

    iput-object p6, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fLocation:Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;

    return-void
.end method


# virtual methods
.method public getLocation()Lorg/w3c/dom/DOMLocator;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fLocation:Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getRelatedData()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fRelatedData:Ljava/lang/Object;

    return-object v0
.end method

.method public getRelatedException()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fException:Ljava/lang/Exception;

    return-object v0
.end method

.method public getSeverity()S
    .locals 1

    iget-short v0, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fSeverity:S

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fType:Ljava/lang/String;

    return-object v0
.end method

.method public reset()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-short v0, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fSeverity:S

    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fException:Ljava/lang/Exception;

    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fMessage:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fType:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fRelatedData:Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;->fLocation:Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;

    return-void
.end method
