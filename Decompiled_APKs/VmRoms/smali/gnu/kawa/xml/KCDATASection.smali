.class public Lgnu/kawa/xml/KCDATASection;
.super Lgnu/kawa/xml/KText;
.source "KCDATASection.java"

# interfaces
.implements Lorg/w3c/dom/CDATASection;


# direct methods
.method public constructor <init>(Lgnu/xml/NodeTree;I)V
    .locals 0
    .parameter "seq"
    .parameter "ipos"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lgnu/kawa/xml/KText;-><init>(Lgnu/xml/NodeTree;I)V

    .line 18
    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lgnu/kawa/xml/KCDATASection;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLength()I
    .locals 3

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 38
    .local v0, sbuf:Ljava/lang/StringBuffer;
    iget-object v1, p0, Lgnu/kawa/xml/KCDATASection;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v1, Lgnu/xml/NodeTree;

    .line 39
    .local v1, tlist:Lgnu/xml/NodeTree;
    iget v2, p0, Lgnu/kawa/xml/KCDATASection;->ipos:I

    invoke-virtual {v1, v2}, Lgnu/xml/NodeTree;->posToDataIndex(I)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lgnu/xml/NodeTree;->stringValue(ILjava/lang/StringBuffer;)I

    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    return v2
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string v0, "#cdata-section"

    return-object v0
.end method

.method public getNodeType()S
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x4

    return v0
.end method
