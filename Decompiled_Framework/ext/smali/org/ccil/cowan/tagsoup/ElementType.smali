.class public Lorg/ccil/cowan/tagsoup/ElementType;
.super Ljava/lang/Object;
.source "ElementType.java"


# instance fields
.field private theAtts:Lorg/ccil/cowan/tagsoup/AttributesImpl;

.field private theFlags:I

.field private theLocalName:Ljava/lang/String;

.field private theMemberOf:I

.field private theModel:I

.field private theName:Ljava/lang/String;

.field private theNamespace:Ljava/lang/String;

.field private theParent:Lorg/ccil/cowan/tagsoup/ElementType;

.field private theSchema:Lorg/ccil/cowan/tagsoup/Schema;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIILorg/ccil/cowan/tagsoup/Schema;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ccil/cowan/tagsoup/ElementType;->theName:Ljava/lang/String;

    iput p2, p0, Lorg/ccil/cowan/tagsoup/ElementType;->theModel:I

    iput p3, p0, Lorg/ccil/cowan/tagsoup/ElementType;->theMemberOf:I

    iput p4, p0, Lorg/ccil/cowan/tagsoup/ElementType;->theFlags:I

    new-instance v0, Lorg/ccil/cowan/tagsoup/AttributesImpl;

    invoke-direct {v0}, Lorg/ccil/cowan/tagsoup/AttributesImpl;-><init>()V

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/ElementType;->theAtts:Lorg/ccil/cowan/tagsoup/AttributesImpl;

    iput-object p5, p0, Lorg/ccil/cowan/tagsoup/ElementType;->theSchema:Lorg/ccil/cowan/tagsoup/Schema;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/ccil/cowan/tagsoup/ElementType;->namespace(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/ElementType;->theNamespace:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/ccil/cowan/tagsoup/ElementType;->localName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/ElementType;->theLocalName:Ljava/lang/String;

    return-void
.end method

.method public static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v5, "  "

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_4

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_3

    if-nez v3, :cond_2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    const/4 v3, 0x1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public atts()Lorg/ccil/cowan/tagsoup/AttributesImpl;
    .locals 1

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/ElementType;->theAtts:Lorg/ccil/cowan/tagsoup/AttributesImpl;

    return-object v0
.end method

.method public canContain(Lorg/ccil/cowan/tagsoup/ElementType;)Z
    .locals 2

    iget v0, p0, Lorg/ccil/cowan/tagsoup/ElementType;->theModel:I

    iget v1, p1, Lorg/ccil/cowan/tagsoup/ElementType;->theMemberOf:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public flags()I
    .locals 1

    iget v0, p0, Lorg/ccil/cowan/tagsoup/ElementType;->theFlags:I

    return v0
.end method

.method public localName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/ElementType;->theLocalName:Ljava/lang/String;

    return-object v0
.end method

.method public localName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return-object p1

    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public memberOf()I
    .locals 1

    iget v0, p0, Lorg/ccil/cowan/tagsoup/ElementType;->theMemberOf:I

    return v0
.end method

.method public model()I
    .locals 1

    iget v0, p0, Lorg/ccil/cowan/tagsoup/ElementType;->theModel:I

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/ElementType;->theName:Ljava/lang/String;

    return-object v0
.end method

.method public namespace()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/ElementType;->theNamespace:Ljava/lang/String;

    return-object v0
.end method

.method public namespace(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    if-eqz p2, :cond_0

    const-string v2, ""

    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/ElementType;->theSchema:Lorg/ccil/cowan/tagsoup/Schema;

    invoke-virtual {v2}, Lorg/ccil/cowan/tagsoup/Schema;->getURI()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "xml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "http://www.w3.org/XML/1998/namespace"

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "urn:x-prefix:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public parent()Lorg/ccil/cowan/tagsoup/ElementType;
    .locals 1

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/ElementType;->theParent:Lorg/ccil/cowan/tagsoup/ElementType;

    return-object v0
.end method

.method public schema()Lorg/ccil/cowan/tagsoup/Schema;
    .locals 1

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/ElementType;->theSchema:Lorg/ccil/cowan/tagsoup/Schema;

    return-object v0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/ElementType;->theAtts:Lorg/ccil/cowan/tagsoup/AttributesImpl;

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/ccil/cowan/tagsoup/ElementType;->setAttribute(Lorg/ccil/cowan/tagsoup/AttributesImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAttribute(Lorg/ccil/cowan/tagsoup/AttributesImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const-string v0, "xmlns"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "xmlns:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Lorg/ccil/cowan/tagsoup/ElementType;->namespace(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2}, Lorg/ccil/cowan/tagsoup/ElementType;->localName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p2}, Lorg/ccil/cowan/tagsoup/AttributesImpl;->getIndex(Ljava/lang/String;)I

    move-result v4

    const/4 v0, -0x1

    if-ne v4, v0, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    if-nez p3, :cond_2

    const-string p3, "CDATA"

    :cond_2
    const-string v0, "CDATA"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p4}, Lorg/ccil/cowan/tagsoup/ElementType;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    :cond_3
    move-object v0, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/ccil/cowan/tagsoup/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    if-nez p3, :cond_5

    invoke-virtual {p1, v4}, Lorg/ccil/cowan/tagsoup/AttributesImpl;->getType(I)Ljava/lang/String;

    move-result-object p3

    :cond_5
    const-string v0, "CDATA"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p4}, Lorg/ccil/cowan/tagsoup/ElementType;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    :cond_6
    move-object v3, p1

    move-object v5, v1

    move-object v6, v2

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-virtual/range {v3 .. v9}, Lorg/ccil/cowan/tagsoup/AttributesImpl;->setAttribute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setFlags(I)V
    .locals 0

    iput p1, p0, Lorg/ccil/cowan/tagsoup/ElementType;->theFlags:I

    return-void
.end method

.method public setMemberOf(I)V
    .locals 0

    iput p1, p0, Lorg/ccil/cowan/tagsoup/ElementType;->theMemberOf:I

    return-void
.end method

.method public setModel(I)V
    .locals 0

    iput p1, p0, Lorg/ccil/cowan/tagsoup/ElementType;->theModel:I

    return-void
.end method

.method public setParent(Lorg/ccil/cowan/tagsoup/ElementType;)V
    .locals 0

    iput-object p1, p0, Lorg/ccil/cowan/tagsoup/ElementType;->theParent:Lorg/ccil/cowan/tagsoup/ElementType;

    return-void
.end method
