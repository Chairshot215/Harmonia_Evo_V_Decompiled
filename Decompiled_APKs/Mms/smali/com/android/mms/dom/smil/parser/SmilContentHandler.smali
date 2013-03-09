.class public Lcom/android/mms/dom/smil/parser/SmilContentHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SmilContentHandler.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "SmilContentHandler"

.field private static final sSupportedTags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCurrentNode:Lorg/w3c/dom/Node;

.field private mSmilDocument:Lorg/w3c/dom/smil/SMILDocument;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/mms/dom/smil/parser/SmilContentHandler;->sSupportedTags:Ljava/util/ArrayList;

    .line 46
    sget-object v0, Lcom/android/mms/dom/smil/parser/SmilContentHandler;->sSupportedTags:Ljava/util/ArrayList;

    const-string v1, "smil"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lcom/android/mms/dom/smil/parser/SmilContentHandler;->sSupportedTags:Ljava/util/ArrayList;

    const-string v1, "head"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lcom/android/mms/dom/smil/parser/SmilContentHandler;->sSupportedTags:Ljava/util/ArrayList;

    const-string v1, "meta"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lcom/android/mms/dom/smil/parser/SmilContentHandler;->sSupportedTags:Ljava/util/ArrayList;

    const-string v1, "body"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lcom/android/mms/dom/smil/parser/SmilContentHandler;->sSupportedTags:Ljava/util/ArrayList;

    const-string v1, "layout"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lcom/android/mms/dom/smil/parser/SmilContentHandler;->sSupportedTags:Ljava/util/ArrayList;

    const-string v1, "root-layout"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lcom/android/mms/dom/smil/parser/SmilContentHandler;->sSupportedTags:Ljava/util/ArrayList;

    const-string v1, "region"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lcom/android/mms/dom/smil/parser/SmilContentHandler;->sSupportedTags:Ljava/util/ArrayList;

    const-string v1, "par"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lcom/android/mms/dom/smil/parser/SmilContentHandler;->sSupportedTags:Ljava/util/ArrayList;

    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lcom/android/mms/dom/smil/parser/SmilContentHandler;->sSupportedTags:Ljava/util/ArrayList;

    const-string v1, "img"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lcom/android/mms/dom/smil/parser/SmilContentHandler;->sSupportedTags:Ljava/util/ArrayList;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lcom/android/mms/dom/smil/parser/SmilContentHandler;->sSupportedTags:Ljava/util/ArrayList;

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lcom/android/mms/dom/smil/parser/SmilContentHandler;->sSupportedTags:Ljava/util/ArrayList;

    const-string v1, "ref"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    return-void
.end method

.method public static isSupportedTag(Ljava/lang/String;)Z
    .locals 1
    .parameter "tagName"

    .prologue
    .line 141
    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/mms/dom/smil/parser/SmilContentHandler;->sSupportedTags:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public characters([CII)V
    .locals 0
    .parameter "ch"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 137
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"

    .prologue
    .line 118
    invoke-static {p2}, Lcom/android/mms/dom/smil/parser/SmilContentHandler;->isSupportedTag(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/android/mms/dom/smil/parser/SmilContentHandler;->mCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/dom/smil/parser/SmilContentHandler;->mCurrentNode:Lorg/w3c/dom/Node;

    goto :goto_0
.end method

.method public getSmilDocument()Lorg/w3c/dom/smil/SMILDocument;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/mms/dom/smil/parser/SmilContentHandler;->mSmilDocument:Lorg/w3c/dom/smil/SMILDocument;

    return-object v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/android/mms/dom/smil/SmilDocumentImpl;

    invoke-direct {v0}, Lcom/android/mms/dom/smil/SmilDocumentImpl;-><init>()V

    iput-object v0, p0, Lcom/android/mms/dom/smil/parser/SmilContentHandler;->mSmilDocument:Lorg/w3c/dom/smil/SMILDocument;

    .line 70
    iget-object v0, p0, Lcom/android/mms/dom/smil/parser/SmilContentHandler;->mSmilDocument:Lorg/w3c/dom/smil/SMILDocument;

    iput-object v0, p0, Lcom/android/mms/dom/smil/parser/SmilContentHandler;->mCurrentNode:Lorg/w3c/dom/Node;

    .line 71
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .parameter "attributes"

    .prologue
    .line 84
    invoke-static {p2}, Lcom/android/mms/dom/smil/parser/SmilContentHandler;->isSupportedTag(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 113
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v2, p0, Lcom/android/mms/dom/smil/parser/SmilContentHandler;->mSmilDocument:Lorg/w3c/dom/smil/SMILDocument;

    invoke-interface {v2, p2}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 96
    .local v0, element:Lorg/w3c/dom/Element;
    if-eqz p4, :cond_1

    .line 97
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 103
    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 110
    .end local v1           #i:I
    :cond_1
    iget-object v2, p0, Lcom/android/mms/dom/smil/parser/SmilContentHandler;->mCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {v2, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 112
    iput-object v0, p0, Lcom/android/mms/dom/smil/parser/SmilContentHandler;->mCurrentNode:Lorg/w3c/dom/Node;

    goto :goto_0
.end method
