.class public Lcom/android/mms/dom/smil/SmilRegionMediaElementImpl;
.super Lcom/android/mms/dom/smil/SmilMediaElementImpl;
.source "SmilRegionMediaElementImpl.java"

# interfaces
.implements Lorg/w3c/dom/smil/SMILRegionMediaElement;


# instance fields
.field private mRegion:Lorg/w3c/dom/smil/SMILRegionElement;


# direct methods
.method constructor <init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V
    .locals 0
    .parameter "owner"
    .parameter "tagName"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;-><init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V

    .line 31
    return-void
.end method


# virtual methods
.method public getRegion()Lorg/w3c/dom/smil/SMILRegionElement;
    .locals 6

    .prologue
    .line 34
    iget-object v4, p0, Lcom/android/mms/dom/smil/SmilRegionMediaElementImpl;->mRegion:Lorg/w3c/dom/smil/SMILRegionElement;

    if-nez v4, :cond_1

    .line 35
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilRegionMediaElementImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/SMILDocument;

    .line 36
    .local v0, doc:Lorg/w3c/dom/smil/SMILDocument;
    invoke-interface {v0}, Lorg/w3c/dom/smil/SMILDocument;->getLayout()Lorg/w3c/dom/smil/SMILLayoutElement;

    move-result-object v4

    const-string v5, "region"

    invoke-interface {v4, v5}, Lorg/w3c/dom/smil/SMILLayoutElement;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 37
    .local v3, regions:Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    .line 38
    .local v2, region:Lorg/w3c/dom/smil/SMILRegionElement;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 39
    invoke-interface {v3, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .end local v2           #region:Lorg/w3c/dom/smil/SMILRegionElement;
    check-cast v2, Lorg/w3c/dom/smil/SMILRegionElement;

    .line 40
    .restart local v2       #region:Lorg/w3c/dom/smil/SMILRegionElement;
    invoke-interface {v2}, Lorg/w3c/dom/smil/SMILRegionElement;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "region"

    invoke-virtual {p0, v5}, Lcom/android/mms/dom/smil/SmilRegionMediaElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 41
    iput-object v2, p0, Lcom/android/mms/dom/smil/SmilRegionMediaElementImpl;->mRegion:Lorg/w3c/dom/smil/SMILRegionElement;

    .line 38
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 45
    .end local v0           #doc:Lorg/w3c/dom/smil/SMILDocument;
    .end local v1           #i:I
    .end local v2           #region:Lorg/w3c/dom/smil/SMILRegionElement;
    .end local v3           #regions:Lorg/w3c/dom/NodeList;
    :cond_1
    iget-object v4, p0, Lcom/android/mms/dom/smil/SmilRegionMediaElementImpl;->mRegion:Lorg/w3c/dom/smil/SMILRegionElement;

    return-object v4
.end method

.method public setRegion(Lorg/w3c/dom/smil/SMILRegionElement;)V
    .locals 2
    .parameter "region"

    .prologue
    .line 49
    const-string v0, "region"

    invoke-interface {p1}, Lorg/w3c/dom/smil/SMILRegionElement;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/dom/smil/SmilRegionMediaElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iput-object p1, p0, Lcom/android/mms/dom/smil/SmilRegionMediaElementImpl;->mRegion:Lorg/w3c/dom/smil/SMILRegionElement;

    .line 51
    return-void
.end method
