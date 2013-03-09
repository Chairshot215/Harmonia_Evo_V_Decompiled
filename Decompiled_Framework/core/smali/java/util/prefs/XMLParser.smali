.class Ljava/util/prefs/XMLParser;
.super Ljava/lang/Object;
.source "XMLParser.java"


# static fields
.field static final DOCTYPE:Ljava/lang/String; = "<!DOCTYPE preferences SYSTEM"

.field private static final FILE_PREFS:Ljava/lang/String; = "<!DOCTYPE map SYSTEM \'http://java.sun.com/dtd/preferences.dtd\'>"

.field static final HEADER:Ljava/lang/String; = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"

.field static final PREFS_DTD:Ljava/lang/String; = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>    <!ELEMENT preferences (root)>    <!ATTLIST preferences EXTERNAL_XML_VERSION CDATA \"0.0\" >    <!ELEMENT root (map, node*) >    <!ATTLIST root type (system|user) #REQUIRED >    <!ELEMENT node (map, node*) >    <!ATTLIST node name CDATA #REQUIRED >    <!ELEMENT map (entry*) >    <!ELEMENT entry EMPTY >    <!ATTLIST entry key   CDATA #REQUIRED value CDATA #REQUIRED >"

.field static final PREFS_DTD_NAME:Ljava/lang/String; = "http://java.sun.com/dtd/preferences.dtd"

.field private static final XML_VERSION:F = 1.0f

.field private static final builder:Ljavax/xml/parsers/DocumentBuilder;

.field private static indent:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v2, -0x1

    sput v2, Ljava/util/prefs/XMLParser;->indent:I

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setValidating(Z)V

    :try_start_0
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    sput-object v2, Ljava/util/prefs/XMLParser;->builder:Ljavax/xml/parsers/DocumentBuilder;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v2, Ljava/util/prefs/XMLParser;->builder:Ljavax/xml/parsers/DocumentBuilder;

    new-instance v3, Ljava/util/prefs/XMLParser$1;

    invoke-direct {v3}, Ljava/util/prefs/XMLParser$1;-><init>()V

    invoke-virtual {v2, v3}, Ljavax/xml/parsers/DocumentBuilder;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    sget-object v2, Ljava/util/prefs/XMLParser;->builder:Ljavax/xml/parsers/DocumentBuilder;

    new-instance v3, Ljava/util/prefs/XMLParser$2;

    invoke-direct {v3}, Ljava/util/prefs/XMLParser$2;-><init>()V

    invoke-virtual {v2, v3}, Ljavax/xml/parsers/DocumentBuilder;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static exportEntries(Ljava/util/prefs/Preferences;Ljava/io/BufferedWriter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/prefs/Preferences;->keys()[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    aget-object v3, v1, v0

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Ljava/util/prefs/Preferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1, v2, p1}, Ljava/util/prefs/XMLParser;->exportEntries([Ljava/lang/String;[Ljava/lang/String;Ljava/io/BufferedWriter;)V

    return-void
.end method

.method private static exportEntries([Ljava/lang/String;[Ljava/lang/String;Ljava/io/BufferedWriter;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    array-length v1, p0

    if-nez v1, :cond_0

    const-string v1, "map"

    invoke-static {v1, p2}, Ljava/util/prefs/XMLParser;->flushEmptyElement(Ljava/lang/String;Ljava/io/BufferedWriter;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "map"

    invoke-static {v1, p2}, Ljava/util/prefs/XMLParser;->flushStartTag(Ljava/lang/String;Ljava/io/BufferedWriter;)V

    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_2

    aget-object v1, p1, v0

    if-eqz v1, :cond_1

    const-string v1, "entry"

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "key"

    aput-object v3, v2, v5

    const-string v3, "value"

    aput-object v3, v2, v6

    new-array v3, v7, [Ljava/lang/String;

    aget-object v4, p0, v0

    aput-object v4, v3, v5

    aget-object v4, p1, v0

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3, p2}, Ljava/util/prefs/XMLParser;->flushEmptyElement(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/io/BufferedWriter;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const-string v1, "map"

    invoke-static {v1, p2}, Ljava/util/prefs/XMLParser;->flushEndTag(Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto :goto_0
.end method

.method private static exportNode(Ljava/util/StringTokenizer;Ljava/util/prefs/Preferences;ZLjava/io/BufferedWriter;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, "node"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "name"

    aput-object v3, v2, v4

    new-array v3, v5, [Ljava/lang/String;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3, p3}, Ljava/util/prefs/XMLParser;->flushStartTag(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/io/BufferedWriter;)V

    invoke-virtual {p0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "map"

    invoke-static {v1, p3}, Ljava/util/prefs/XMLParser;->flushEmptyElement(Ljava/lang/String;Ljava/io/BufferedWriter;)V

    invoke-static {p0, p1, p2, p3}, Ljava/util/prefs/XMLParser;->exportNode(Ljava/util/StringTokenizer;Ljava/util/prefs/Preferences;ZLjava/io/BufferedWriter;)V

    :cond_0
    :goto_0
    const-string v1, "node"

    invoke-static {v1, p3}, Ljava/util/prefs/XMLParser;->flushEndTag(Ljava/lang/String;Ljava/io/BufferedWriter;)V

    :cond_1
    return-void

    :cond_2
    invoke-static {p1, p3}, Ljava/util/prefs/XMLParser;->exportEntries(Ljava/util/prefs/Preferences;Ljava/io/BufferedWriter;)V

    if-eqz p2, :cond_0

    invoke-static {p1, p3}, Ljava/util/prefs/XMLParser;->exportSubTree(Ljava/util/prefs/Preferences;Ljava/io/BufferedWriter;)V

    goto :goto_0
.end method

.method static exportPrefs(Ljava/util/prefs/Preferences;Ljava/io/OutputStream;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v2, -0x1

    sput v2, Ljava/util/prefs/XMLParser;->indent:I

    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    const-string v3, "UTF-8"

    invoke-direct {v2, p1, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const-string v2, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    const-string v2, "<!DOCTYPE preferences SYSTEM"

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v2, " \'"

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v2, "http://java.sun.com/dtd/preferences.dtd"

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v2, "\'>"

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    const-string v2, "preferences"

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "EXTERNAL_XML_VERSION"

    aput-object v4, v3, v6

    new-array v4, v7, [Ljava/lang/String;

    const/high16 v5, 0x3f80

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4, v1}, Ljava/util/prefs/XMLParser;->flushStartTag(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/io/BufferedWriter;)V

    const-string v3, "root"

    new-array v4, v7, [Ljava/lang/String;

    const-string v2, "type"

    aput-object v2, v4, v6

    new-array v5, v7, [Ljava/lang/String;

    invoke-virtual {p0}, Ljava/util/prefs/Preferences;->isUserNode()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "user"

    :goto_0
    aput-object v2, v5, v6

    invoke-static {v3, v4, v5, v1}, Ljava/util/prefs/XMLParser;->flushStartTag(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/io/BufferedWriter;)V

    const-string v2, "map"

    invoke-static {v2, v1}, Ljava/util/prefs/XMLParser;->flushEmptyElement(Ljava/lang/String;Ljava/io/BufferedWriter;)V

    new-instance v0, Ljava/util/StringTokenizer;

    invoke-virtual {p0}, Ljava/util/prefs/Preferences;->absolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-direct {v0, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0, p2, v1}, Ljava/util/prefs/XMLParser;->exportNode(Ljava/util/StringTokenizer;Ljava/util/prefs/Preferences;ZLjava/io/BufferedWriter;)V

    const-string v2, "root"

    invoke-static {v2, v1}, Ljava/util/prefs/XMLParser;->flushEndTag(Ljava/lang/String;Ljava/io/BufferedWriter;)V

    const-string v2, "preferences"

    invoke-static {v2, v1}, Ljava/util/prefs/XMLParser;->flushEndTag(Ljava/lang/String;Ljava/io/BufferedWriter;)V

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    const/4 v1, 0x0

    return-void

    :cond_0
    const-string v2, "system"

    goto :goto_0
.end method

.method private static exportSubTree(Ljava/util/prefs/Preferences;Ljava/io/BufferedWriter;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Ljava/util/prefs/Preferences;->childrenNames()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    if-lez v3, :cond_0

    const/4 v1, 0x0

    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v3, v2, v1

    invoke-virtual {p0, v3}, Ljava/util/prefs/Preferences;->node(Ljava/lang/String;)Ljava/util/prefs/Preferences;

    move-result-object v0

    const-string v3, "node"

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "name"

    aput-object v5, v4, v7

    new-array v5, v8, [Ljava/lang/String;

    aget-object v6, v2, v1

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5, p1}, Ljava/util/prefs/XMLParser;->flushStartTag(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/io/BufferedWriter;)V

    invoke-static {v0, p1}, Ljava/util/prefs/XMLParser;->exportEntries(Ljava/util/prefs/Preferences;Ljava/io/BufferedWriter;)V

    invoke-static {v0, p1}, Ljava/util/prefs/XMLParser;->exportSubTree(Ljava/util/prefs/Preferences;Ljava/io/BufferedWriter;)V

    const-string v3, "node"

    invoke-static {v3, p1}, Ljava/util/prefs/XMLParser;->flushEndTag(Ljava/lang/String;Ljava/io/BufferedWriter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static flushEmptyElement(Ljava/lang/String;Ljava/io/BufferedWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget v0, Ljava/util/prefs/XMLParser;->indent:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Ljava/util/prefs/XMLParser;->indent:I

    invoke-static {v0, p1}, Ljava/util/prefs/XMLParser;->flushIndent(ILjava/io/BufferedWriter;)V

    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v0, " />"

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    sget v0, Ljava/util/prefs/XMLParser;->indent:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Ljava/util/prefs/XMLParser;->indent:I

    return-void
.end method

.method private static flushEmptyElement(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/io/BufferedWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget v0, Ljava/util/prefs/XMLParser;->indent:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Ljava/util/prefs/XMLParser;->indent:I

    invoke-static {v0, p3}, Ljava/util/prefs/XMLParser;->flushIndent(ILjava/io/BufferedWriter;)V

    const-string v0, "<"

    invoke-virtual {p3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-static {p1, p2, p3}, Ljava/util/prefs/XMLParser;->flushPairs([Ljava/lang/String;[Ljava/lang/String;Ljava/io/BufferedWriter;)V

    const-string v0, " />"

    invoke-virtual {p3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/BufferedWriter;->newLine()V

    sget v0, Ljava/util/prefs/XMLParser;->indent:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Ljava/util/prefs/XMLParser;->indent:I

    return-void
.end method

.method private static flushEndTag(Ljava/lang/String;Ljava/io/BufferedWriter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget v0, Ljava/util/prefs/XMLParser;->indent:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Ljava/util/prefs/XMLParser;->indent:I

    invoke-static {v0, p1}, Ljava/util/prefs/XMLParser;->flushIndent(ILjava/io/BufferedWriter;)V

    const-string v0, "</"

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    return-void
.end method

.method private static flushIndent(ILjava/io/BufferedWriter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static flushPairs([Ljava/lang/String;[Ljava/lang/String;Ljava/io/BufferedWriter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    aget-object v1, p0, v0

    invoke-virtual {p2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v1, "=\""

    invoke-virtual {p2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    aget-object v1, p1, v0

    invoke-static {v1}, Ljava/util/prefs/XMLParser;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v1, "\""

    invoke-virtual {p2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static flushStartTag(Ljava/lang/String;Ljava/io/BufferedWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget v0, Ljava/util/prefs/XMLParser;->indent:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Ljava/util/prefs/XMLParser;->indent:I

    invoke-static {v0, p1}, Ljava/util/prefs/XMLParser;->flushIndent(ILjava/io/BufferedWriter;)V

    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    return-void
.end method

.method private static flushStartTag(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/io/BufferedWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget v0, Ljava/util/prefs/XMLParser;->indent:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Ljava/util/prefs/XMLParser;->indent:I

    invoke-static {v0, p3}, Ljava/util/prefs/XMLParser;->flushIndent(ILjava/io/BufferedWriter;)V

    const-string v0, "<"

    invoke-virtual {p3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-static {p1, p2, p3}, Ljava/util/prefs/XMLParser;->flushPairs([Ljava/lang/String;[Ljava/lang/String;Ljava/io/BufferedWriter;)V

    const-string v0, ">"

    invoke-virtual {p3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/BufferedWriter;->newLine()V

    return-void
.end method

.method private static htmlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :sswitch_0
    const-string v3, "&lt;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_1
    const-string v3, "&gt;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_2
    const-string v3, "&amp;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_3
    const-string v3, "&quot;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x26 -> :sswitch_2
        0x3c -> :sswitch_0
        0x3e -> :sswitch_1
    .end sparse-switch
.end method

.method static importPrefs(Ljava/io/InputStream;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/prefs/InvalidPreferencesFormatException;
        }
    .end annotation

    :try_start_0
    sget-object v7, Ljava/util/prefs/XMLParser;->builder:Ljavax/xml/parsers/DocumentBuilder;

    new-instance v8, Lorg/xml/sax/InputSource;

    invoke-direct {v8, p0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v7, v8}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    const-string v7, "EXTERNAL_XML_VERSION"

    invoke-interface {v2, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    const/high16 v8, 0x3f80

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    new-instance v7, Ljava/util/prefs/InvalidPreferencesFormatException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Preferences version "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is not supported"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/prefs/InvalidPreferencesFormatException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v1

    new-instance v7, Ljava/util/prefs/InvalidPreferencesFormatException;

    invoke-direct {v7, v1}, Ljava/util/prefs/InvalidPreferencesFormatException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    :cond_0
    :try_start_1
    const-string v7, "root"

    invoke-interface {v2, v7}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    const/4 v3, 0x0

    const-string v7, "type"

    invoke-interface {v4, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "user"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {}, Ljava/util/prefs/Preferences;->userRoot()Ljava/util/prefs/Preferences;

    move-result-object v3

    :goto_0
    invoke-static {v3, v4}, Ljava/util/prefs/XMLParser;->loadNode(Ljava/util/prefs/Preferences;Lorg/w3c/dom/Element;)V

    return-void

    :cond_1
    invoke-static {}, Ljava/util/prefs/Preferences;->systemRoot()Ljava/util/prefs/Preferences;
    :try_end_1
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    goto :goto_0

    :catch_1
    move-exception v1

    new-instance v7, Ljava/util/prefs/InvalidPreferencesFormatException;

    invoke-direct {v7, v1}, Ljava/util/prefs/InvalidPreferencesFormatException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method

.method private static loadNode(Ljava/util/prefs/Preferences;Lorg/w3c/dom/Element;)V
    .locals 14

    const-string v12, "node"

    invoke-static {p1, v12}, Ljava/util/prefs/XMLParser;->selectNodeList(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    const-string v12, "map/entry"

    invoke-static {p1, v12}, Ljava/util/prefs/XMLParser;->selectNodeList(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    new-array v10, v2, [Ljava/util/prefs/Preferences;

    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    move-object v12, p0

    check-cast v12, Ljava/util/prefs/AbstractPreferences;

    iget-object v13, v12, Ljava/util/prefs/AbstractPreferences;->lock:Ljava/lang/Object;

    monitor-enter v13

    :try_start_0
    move-object v0, p0

    check-cast v0, Ljava/util/prefs/AbstractPreferences;

    move-object v12, v0

    invoke-virtual {v12}, Ljava/util/prefs/AbstractPreferences;->isRemoved()Z

    move-result v12

    if-eqz v12, :cond_1

    monitor-exit v13

    :cond_0
    return-void

    :cond_1
    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_2

    invoke-interface {v4, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    const-string v12, "key"

    invoke-interface {v5, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v12, "value"

    invoke-interface {v5, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v8, v11}, Ljava/util/prefs/Preferences;->put(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    :goto_1
    if-ge v7, v2, :cond_3

    invoke-interface {v3, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    const-string v12, "name"

    invoke-interface {v1, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/util/prefs/Preferences;->node(Ljava/lang/String;)Ljava/util/prefs/Preferences;

    move-result-object v12

    aput-object v12, v10, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v2, :cond_0

    aget-object v13, v10, v7

    invoke-interface {v3, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    check-cast v12, Lorg/w3c/dom/Element;

    invoke-static {v13, v12}, Ljava/util/prefs/XMLParser;->loadNode(Ljava/util/prefs/Preferences;Lorg/w3c/dom/Element;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :catchall_0
    move-exception v12

    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v12
.end method

.method static readXmlPreferences(Ljava/io/File;)Ljava/util/Properties;
    .locals 12

    new-instance v8, Ljava/util/Properties;

    invoke-direct {v8}, Ljava/util/Properties;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    :goto_0
    return-object v8

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v6, 0x0

    :try_start_0
    new-instance v7, Ljava/io/InputStreamReader;

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v11, "UTF-8"

    invoke-direct {v7, v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-object v10, Ljava/util/prefs/XMLParser;->builder:Ljavax/xml/parsers/DocumentBuilder;

    new-instance v11, Lorg/xml/sax/InputSource;

    invoke-direct {v11, v7}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v10, v11}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v10

    const-string v11, "entry"

    invoke-static {v10, v11}, Ljava/util/prefs/XMLParser;->selectNodeList(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_1

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    const-string v10, "key"

    invoke-interface {v5, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v10, "value"

    invoke-interface {v5, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v3, v9}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v6, v7

    goto :goto_0

    :catch_0
    move-exception v10

    :goto_2
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    :catch_1
    move-exception v10

    :goto_3
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    :catchall_0
    move-exception v10

    :goto_4
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v10

    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0

    :catchall_1
    move-exception v10

    move-object v6, v7

    goto :goto_4

    :catch_2
    move-exception v10

    move-object v6, v7

    goto :goto_3

    :catch_3
    move-exception v10

    move-object v6, v7

    goto :goto_2
.end method

.method private static selectNodeList(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v7, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v9, "/"

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    aget-object v9, v6, v11

    const-string v10, "entry"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    aget-object v9, v6, v11

    const-string v10, "node"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v1, v9, :cond_5

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    instance-of v9, v4, Lorg/w3c/dom/Element;

    if-eqz v9, :cond_1

    move-object v9, v4

    check-cast v9, Lorg/w3c/dom/Element;

    invoke-interface {v9}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v9

    aget-object v10, v6, v11

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    check-cast v4, Lorg/w3c/dom/Node;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    aget-object v9, v6, v11

    const-string v10, "map"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    aget-object v9, v6, v12

    const-string v10, "entry"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v1, 0x0

    :goto_1
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v1, v9, :cond_5

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    instance-of v9, v4, Lorg/w3c/dom/Element;

    if-eqz v9, :cond_4

    move-object v9, v4

    check-cast v9, Lorg/w3c/dom/Element;

    invoke-interface {v9}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v9

    aget-object v10, v6, v11

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    check-cast v4, Lorg/w3c/dom/Node;

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    const/4 v3, 0x0

    :goto_2
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v3, v9, :cond_4

    invoke-interface {v5, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    instance-of v9, v8, Lorg/w3c/dom/Element;

    if-eqz v9, :cond_3

    move-object v9, v8

    check-cast v9, Lorg/w3c/dom/Element;

    invoke-interface {v9}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v9

    aget-object v10, v6, v12

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    check-cast v8, Lorg/w3c/dom/Node;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    new-instance v7, Ljava/util/prefs/NodeSet;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/util/prefs/NodeSet;-><init>(Ljava/util/Iterator;)V

    return-object v7
.end method

.method static writeXmlPreferences(Ljava/io/File;Ljava/util/Properties;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "prefs-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".xml.tmp"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v5, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v8, Ljava/io/OutputStreamWriter;

    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v10, "UTF-8"

    invoke-direct {v8, v9, v10}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v4, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v8, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"

    invoke-virtual {v4, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V

    const-string v8, "<!DOCTYPE map SYSTEM \'http://java.sun.com/dtd/preferences.dtd\'>"

    invoke-virtual {v4, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V

    invoke-virtual {p1}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-virtual {p1}, Ljava/util/Properties;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    array-length v2, v1

    new-array v7, v2, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v8, v1, v0

    invoke-virtual {p1, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1, v7, v4}, Ljava/util/prefs/XMLParser;->exportEntries([Ljava/lang/String;[Ljava/lang/String;Ljava/io/BufferedWriter;)V

    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    invoke-virtual {v6, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_1

    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to write preferences to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v8

    move-object v3, v4

    :goto_1
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    throw v8

    :cond_1
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    return-void

    :catchall_1
    move-exception v8

    goto :goto_1
.end method
