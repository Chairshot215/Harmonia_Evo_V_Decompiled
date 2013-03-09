.class public Lorg/ccil/cowan/tagsoup/CommandLine;
.super Ljava/lang/Object;
.source "CommandLine.java"


# static fields
.field static options:Ljava/util/Hashtable;

.field private static theOutputEncoding:Ljava/lang/String;

.field private static theParser:Lorg/ccil/cowan/tagsoup/Parser;

.field private static theSchema:Lorg/ccil/cowan/tagsoup/HTMLSchema;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    sget-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v1, "--nocdata"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v1, "--files"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v1, "--reuse"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v1, "--nons"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v1, "--nobogons"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v1, "--any"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v1, "--emptybogons"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v1, "--norootbogons"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v1, "--pyxin"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v1, "--lexical"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v1, "--pyx"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v1, "--html"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v1, "--method="

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v1, "--doctype-public="

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v1, "--doctype-system="

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v1, "--output-encoding="

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v1, "--omit-xml-declaration"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v1, "--encoding="

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v1, "--help"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v1, "--version"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v1, "--nodefaults"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v1, "--nocolons"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v1, "--norestart"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v1, "--ignorable"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput-object v3, Lorg/ccil/cowan/tagsoup/CommandLine;->theParser:Lorg/ccil/cowan/tagsoup/Parser;

    sput-object v3, Lorg/ccil/cowan/tagsoup/CommandLine;->theSchema:Lorg/ccil/cowan/tagsoup/HTMLSchema;

    sput-object v3, Lorg/ccil/cowan/tagsoup/CommandLine;->theOutputEncoding:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static chooseContentHandler(Ljava/io/Writer;)Lorg/xml/sax/ContentHandler;
    .locals 6

    sget-object v4, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v5, "--pyx"

    invoke-static {v4, v5}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v3, Lorg/ccil/cowan/tagsoup/PYXWriter;

    invoke-direct {v3, p0}, Lorg/ccil/cowan/tagsoup/PYXWriter;-><init>(Ljava/io/Writer;)V

    :goto_0
    return-object v3

    :cond_0
    new-instance v3, Lorg/ccil/cowan/tagsoup/XMLWriter;

    invoke-direct {v3, p0}, Lorg/ccil/cowan/tagsoup/XMLWriter;-><init>(Ljava/io/Writer;)V

    sget-object v4, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v5, "--html"

    invoke-static {v4, v5}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "method"

    const-string v5, "html"

    invoke-virtual {v3, v4, v5}, Lorg/ccil/cowan/tagsoup/XMLWriter;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "omit-xml-declaration"

    const-string v5, "yes"

    invoke-virtual {v3, v4, v5}, Lorg/ccil/cowan/tagsoup/XMLWriter;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-object v4, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v5, "--method="

    invoke-static {v4, v5}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v5, "--method="

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string v4, "method"

    invoke-virtual {v3, v4, v2}, Lorg/ccil/cowan/tagsoup/XMLWriter;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    sget-object v4, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v5, "--doctype-public="

    invoke-static {v4, v5}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v5, "--doctype-public="

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v4, "doctype-public"

    invoke-virtual {v3, v4, v0}, Lorg/ccil/cowan/tagsoup/XMLWriter;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    sget-object v4, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v5, "--doctype-system="

    invoke-static {v4, v5}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v5, "--doctype-system="

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v4, "doctype-system"

    invoke-virtual {v3, v4, v1}, Lorg/ccil/cowan/tagsoup/XMLWriter;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    sget-object v4, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v5, "--output-encoding="

    invoke-static {v4, v5}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v5, "--output-encoding="

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sput-object v4, Lorg/ccil/cowan/tagsoup/CommandLine;->theOutputEncoding:Ljava/lang/String;

    sget-object v4, Lorg/ccil/cowan/tagsoup/CommandLine;->theOutputEncoding:Ljava/lang/String;

    if-eqz v4, :cond_5

    const-string v4, "encoding"

    sget-object v5, Lorg/ccil/cowan/tagsoup/CommandLine;->theOutputEncoding:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/ccil/cowan/tagsoup/XMLWriter;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    sget-object v4, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v5, "--omit-xml-declaration"

    invoke-static {v4, v5}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "omit-xml-declaration"

    const-string v5, "yes"

    invoke-virtual {v3, v4, v5}, Lorg/ccil/cowan/tagsoup/XMLWriter;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    sget-object v4, Lorg/ccil/cowan/tagsoup/CommandLine;->theSchema:Lorg/ccil/cowan/tagsoup/HTMLSchema;

    invoke-virtual {v4}, Lorg/ccil/cowan/tagsoup/HTMLSchema;->getURI()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lorg/ccil/cowan/tagsoup/XMLWriter;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static doHelp()V
    .locals 5

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "usage: java -jar tagsoup-*.jar "

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, " [ "

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v1, 0x1

    sget-object v3, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v1, :cond_0

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "| "

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v2, v3

    check-cast v2, Ljava/lang/String;

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_1
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "]*"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static getopts(Ljava/util/Hashtable;[Ljava/lang/String;)I
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_0

    aget-object v0, p1, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-eq v4, v5, :cond_1

    :cond_0
    return v2

    :cond_1
    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_2

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {p0, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-nez v3, :cond_3

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "Unknown option "

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    goto :goto_1
.end method

.method private static hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    sget-object v6, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    invoke-static {v6, p0}, Lorg/ccil/cowan/tagsoup/CommandLine;->getopts(Ljava/util/Hashtable;[Ljava/lang/String;)I

    move-result v3

    sget-object v6, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v7, "--help"

    invoke-static {v6, v7}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Lorg/ccil/cowan/tagsoup/CommandLine;->doHelp()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v6, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v7, "--version"

    invoke-static {v6, v7}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "TagSoup version 1.2"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    array-length v6, p0

    if-ne v6, v3, :cond_3

    const-string v6, ""

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v6, v7}, Lorg/ccil/cowan/tagsoup/CommandLine;->process(Ljava/lang/String;Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_3
    sget-object v6, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v7, "--files"

    invoke-static {v6, v7}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    move v1, v3

    :goto_1
    array-length v6, p0

    if-ge v1, v6, :cond_0

    aget-object v5, p0, v1

    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v6, -0x1

    if-ne v2, v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".xhtml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "src: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " dst: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v4}, Lorg/ccil/cowan/tagsoup/CommandLine;->process(Ljava/lang/String;Ljava/io/OutputStream;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const-string v6, ".xhtml"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".xhtml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    move v1, v3

    :goto_3
    array-length v6, p0

    if-ge v1, v6, :cond_0

    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "src: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, p0, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    aget-object v6, p0, v1

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v6, v7}, Lorg/ccil/cowan/tagsoup/CommandLine;->process(Ljava/lang/String;Ljava/io/OutputStream;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method private static process(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v7, 0x0

    sget-object v5, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v6, "--reuse"

    invoke-static {v5, v6}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    sget-object v5, Lorg/ccil/cowan/tagsoup/CommandLine;->theParser:Lorg/ccil/cowan/tagsoup/Parser;

    if-nez v5, :cond_0

    new-instance v5, Lorg/ccil/cowan/tagsoup/Parser;

    invoke-direct {v5}, Lorg/ccil/cowan/tagsoup/Parser;-><init>()V

    sput-object v5, Lorg/ccil/cowan/tagsoup/CommandLine;->theParser:Lorg/ccil/cowan/tagsoup/Parser;

    :cond_0
    sget-object v2, Lorg/ccil/cowan/tagsoup/CommandLine;->theParser:Lorg/ccil/cowan/tagsoup/Parser;

    :goto_0
    new-instance v5, Lorg/ccil/cowan/tagsoup/HTMLSchema;

    invoke-direct {v5}, Lorg/ccil/cowan/tagsoup/HTMLSchema;-><init>()V

    sput-object v5, Lorg/ccil/cowan/tagsoup/CommandLine;->theSchema:Lorg/ccil/cowan/tagsoup/HTMLSchema;

    const-string v5, "http://www.ccil.org/~cowan/tagsoup/properties/schema"

    sget-object v6, Lorg/ccil/cowan/tagsoup/CommandLine;->theSchema:Lorg/ccil/cowan/tagsoup/HTMLSchema;

    invoke-interface {v2, v5, v6}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v5, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v6, "--nocdata"

    invoke-static {v5, v6}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "http://www.ccil.org/~cowan/tagsoup/features/cdata-elements"

    invoke-interface {v2, v5, v7}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    :cond_1
    sget-object v5, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v6, "--nons"

    invoke-static {v5, v6}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v6, "--html"

    invoke-static {v5, v6}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    const-string v5, "http://xml.org/sax/features/namespaces"

    invoke-interface {v2, v5, v7}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    :cond_3
    sget-object v5, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v6, "--nobogons"

    invoke-static {v5, v6}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "http://www.ccil.org/~cowan/tagsoup/features/ignore-bogons"

    invoke-interface {v2, v5, v8}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    :cond_4
    sget-object v5, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v6, "--any"

    invoke-static {v5, v6}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    const-string v5, "http://www.ccil.org/~cowan/tagsoup/features/bogons-empty"

    invoke-interface {v2, v5, v7}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    :cond_5
    :goto_1
    sget-object v5, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v6, "--norootbogons"

    invoke-static {v5, v6}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "http://www.ccil.org/~cowan/tagsoup/features/root-bogons"

    invoke-interface {v2, v5, v7}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    :cond_6
    sget-object v5, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v6, "--nodefaults"

    invoke-static {v5, v6}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "http://www.ccil.org/~cowan/tagsoup/features/default-attributes"

    invoke-interface {v2, v5, v7}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    :cond_7
    sget-object v5, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v6, "--nocolons"

    invoke-static {v5, v6}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "http://www.ccil.org/~cowan/tagsoup/features/translate-colons"

    invoke-interface {v2, v5, v8}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    :cond_8
    sget-object v5, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v6, "--norestart"

    invoke-static {v5, v6}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "http://www.ccil.org/~cowan/tagsoup/features/restart-elements"

    invoke-interface {v2, v5, v7}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    :cond_9
    sget-object v5, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v6, "--ignorable"

    invoke-static {v5, v6}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v5, "http://www.ccil.org/~cowan/tagsoup/features/ignorable-whitespace"

    invoke-interface {v2, v5, v8}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    :cond_a
    sget-object v5, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v6, "--pyxin"

    invoke-static {v5, v6}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v5, "http://www.ccil.org/~cowan/tagsoup/properties/scanner"

    new-instance v6, Lorg/ccil/cowan/tagsoup/PYXScanner;

    invoke-direct {v6}, Lorg/ccil/cowan/tagsoup/PYXScanner;-><init>()V

    invoke-interface {v2, v5, v6}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_b
    sget-object v5, Lorg/ccil/cowan/tagsoup/CommandLine;->theOutputEncoding:Ljava/lang/String;

    if-nez v5, :cond_10

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    :goto_2
    invoke-static {v4}, Lorg/ccil/cowan/tagsoup/CommandLine;->chooseContentHandler(Ljava/io/Writer;)Lorg/xml/sax/ContentHandler;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    sget-object v5, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v6, "--lexical"

    invoke-static {v5, v6}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    instance-of v5, v1, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v5, :cond_c

    const-string v5, "http://xml.org/sax/properties/lexical-handler"

    invoke-interface {v2, v5, v1}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_c
    new-instance v3, Lorg/xml/sax/InputSource;

    invoke-direct {v3}, Lorg/xml/sax/InputSource;-><init>()V

    const-string v5, ""

    if-eq p0, v5, :cond_11

    invoke-virtual {v3, p0}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    :goto_3
    sget-object v5, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v6, "--encoding="

    invoke-static {v5, v6}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    sget-object v5, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v6, "--encoding="

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_d

    invoke-virtual {v3, v0}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    :cond_d
    invoke-interface {v2, v3}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    return-void

    :cond_e
    new-instance v2, Lorg/ccil/cowan/tagsoup/Parser;

    invoke-direct {v2}, Lorg/ccil/cowan/tagsoup/Parser;-><init>()V

    goto/16 :goto_0

    :cond_f
    sget-object v5, Lorg/ccil/cowan/tagsoup/CommandLine;->options:Ljava/util/Hashtable;

    const-string v6, "--emptybogons"

    invoke-static {v5, v6}, Lorg/ccil/cowan/tagsoup/CommandLine;->hasOption(Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "http://www.ccil.org/~cowan/tagsoup/features/bogons-empty"

    invoke-interface {v2, v5, v8}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_10
    new-instance v4, Ljava/io/OutputStreamWriter;

    sget-object v5, Lorg/ccil/cowan/tagsoup/CommandLine;->theOutputEncoding:Ljava/lang/String;

    invoke-direct {v4, p1, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_2

    :cond_11
    sget-object v5, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-virtual {v3, v5}, Lorg/xml/sax/InputSource;->setByteStream(Ljava/io/InputStream;)V

    goto :goto_3
.end method
