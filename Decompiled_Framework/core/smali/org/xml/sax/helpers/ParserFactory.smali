.class public Lorg/xml/sax/helpers/ParserFactory;
.super Ljava/lang/Object;
.source "ParserFactory.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeParser()Lorg/xml/sax/Parser;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/ClassCastException;
        }
    .end annotation

    const-string v1, "org.xml.sax.parser"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "No value for sax.parser property"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {v0}, Lorg/xml/sax/helpers/ParserFactory;->makeParser(Ljava/lang/String;)Lorg/xml/sax/Parser;

    move-result-object v1

    return-object v1
.end method

.method public static makeParser(Ljava/lang/String;)Lorg/xml/sax/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/ClassCastException;
        }
    .end annotation

    invoke-static {}, Lorg/xml/sax/helpers/NewInstance;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/xml/sax/helpers/NewInstance;->newInstance(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xml/sax/Parser;

    return-object v0
.end method
