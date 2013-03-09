.class public Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/DelegatingFieldParser;
.super Ljava/lang/Object;
.source "DelegatingFieldParser.java"

# interfaces
.implements Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/FieldParser;


# instance fields
.field private defaultParser:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/FieldParser;

.field private parsers:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/DelegatingFieldParser;->parsers:Ljava/util/Map;

    .line 24
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/UnstructuredField$Parser;

    invoke-direct {v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/UnstructuredField$Parser;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/DelegatingFieldParser;->defaultParser:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/FieldParser;

    return-void
.end method


# virtual methods
.method public getParser(Ljava/lang/String;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/FieldParser;
    .locals 3
    .parameter "name"

    .prologue
    .line 36
    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/DelegatingFieldParser;->parsers:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/FieldParser;

    .line 37
    .local v0, field:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/FieldParser;
    if-nez v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/DelegatingFieldParser;->defaultParser:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/FieldParser;

    .line 40
    .end local v0           #field:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/FieldParser;
    :cond_0
    return-object v0
.end method

.method public parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/Field;
    .locals 2
    .parameter "name"
    .parameter "body"
    .parameter "raw"

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/DelegatingFieldParser;->getParser(Ljava/lang/String;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/FieldParser;

    move-result-object v0

    .line 45
    .local v0, parser:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/FieldParser;
    invoke-interface {v0, p1, p2, p3}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/FieldParser;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/Field;

    move-result-object v1

    return-object v1
.end method

.method public setFieldParser(Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/FieldParser;)V
    .locals 2
    .parameter "name"
    .parameter "parser"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/DelegatingFieldParser;->parsers:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    return-void
.end method
