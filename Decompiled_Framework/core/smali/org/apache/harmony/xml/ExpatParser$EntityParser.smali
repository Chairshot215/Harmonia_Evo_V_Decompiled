.class Lorg/apache/harmony/xml/ExpatParser$EntityParser;
.super Lorg/apache/harmony/xml/ExpatParser;
.source "ExpatParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xml/ExpatParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EntityParser"
.end annotation


# instance fields
.field private depth:I


# direct methods
.method private constructor <init>(Ljava/lang/String;Lorg/apache/harmony/xml/ExpatReader;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/harmony/xml/ExpatParser;-><init>(Ljava/lang/String;Lorg/apache/harmony/xml/ExpatReader;ILjava/lang/String;Ljava/lang/String;Lorg/apache/harmony/xml/ExpatParser$1;)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/harmony/xml/ExpatParser$EntityParser;->depth:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lorg/apache/harmony/xml/ExpatReader;ILjava/lang/String;Ljava/lang/String;Lorg/apache/harmony/xml/ExpatParser$1;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/apache/harmony/xml/ExpatParser$EntityParser;-><init>(Ljava/lang/String;Lorg/apache/harmony/xml/ExpatReader;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/harmony/xml/ExpatParser$EntityParser;->depth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/harmony/xml/ExpatParser$EntityParser;->depth:I

    if-lez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lorg/apache/harmony/xml/ExpatParser;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected declared-synchronized finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/harmony/xml/ExpatParser$EntityParser;->depth:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/harmony/xml/ExpatParser$EntityParser;->depth:I

    if-lez v0, :cond_0

    invoke-super/range {p0 .. p5}, Lorg/apache/harmony/xml/ExpatParser;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    :cond_0
    return-void
.end method
