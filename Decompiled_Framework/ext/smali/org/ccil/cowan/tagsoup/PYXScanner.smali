.class public Lorg/ccil/cowan/tagsoup/PYXScanner;
.super Ljava/lang/Object;
.source "PYXScanner.java"

# interfaces
.implements Lorg/ccil/cowan/tagsoup/Scanner;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v1, Lorg/ccil/cowan/tagsoup/PYXScanner;

    invoke-direct {v1}, Lorg/ccil/cowan/tagsoup/PYXScanner;-><init>()V

    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v3, Ljava/lang/System;->in:Ljava/io/InputStream;

    const-string v4, "UTF-8"

    invoke-direct {v0, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    new-instance v3, Lorg/ccil/cowan/tagsoup/PYXWriter;

    invoke-direct {v3, v2}, Lorg/ccil/cowan/tagsoup/PYXWriter;-><init>(Ljava/io/Writer;)V

    invoke-interface {v1, v0, v3}, Lorg/ccil/cowan/tagsoup/Scanner;->scan(Ljava/io/Reader;Lorg/ccil/cowan/tagsoup/ScanHandler;)V

    return-void
.end method


# virtual methods
.method public resetDocumentLocator(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public scan(Ljava/io/Reader;Lorg/ccil/cowan/tagsoup/ScanHandler;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v8, 0x0

    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v1, :cond_0

    array-length v6, v1

    if-ge v6, v4, :cond_1

    :cond_0
    new-array v1, v4, [C

    :cond_1
    invoke-virtual {v3, v8, v4, v1, v8}, Ljava/lang/String;->getChars(II[CI)V

    aget-char v6, v1, v8

    sparse-switch v6, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    if-eqz v2, :cond_2

    invoke-interface {p2, v1, v8, v8}, Lorg/ccil/cowan/tagsoup/ScanHandler;->stagc([CII)V

    const/4 v2, 0x0

    :cond_2
    add-int/lit8 v6, v4, -0x1

    invoke-interface {p2, v1, v9, v6}, Lorg/ccil/cowan/tagsoup/ScanHandler;->gi([CII)V

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_1
    if-eqz v2, :cond_3

    invoke-interface {p2, v1, v8, v8}, Lorg/ccil/cowan/tagsoup/ScanHandler;->stagc([CII)V

    const/4 v2, 0x0

    :cond_3
    add-int/lit8 v6, v4, -0x1

    invoke-interface {p2, v1, v9, v6}, Lorg/ccil/cowan/tagsoup/ScanHandler;->etag([CII)V

    goto :goto_0

    :sswitch_2
    if-eqz v2, :cond_4

    invoke-interface {p2, v1, v8, v8}, Lorg/ccil/cowan/tagsoup/ScanHandler;->stagc([CII)V

    const/4 v2, 0x0

    :cond_4
    add-int/lit8 v6, v4, -0x1

    invoke-interface {p2, v1, v9, v6}, Lorg/ccil/cowan/tagsoup/ScanHandler;->pi([CII)V

    goto :goto_0

    :sswitch_3
    const/16 v6, 0x20

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/lit8 v6, v5, -0x1

    invoke-interface {p2, v1, v9, v6}, Lorg/ccil/cowan/tagsoup/ScanHandler;->aname([CII)V

    add-int/lit8 v6, v5, 0x1

    sub-int v7, v4, v5

    add-int/lit8 v7, v7, -0x1

    invoke-interface {p2, v1, v6, v7}, Lorg/ccil/cowan/tagsoup/ScanHandler;->aval([CII)V

    goto :goto_0

    :sswitch_4
    if-eqz v2, :cond_5

    invoke-interface {p2, v1, v8, v8}, Lorg/ccil/cowan/tagsoup/ScanHandler;->stagc([CII)V

    const/4 v2, 0x0

    :cond_5
    const-string v6, "-\\n"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/16 v6, 0xa

    aput-char v6, v1, v8

    invoke-interface {p2, v1, v8, v9}, Lorg/ccil/cowan/tagsoup/ScanHandler;->pcdata([CII)V

    goto :goto_0

    :cond_6
    add-int/lit8 v6, v4, -0x1

    invoke-interface {p2, v1, v9, v6}, Lorg/ccil/cowan/tagsoup/ScanHandler;->pcdata([CII)V

    goto :goto_0

    :sswitch_5
    if-eqz v2, :cond_7

    invoke-interface {p2, v1, v8, v8}, Lorg/ccil/cowan/tagsoup/ScanHandler;->stagc([CII)V

    const/4 v2, 0x0

    :cond_7
    add-int/lit8 v6, v4, -0x1

    invoke-interface {p2, v1, v9, v6}, Lorg/ccil/cowan/tagsoup/ScanHandler;->entity([CII)V

    goto :goto_0

    :cond_8
    invoke-interface {p2, v1, v8, v8}, Lorg/ccil/cowan/tagsoup/ScanHandler;->eof([CII)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x28 -> :sswitch_0
        0x29 -> :sswitch_1
        0x2d -> :sswitch_4
        0x3f -> :sswitch_2
        0x41 -> :sswitch_3
        0x45 -> :sswitch_5
    .end sparse-switch
.end method

.method public startCDATA()V
    .locals 0

    return-void
.end method
