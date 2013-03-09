.class public Lorg/apache/xml/utils/DefaultErrorHandler;
.super Ljava/lang/Object;
.source "DefaultErrorHandler.java"

# interfaces
.implements Lorg/xml/sax/ErrorHandler;
.implements Ljavax/xml/transform/ErrorListener;


# instance fields
.field m_pw:Ljava/io/PrintWriter;

.field m_throwExceptionOnError:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/xml/utils/DefaultErrorHandler;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintStream;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lorg/apache/xml/utils/DefaultErrorHandler;->m_throwExceptionOnError:Z

    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    iput-object v0, p0, Lorg/apache/xml/utils/DefaultErrorHandler;->m_pw:Ljava/io/PrintWriter;

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintWriter;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xml/utils/DefaultErrorHandler;->m_throwExceptionOnError:Z

    iput-object p1, p0, Lorg/apache/xml/utils/DefaultErrorHandler;->m_pw:Ljava/io/PrintWriter;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xml/utils/DefaultErrorHandler;->m_throwExceptionOnError:Z

    iput-boolean p1, p0, Lorg/apache/xml/utils/DefaultErrorHandler;->m_throwExceptionOnError:Z

    return-void
.end method

.method public static ensureLocationSet(Ljavax/xml/transform/TransformerException;)V
    .locals 4

    const/4 v2, 0x0

    move-object v0, p0

    :cond_0
    instance-of v3, v0, Lorg/xml/sax/SAXParseException;

    if-eqz v3, :cond_2

    new-instance v2, Lorg/apache/xml/utils/SAXSourceLocator;

    move-object v3, v0

    check-cast v3, Lorg/xml/sax/SAXParseException;

    invoke-direct {v2, v3}, Lorg/apache/xml/utils/SAXSourceLocator;-><init>(Lorg/xml/sax/SAXParseException;)V

    :cond_1
    :goto_0
    instance-of v3, v0, Ljavax/xml/transform/TransformerException;

    if-eqz v3, :cond_3

    check-cast v0, Ljavax/xml/transform/TransformerException;

    invoke-virtual {v0}, Ljavax/xml/transform/TransformerException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_0

    invoke-virtual {p0, v2}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    return-void

    :cond_2
    instance-of v3, v0, Ljavax/xml/transform/TransformerException;

    if-eqz v3, :cond_1

    move-object v3, v0

    check-cast v3, Ljavax/xml/transform/TransformerException;

    invoke-virtual {v3}, Ljavax/xml/transform/TransformerException;->getLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v2, v1

    goto :goto_0

    :cond_3
    instance-of v3, v0, Lorg/xml/sax/SAXException;

    if-eqz v3, :cond_4

    check-cast v0, Lorg/xml/sax/SAXException;

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object v0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static printLocation(Ljava/io/PrintStream;Ljavax/xml/transform/TransformerException;)V
    .locals 1

    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v0, p1}, Lorg/apache/xml/utils/DefaultErrorHandler;->printLocation(Ljava/io/PrintWriter;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static printLocation(Ljava/io/PrintStream;Lorg/xml/sax/SAXParseException;)V
    .locals 1

    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v0, p1}, Lorg/apache/xml/utils/DefaultErrorHandler;->printLocation(Ljava/io/PrintWriter;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static printLocation(Ljava/io/PrintWriter;Ljava/lang/Throwable;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    :cond_0
    instance-of v4, v0, Lorg/xml/sax/SAXParseException;

    if-eqz v4, :cond_2

    new-instance v3, Lorg/apache/xml/utils/SAXSourceLocator;

    move-object v4, v0

    check-cast v4, Lorg/xml/sax/SAXParseException;

    invoke-direct {v3, v4}, Lorg/apache/xml/utils/SAXSourceLocator;-><init>(Lorg/xml/sax/SAXParseException;)V

    :cond_1
    :goto_0
    instance-of v4, v0, Ljavax/xml/transform/TransformerException;

    if-eqz v4, :cond_3

    check-cast v0, Ljavax/xml/transform/TransformerException;

    invoke-virtual {v0}, Ljavax/xml/transform/TransformerException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_0

    if-eqz v3, :cond_8

    invoke-interface {v3}, Ljavax/xml/transform/SourceLocator;->getPublicId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljavax/xml/transform/SourceLocator;->getPublicId()Ljava/lang/String;

    move-result-object v2

    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "line"

    invoke-static {v5, v6}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Ljavax/xml/transform/SourceLocator;->getLineNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "column"

    invoke-static {v5, v6}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Ljavax/xml/transform/SourceLocator;->getColumnNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_3
    return-void

    :cond_2
    instance-of v4, v0, Ljavax/xml/transform/TransformerException;

    if-eqz v4, :cond_1

    move-object v4, v0

    check-cast v4, Ljavax/xml/transform/TransformerException;

    invoke-virtual {v4}, Ljavax/xml/transform/TransformerException;->getLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v3, v1

    goto :goto_0

    :cond_3
    instance-of v4, v0, Lorg/apache/xml/utils/WrappedRuntimeException;

    if-eqz v4, :cond_4

    check-cast v0, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-virtual {v0}, Lorg/apache/xml/utils/WrappedRuntimeException;->getException()Ljava/lang/Exception;

    move-result-object v0

    goto :goto_1

    :cond_4
    instance-of v4, v0, Lorg/xml/sax/SAXException;

    if-eqz v4, :cond_5

    check-cast v0, Lorg/xml/sax/SAXException;

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object v0

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    invoke-interface {v3}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_7
    const-string v4, "ER_SYSTEMID_UNKNOWN"

    invoke-static {v4, v6}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ER_LOCATION_UNKNOWN"

    invoke-static {v5, v6}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3
.end method


# virtual methods
.method public error(Ljavax/xml/transform/TransformerException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-boolean v1, p0, Lorg/apache/xml/utils/DefaultErrorHandler;->m_throwExceptionOnError:Z

    if-eqz v1, :cond_0

    throw p1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xml/utils/DefaultErrorHandler;->getErrorWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/xml/utils/DefaultErrorHandler;->printLocation(Ljava/io/PrintWriter;Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    throw p1
.end method

.method public fatalError(Ljavax/xml/transform/TransformerException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-boolean v1, p0, Lorg/apache/xml/utils/DefaultErrorHandler;->m_throwExceptionOnError:Z

    if-eqz v1, :cond_0

    throw p1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xml/utils/DefaultErrorHandler;->getErrorWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/xml/utils/DefaultErrorHandler;->printLocation(Ljava/io/PrintWriter;Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    throw p1
.end method

.method public getErrorWriter()Ljava/io/PrintWriter;
    .locals 3

    iget-object v0, p0, Lorg/apache/xml/utils/DefaultErrorHandler;->m_pw:Ljava/io/PrintWriter;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    iput-object v0, p0, Lorg/apache/xml/utils/DefaultErrorHandler;->m_pw:Ljava/io/PrintWriter;

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/utils/DefaultErrorHandler;->m_pw:Ljava/io/PrintWriter;

    return-object v0
.end method

.method public warning(Ljavax/xml/transform/TransformerException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xml/utils/DefaultErrorHandler;->getErrorWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/xml/utils/DefaultErrorHandler;->printLocation(Ljava/io/PrintWriter;Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xml/utils/DefaultErrorHandler;->getErrorWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/xml/utils/DefaultErrorHandler;->printLocation(Ljava/io/PrintWriter;Ljava/lang/Throwable;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parser warning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
