.class public final Lorg/apache/xml/serializer/AttributesImplSerializer;
.super Lorg/xml/sax/helpers/AttributesImpl;
.source "AttributesImplSerializer.java"


# static fields
.field private static final MAX:I = 0xc

.field private static final MAXMinus1:I = 0xb


# instance fields
.field private final m_buff:Ljava/lang/StringBuffer;

.field private final m_indexFromQName:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/AttributesImplSerializer;->m_indexFromQName:Ljava/util/Hashtable;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/AttributesImplSerializer;->m_buff:Ljava/lang/StringBuffer;

    return-void
.end method

.method private switchOverToHash(I)V
    .locals 8

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    invoke-super {p0, v1}, Lorg/xml/sax/helpers/AttributesImpl;->getQName(I)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iget-object v6, p0, Lorg/apache/xml/serializer/AttributesImplSerializer;->m_indexFromQName:Ljava/util/Hashtable;

    invoke-virtual {v6, v4, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0, v1}, Lorg/xml/sax/helpers/AttributesImpl;->getURI(I)Ljava/lang/String;

    move-result-object v5

    invoke-super {p0, v1}, Lorg/xml/sax/helpers/AttributesImpl;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lorg/apache/xml/serializer/AttributesImplSerializer;->m_buff:Ljava/lang/StringBuffer;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v6, p0, Lorg/apache/xml/serializer/AttributesImplSerializer;->m_buff:Ljava/lang/StringBuffer;

    const/16 v7, 0x7b

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const/16 v7, 0x7d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v6, p0, Lorg/apache/xml/serializer/AttributesImplSerializer;->m_buff:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lorg/apache/xml/serializer/AttributesImplSerializer;->m_indexFromQName:Ljava/util/Hashtable;

    invoke-virtual {v6, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/16 v3, 0xb

    invoke-super {p0}, Lorg/xml/sax/helpers/AttributesImpl;->getLength()I

    move-result v1

    invoke-super/range {p0 .. p5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-ge v1, v3, :cond_0

    :goto_0
    return-void

    :cond_0
    if-ne v1, v3, :cond_1

    const/16 v3, 0xc

    invoke-direct {p0, v3}, Lorg/apache/xml/serializer/AttributesImplSerializer;->switchOverToHash(I)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iget-object v3, p0, Lorg/apache/xml/serializer/AttributesImplSerializer;->m_indexFromQName:Ljava/util/Hashtable;

    invoke-virtual {v3, p3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/xml/serializer/AttributesImplSerializer;->m_buff:Ljava/lang/StringBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v3, p0, Lorg/apache/xml/serializer/AttributesImplSerializer;->m_buff:Ljava/lang/StringBuffer;

    const/16 v4, 0x7b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0x7d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/apache/xml/serializer/AttributesImplSerializer;->m_buff:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/xml/serializer/AttributesImplSerializer;->m_indexFromQName:Ljava/util/Hashtable;

    invoke-virtual {v3, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final clear()V
    .locals 2

    invoke-super {p0}, Lorg/xml/sax/helpers/AttributesImpl;->getLength()I

    move-result v0

    invoke-super {p0}, Lorg/xml/sax/helpers/AttributesImpl;->clear()V

    const/16 v1, 0xc

    if-gt v1, v0, :cond_0

    iget-object v1, p0, Lorg/apache/xml/serializer/AttributesImplSerializer;->m_indexFromQName:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    :cond_0
    return-void
.end method

.method public final getIndex(Ljava/lang/String;)I
    .locals 5

    invoke-super {p0}, Lorg/xml/sax/helpers/AttributesImpl;->getLength()I

    move-result v3

    const/16 v4, 0xc

    if-ge v3, v4, :cond_0

    invoke-super {p0, p1}, Lorg/xml/sax/helpers/AttributesImpl;->getIndex(Ljava/lang/String;)I

    move-result v1

    move v2, v1

    :goto_0
    return v2

    :cond_0
    iget-object v3, p0, Lorg/apache/xml/serializer/AttributesImplSerializer;->m_indexFromQName:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    const/4 v1, -0x1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1
.end method

.method public final getIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    invoke-super {p0}, Lorg/xml/sax/helpers/AttributesImpl;->getLength()I

    move-result v4

    const/16 v5, 0xc

    if-ge v4, v5, :cond_0

    invoke-super {p0, p1, p2}, Lorg/xml/sax/helpers/AttributesImpl;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    move v2, v1

    :goto_0
    return v2

    :cond_0
    iget-object v4, p0, Lorg/apache/xml/serializer/AttributesImplSerializer;->m_buff:Ljava/lang/StringBuffer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v4, p0, Lorg/apache/xml/serializer/AttributesImplSerializer;->m_buff:Ljava/lang/StringBuffer;

    const/16 v5, 0x7b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const/16 v5, 0x7d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/apache/xml/serializer/AttributesImplSerializer;->m_buff:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/xml/serializer/AttributesImplSerializer;->m_indexFromQName:Ljava/util/Hashtable;

    invoke-virtual {v4, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    const/4 v1, -0x1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1
.end method

.method public final setAttributes(Lorg/xml/sax/Attributes;)V
    .locals 2

    invoke-super {p0, p1}, Lorg/xml/sax/helpers/AttributesImpl;->setAttributes(Lorg/xml/sax/Attributes;)V

    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    const/16 v1, 0xc

    if-gt v1, v0, :cond_0

    invoke-direct {p0, v0}, Lorg/apache/xml/serializer/AttributesImplSerializer;->switchOverToHash(I)V

    :cond_0
    return-void
.end method
