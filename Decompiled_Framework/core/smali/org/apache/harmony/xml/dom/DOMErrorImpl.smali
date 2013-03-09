.class public final Lorg/apache/harmony/xml/dom/DOMErrorImpl;
.super Ljava/lang/Object;
.source "DOMErrorImpl.java"

# interfaces
.implements Lorg/w3c/dom/DOMError;


# static fields
.field private static final NULL_DOM_LOCATOR:Lorg/w3c/dom/DOMLocator;


# instance fields
.field private final severity:S

.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/harmony/xml/dom/DOMErrorImpl$1;

    invoke-direct {v0}, Lorg/apache/harmony/xml/dom/DOMErrorImpl$1;-><init>()V

    sput-object v0, Lorg/apache/harmony/xml/dom/DOMErrorImpl;->NULL_DOM_LOCATOR:Lorg/w3c/dom/DOMLocator;

    return-void
.end method

.method public constructor <init>(SLjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lorg/apache/harmony/xml/dom/DOMErrorImpl;->severity:S

    iput-object p2, p0, Lorg/apache/harmony/xml/dom/DOMErrorImpl;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLocation()Lorg/w3c/dom/DOMLocator;
    .locals 1

    sget-object v0, Lorg/apache/harmony/xml/dom/DOMErrorImpl;->NULL_DOM_LOCATOR:Lorg/w3c/dom/DOMLocator;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DOMErrorImpl;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getRelatedData()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRelatedException()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSeverity()S
    .locals 1

    iget-short v0, p0, Lorg/apache/harmony/xml/dom/DOMErrorImpl;->severity:S

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DOMErrorImpl;->type:Ljava/lang/String;

    return-object v0
.end method
