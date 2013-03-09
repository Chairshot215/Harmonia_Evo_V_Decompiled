.class public Lorg/apache/xml/dtm/DTMException;
.super Ljava/lang/RuntimeException;
.source "DTMException.java"


# static fields
.field static final serialVersionUID:J = -0xac366a4e17910ceL


# instance fields
.field containedException:Ljava/lang/Throwable;

.field locator:Ljavax/xml/transform/SourceLocator;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/xml/dtm/DTMException;->containedException:Ljava/lang/Throwable;

    iput-object v0, p0, Lorg/apache/xml/dtm/DTMException;->locator:Ljavax/xml/transform/SourceLocator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/apache/xml/dtm/DTMException;->containedException:Ljava/lang/Throwable;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/dtm/DTMException;->locator:Ljavax/xml/transform/SourceLocator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/dtm/DTMException;->containedException:Ljava/lang/Throwable;

    iput-object p2, p0, Lorg/apache/xml/dtm/DTMException;->locator:Ljavax/xml/transform/SourceLocator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lorg/apache/xml/dtm/DTMException;->containedException:Ljava/lang/Throwable;

    iput-object p2, p0, Lorg/apache/xml/dtm/DTMException;->locator:Ljavax/xml/transform/SourceLocator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/xml/dtm/DTMException;->containedException:Ljava/lang/Throwable;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/dtm/DTMException;->locator:Ljavax/xml/transform/SourceLocator;

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/dtm/DTMException;->containedException:Ljava/lang/Throwable;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/dtm/DTMException;->containedException:Ljava/lang/Throwable;

    goto :goto_0
.end method

.method public getException()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/dtm/DTMException;->containedException:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getLocationAsString()Ljava/lang/String;
    .locals 5

    iget-object v4, p0, Lorg/apache/xml/dtm/DTMException;->locator:Ljavax/xml/transform/SourceLocator;

    if-eqz v4, :cond_3

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, p0, Lorg/apache/xml/dtm/DTMException;->locator:Ljavax/xml/transform/SourceLocator;

    invoke-interface {v4}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/xml/dtm/DTMException;->locator:Ljavax/xml/transform/SourceLocator;

    invoke-interface {v4}, Ljavax/xml/transform/SourceLocator;->getLineNumber()I

    move-result v1

    iget-object v4, p0, Lorg/apache/xml/dtm/DTMException;->locator:Ljavax/xml/transform/SourceLocator;

    invoke-interface {v4}, Ljavax/xml/transform/SourceLocator;->getColumnNumber()I

    move-result v0

    if-eqz v3, :cond_0

    const-string v4, "; SystemID: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    if-eqz v1, :cond_1

    const-string v4, "; Line#: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_1
    if-eqz v0, :cond_2

    const-string v4, "; Column#: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    return-object v4

    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getLocator()Ljavax/xml/transform/SourceLocator;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/dtm/DTMException;->locator:Ljavax/xml/transform/SourceLocator;

    return-object v0
.end method

.method public getMessageAndLocation()Ljava/lang/String;
    .locals 6

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-super {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v5, p0, Lorg/apache/xml/dtm/DTMException;->locator:Ljavax/xml/transform/SourceLocator;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lorg/apache/xml/dtm/DTMException;->locator:Ljavax/xml/transform/SourceLocator;

    invoke-interface {v5}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/xml/dtm/DTMException;->locator:Ljavax/xml/transform/SourceLocator;

    invoke-interface {v5}, Ljavax/xml/transform/SourceLocator;->getLineNumber()I

    move-result v1

    iget-object v5, p0, Lorg/apache/xml/dtm/DTMException;->locator:Ljavax/xml/transform/SourceLocator;

    invoke-interface {v5}, Ljavax/xml/transform/SourceLocator;->getColumnNumber()I

    move-result v0

    if-eqz v4, :cond_1

    const-string v5, "; SystemID: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    if-eqz v1, :cond_2

    const-string v5, "; Line#: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_2
    if-eqz v0, :cond_3

    const-string v5, "; Column#: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public declared-synchronized initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/xml/dtm/DTMException;->containedException:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ER_CANNOT_OVERWRITE_CAUSE"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    if-ne p1, p0, :cond_1

    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ER_SELF_CAUSATION_NOT_PERMITTED"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lorg/apache/xml/dtm/DTMException;->containedException:Ljava/lang/Throwable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p0
.end method

.method public printStackTrace()V
    .locals 3

    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/DTMException;->printStackTrace(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 1

    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/DTMException;->printStackTrace(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 16

    if-nez p1, :cond_0

    new-instance p1, Ljava/io/PrintWriter;

    sget-object v11, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-direct {v0, v11, v12}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xml/dtm/DTMException;->getLocationAsString()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    invoke-super/range {p0 .. p1}, Ljava/lang/RuntimeException;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    const/4 v5, 0x0

    :try_start_1
    const-class v12, Ljava/lang/Throwable;

    const-string v13, "getCause"

    const/4 v11, 0x1

    new-array v14, v11, [Ljava/lang/Class;

    const/4 v15, 0x0

    const/4 v11, 0x0

    check-cast v11, Ljava/lang/Class;

    aput-object v11, v14, v15

    invoke-virtual {v12, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_4

    const/4 v5, 0x1

    :goto_1
    if-nez v5, :cond_3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xml/dtm/DTMException;->getException()Ljava/lang/Throwable;

    move-result-object v2

    const/4 v3, 0x0

    :goto_2
    const/16 v11, 0xa

    if-ge v3, v11, :cond_3

    if-eqz v2, :cond_3

    const-string v11, "---------"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :try_start_2
    instance-of v11, v2, Lorg/apache/xml/dtm/DTMException;

    if-eqz v11, :cond_2

    move-object v0, v2

    check-cast v0, Lorg/apache/xml/dtm/DTMException;

    move-object v11, v0

    invoke-virtual {v11}, Lorg/apache/xml/dtm/DTMException;->getLocationAsString()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    const-string v13, "getException"

    const/4 v11, 0x1

    new-array v14, v11, [Ljava/lang/Class;

    const/4 v15, 0x0

    const/4 v11, 0x0

    check-cast v11, Ljava/lang/Class;

    aput-object v11, v14, v15

    invoke-virtual {v12, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    if-eqz v8, :cond_4

    move-object v10, v2

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/4 v11, 0x0

    check-cast v11, Ljava/lang/Class;

    aput-object v11, v12, v13

    invoke-virtual {v8, v2, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;
    :try_end_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_3

    if-ne v10, v2, :cond_5

    :cond_3
    return-void

    :catch_0
    move-exception v1

    const-string v11, "Could not print stack trace..."

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :cond_5
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :catch_1
    move-exception v6

    const/4 v2, 0x0

    goto :goto_4

    :catch_2
    move-exception v4

    const/4 v2, 0x0

    goto :goto_4

    :catch_3
    move-exception v9

    const/4 v2, 0x0

    goto :goto_4

    :catch_4
    move-exception v11

    goto :goto_1

    :catch_5
    move-exception v11

    goto :goto_0
.end method

.method public setLocator(Ljavax/xml/transform/SourceLocator;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xml/dtm/DTMException;->locator:Ljavax/xml/transform/SourceLocator;

    return-void
.end method
