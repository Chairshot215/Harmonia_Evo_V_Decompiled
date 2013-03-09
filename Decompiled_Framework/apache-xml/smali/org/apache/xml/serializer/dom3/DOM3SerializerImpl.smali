.class public final Lorg/apache/xml/serializer/dom3/DOM3SerializerImpl;
.super Ljava/lang/Object;
.source "DOM3SerializerImpl.java"

# interfaces
.implements Lorg/apache/xml/serializer/DOM3Serializer;


# instance fields
.field private fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

.field private fNewLine:Ljava/lang/String;

.field private fSerializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

.field private fSerializerFilter:Lorg/w3c/dom/ls/LSSerializerFilter;


# direct methods
.method public constructor <init>(Lorg/apache/xml/serializer/SerializationHandler;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xml/serializer/dom3/DOM3SerializerImpl;->fSerializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    return-void
.end method


# virtual methods
.method public getErrorHandler()Lorg/w3c/dom/DOMErrorHandler;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3SerializerImpl;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    return-object v0
.end method

.method public getNewLine()[C
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3SerializerImpl;->fNewLine:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3SerializerImpl;->fNewLine:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNodeFilter()Lorg/w3c/dom/ls/LSSerializerFilter;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3SerializerImpl;->fSerializerFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    return-object v0
.end method

.method public serializeDOM3(Lorg/w3c/dom/Node;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v1, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;

    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/DOM3SerializerImpl;->fSerializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    iget-object v3, p0, Lorg/apache/xml/serializer/dom3/DOM3SerializerImpl;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    iget-object v4, p0, Lorg/apache/xml/serializer/dom3/DOM3SerializerImpl;->fSerializerFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    iget-object v5, p0, Lorg/apache/xml/serializer/dom3/DOM3SerializerImpl;->fNewLine:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;-><init>(Lorg/apache/xml/serializer/SerializationHandler;Lorg/w3c/dom/DOMErrorHandler;Lorg/w3c/dom/ls/LSSerializerFilter;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->traverse(Lorg/w3c/dom/Node;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v2, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;

    invoke-direct {v2, v0}, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public setErrorHandler(Lorg/w3c/dom/DOMErrorHandler;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xml/serializer/dom3/DOM3SerializerImpl;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    return-void
.end method

.method public setNewLine([C)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    :goto_0
    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3SerializerImpl;->fNewLine:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNodeFilter(Lorg/w3c/dom/ls/LSSerializerFilter;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xml/serializer/dom3/DOM3SerializerImpl;->fSerializerFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    return-void
.end method

.method public setSerializationHandler(Lorg/apache/xml/serializer/SerializationHandler;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xml/serializer/dom3/DOM3SerializerImpl;->fSerializationHandler:Lorg/apache/xml/serializer/SerializationHandler;

    return-void
.end method
