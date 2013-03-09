.class public abstract Lorg/apache/xml/serializer/SerializerBase;
.super Ljava/lang/Object;
.source "SerializerBase.java"

# interfaces
.implements Lorg/apache/xml/serializer/SerializationHandler;
.implements Lorg/apache/xml/serializer/SerializerConstants;


# static fields
.field public static final PKG_NAME:Ljava/lang/String;

.field public static final PKG_PATH:Ljava/lang/String;


# instance fields
.field protected m_CdataElems:Ljava/util/Hashtable;

.field private m_OutputProps:Ljava/util/HashMap;

.field private m_OutputPropsDefault:Ljava/util/HashMap;

.field protected m_StringOfCDATASections:Ljava/lang/String;

.field protected m_attrBuff:[C

.field protected m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

.field protected m_cdataTagOpen:Z

.field protected m_charsBuff:[C

.field protected m_doIndent:Z

.field m_docIsEmpty:Z

.field protected m_doctypePublic:Ljava/lang/String;

.field protected m_doctypeSystem:Ljava/lang/String;

.field protected m_elemContext:Lorg/apache/xml/serializer/ElemContext;

.field protected m_inEntityRef:Z

.field protected m_inExternalDTD:Z

.field protected m_indentAmount:I

.field protected m_mediatype:Ljava/lang/String;

.field protected m_needToCallStartDocument:Z

.field m_needToOutputDocTypeDecl:Z

.field protected m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

.field protected m_shouldNotWriteXMLHeader:Z

.field protected m_sourceLocator:Ljavax/xml/transform/SourceLocator;

.field private m_standalone:Ljava/lang/String;

.field protected m_standaloneWasSpecified:Z

.field protected m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

.field private m_transformer:Ljavax/xml/transform/Transformer;

.field protected m_version:Ljava/lang/String;

.field protected m_writer:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v6, 0x2e

    const-class v5, Lorg/apache/xml/serializer/SerializerBase;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-gez v3, :cond_0

    const-string v5, ""

    sput-object v5, Lorg/apache/xml/serializer/SerializerBase;->PKG_NAME:Ljava/lang/String;

    :goto_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    :goto_1
    sget-object v5, Lorg/apache/xml/serializer/SerializerBase;->PKG_NAME:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_2

    sget-object v5, Lorg/apache/xml/serializer/SerializerBase;->PKG_NAME:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_1

    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lorg/apache/xml/serializer/SerializerBase;->PKG_NAME:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lorg/apache/xml/serializer/SerializerBase;->PKG_PATH:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToCallStartDocument:Z

    iput-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_cdataTagOpen:Z

    new-instance v0, Lorg/apache/xml/serializer/AttributesImplSerializer;

    invoke-direct {v0}, Lorg/apache/xml/serializer/AttributesImplSerializer;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    iput-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_inEntityRef:Z

    iput-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_inExternalDTD:Z

    iput-boolean v3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToOutputDocTypeDecl:Z

    iput-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_shouldNotWriteXMLHeader:Z

    iput-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_standaloneWasSpecified:Z

    iput-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_doIndent:Z

    iput v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_indentAmount:I

    iput-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_version:Ljava/lang/String;

    iput-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    new-instance v0, Lorg/apache/xml/serializer/ElemContext;

    invoke-direct {v0}, Lorg/apache/xml/serializer/ElemContext;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    const/16 v0, 0x3c

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    const/16 v0, 0x1e

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attrBuff:[C

    iput-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_StringOfCDATASections:Ljava/lang/String;

    iput-boolean v3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_docIsEmpty:Z

    iput-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_CdataElems:Ljava/util/Hashtable;

    return-void
.end method

.method private addCDATAElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_CdataElems:Ljava/util/Hashtable;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_CdataElems:Ljava/util/Hashtable;

    :cond_0
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_CdataElems:Ljava/util/Hashtable;

    invoke-virtual {v1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_CdataElems:Ljava/util/Hashtable;

    invoke-virtual {v1, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0, p1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private flushMyWriter()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getElementURI()Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v2, v2, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    invoke-static {v2}, Lorg/apache/xml/serializer/SerializerBase;->getPrefixPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lorg/apache/xml/serializer/NamespaceMappings;->lookupNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-virtual {v2, v0}, Lorg/apache/xml/serializer/NamespaceMappings;->lookupNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method static getFirstCharLocName(Ljava/lang/String;)C
    .locals 3

    const/16 v2, 0x7d

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method protected static getLocalName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method protected static final getPrefixPart(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getProp(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_OutputProps:Ljava/util/HashMap;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_OutputProps:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_OutputPropsDefault:Ljava/util/HashMap;

    :cond_0
    if-eqz p2, :cond_1

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_OutputPropsDefault:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_OutputProps:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private resetSerializerBase()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    invoke-virtual {v0}, Lorg/apache/xml/serializer/AttributesImplSerializer;->clear()V

    iput-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_CdataElems:Ljava/util/Hashtable;

    iput-boolean v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_cdataTagOpen:Z

    iput-boolean v3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_docIsEmpty:Z

    iput-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_doctypePublic:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_doctypeSystem:Ljava/lang/String;

    iput-boolean v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_doIndent:Z

    new-instance v0, Lorg/apache/xml/serializer/ElemContext;

    invoke-direct {v0}, Lorg/apache/xml/serializer/ElemContext;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iput v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_indentAmount:I

    iput-boolean v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_inEntityRef:Z

    iput-boolean v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_inExternalDTD:Z

    iput-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_mediatype:Ljava/lang/String;

    iput-boolean v3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToCallStartDocument:Z

    iput-boolean v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToOutputDocTypeDecl:Z

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_OutputProps:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_OutputProps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_OutputPropsDefault:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_OutputPropsDefault:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_1
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-virtual {v0}, Lorg/apache/xml/serializer/NamespaceMappings;->reset()V

    :cond_2
    iput-boolean v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_shouldNotWriteXMLHeader:Z

    iput-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_sourceLocator:Ljavax/xml/transform/SourceLocator;

    iput-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_standalone:Ljava/lang/String;

    iput-boolean v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_standaloneWasSpecified:Z

    iput-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_StringOfCDATASections:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    iput-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_transformer:Ljavax/xml/transform/Transformer;

    iput-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_version:Ljava/lang/String;

    return-void
.end method

.method private static final subPartMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/SerializerBase;->patchName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/xml/serializer/SerializerBase;->getLocalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v3, v6}, Lorg/apache/xml/serializer/SerializerBase;->getNamespaceURI(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const-string v4, "CDATA"

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xml/serializer/SerializerBase;->addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    :cond_0
    return-void
.end method

.method public addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v0, :cond_0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xml/serializer/SerializerBase;->addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    :cond_0
    return-void
.end method

.method public addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p6}, Lorg/apache/xml/serializer/SerializerBase;->addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    :cond_0
    return-void
.end method

.method public addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 8

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    invoke-virtual {v0, p3}, Lorg/apache/xml/serializer/AttributesImplSerializer;->getIndex(Ljava/lang/String;)I

    move-result v6

    :goto_0
    if-ltz v6, :cond_2

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    invoke-virtual {v0, v6, p5}, Lorg/apache/xml/serializer/AttributesImplSerializer;->setValue(ILjava/lang/String;)V

    const/4 v7, 0x0

    :goto_1
    return v7

    :cond_1
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    invoke-virtual {v0, p1, p2}, Lorg/apache/xml/serializer/AttributesImplSerializer;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xml/serializer/AttributesImplSerializer;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x1

    goto :goto_1
.end method

.method public addAttributes(Lorg/xml/sax/Attributes;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v8

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v8, :cond_1

    invoke-interface {p1, v7}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    invoke-interface {p1, v7}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v7}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v7}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v7}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xml/serializer/SerializerBase;->addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addXSLAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/SerializerBase;->patchName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/xml/serializer/SerializerBase;->getLocalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "CDATA"

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p3

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xml/serializer/SerializerBase;->addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    :cond_0
    return-void
.end method

.method public asContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-object p0
.end method

.method public asDOM3Serializer()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/xml/serializer/dom3/DOM3SerializerImpl;

    invoke-direct {v0, p0}, Lorg/apache/xml/serializer/dom3/DOM3SerializerImpl;-><init>(Lorg/apache/xml/serializer/SerializationHandler;)V

    return-object v0
.end method

.method public asDOMSerializer()Lorg/apache/xml/serializer/DOMSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-object p0
.end method

.method public characters(Lorg/w3c/dom/Node;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/apache/xml/serializer/SerializerBase;->flushPending()V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    array-length v2, v2

    if-le v1, v2, :cond_0

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [C

    iput-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    :cond_0
    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    invoke-virtual {v0, v3, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    invoke-virtual {p0, v2, v3, v1}, Lorg/apache/xml/serializer/SerializerBase;->characters([CII)V

    :cond_1
    return-void
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public comment(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_docIsEmpty:Z

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [C

    iput-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    :cond_0
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/xml/serializer/SerializerBase;->comment([CII)V

    return-void
.end method

.method public documentIsEmpty()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_docIsEmpty:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_currentElemDepth:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public endEntity(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v1, 0x0

    const-string v0, "[dtd]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_inExternalDTD:Z

    :cond_0
    iput-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_inEntityRef:Z

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/SerializerBase;->fireEndEntity(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public entityReference(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xml/serializer/SerializerBase;->flushPending()V

    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/SerializerBase;->startEntity(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/SerializerBase;->endEntity(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/SerializerBase;->fireEntityReference(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    return-void
.end method

.method protected fireCDATAEvent([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerBase;->flushMyWriter()V

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    const/16 v1, 0xa

    invoke-interface {v0, v1, p1, p2, p3}, Lorg/apache/xml/serializer/SerializerTrace;->fireGenerateEvent(I[CII)V

    :cond_0
    return-void
.end method

.method protected fireCharEvent([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerBase;->flushMyWriter()V

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    const/4 v1, 0x5

    invoke-interface {v0, v1, p1, p2, p3}, Lorg/apache/xml/serializer/SerializerTrace;->fireGenerateEvent(I[CII)V

    :cond_0
    return-void
.end method

.method protected fireCommentEvent([CII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerBase;->flushMyWriter()V

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    const/16 v1, 0x8

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v0, v1, v2}, Lorg/apache/xml/serializer/SerializerTrace;->fireGenerateEvent(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected fireEndDoc()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerBase;->flushMyWriter()V

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lorg/apache/xml/serializer/SerializerTrace;->fireGenerateEvent(I)V

    :cond_0
    return-void
.end method

.method protected fireEndElem(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerBase;->flushMyWriter()V

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    const/4 v2, 0x4

    const/4 v0, 0x0

    check-cast v0, Lorg/xml/sax/Attributes;

    invoke-interface {v1, v2, p1, v0}, Lorg/apache/xml/serializer/SerializerTrace;->fireGenerateEvent(ILjava/lang/String;Lorg/xml/sax/Attributes;)V

    :cond_0
    return-void
.end method

.method public fireEndEntity(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerBase;->flushMyWriter()V

    :cond_0
    return-void
.end method

.method protected fireEntityReference(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerBase;->flushMyWriter()V

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    const/16 v2, 0x9

    const/4 v0, 0x0

    check-cast v0, Lorg/xml/sax/Attributes;

    invoke-interface {v1, v2, p1, v0}, Lorg/apache/xml/serializer/SerializerTrace;->fireGenerateEvent(ILjava/lang/String;Lorg/xml/sax/Attributes;)V

    :cond_0
    return-void
.end method

.method protected fireEscapingEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerBase;->flushMyWriter()V

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    const/4 v1, 0x7

    invoke-interface {v0, v1, p1, p2}, Lorg/apache/xml/serializer/SerializerTrace;->fireGenerateEvent(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected fireStartDoc()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerBase;->flushMyWriter()V

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/apache/xml/serializer/SerializerTrace;->fireGenerateEvent(I)V

    :cond_0
    return-void
.end method

.method protected fireStartElem(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerBase;->flushMyWriter()V

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    const/4 v1, 0x3

    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    invoke-interface {v0, v1, p1, v2}, Lorg/apache/xml/serializer/SerializerTrace;->fireGenerateEvent(ILjava/lang/String;Lorg/xml/sax/Attributes;)V

    :cond_0
    return-void
.end method

.method protected fireStartEntity(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerBase;->flushMyWriter()V

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    const/16 v1, 0x9

    invoke-interface {v0, v1, p1}, Lorg/apache/xml/serializer/SerializerTrace;->fireGenerateEvent(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getDoctypePublic()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_doctypePublic:Ljava/lang/String;

    return-object v0
.end method

.method public getDoctypeSystem()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_doctypeSystem:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    const-string v0, "encoding"

    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/SerializerBase;->getOutputProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIndent()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_doIndent:Z

    return v0
.end method

.method public getIndentAmount()I
    .locals 1

    iget v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_indentAmount:I

    return v0
.end method

.method public getMediaType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_mediatype:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespaceMappings()Lorg/apache/xml/serializer/NamespaceMappings;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    return-object v0
.end method

.method public getNamespaceURI(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x0

    const-string v2, ""

    const/16 v3, 0x3a

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p2, :cond_2

    :cond_0
    iget-object v3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-virtual {v3, v1}, Lorg/apache/xml/serializer/NamespaceMappings;->lookupNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v3, "xmlns"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/RuntimeException;

    sget-object v4, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v5, "ER_NAMESPACE_PREFIX"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p1, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    const-string v1, ""

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public getNamespaceURIFromPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-virtual {v1, p1}, Lorg/apache/xml/serializer/NamespaceMappings;->lookupNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getOmitXMLDeclaration()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_shouldNotWriteXMLHeader:Z

    return v0
.end method

.method getOutputPropDefaultKeys()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_OutputPropsDefault:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method getOutputPropKeys()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_OutputProps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getOutputProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/SerializerBase;->getOutputPropertyNonDefault(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/SerializerBase;->getOutputPropertyDefault(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getOutputPropertyDefault(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/xml/serializer/SerializerBase;->getProp(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOutputPropertyNonDefault(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/xml/serializer/SerializerBase;->getProp(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-virtual {v1, p1}, Lorg/apache/xml/serializer/NamespaceMappings;->lookupPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStandalone()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_standalone:Ljava/lang/String;

    return-object v0
.end method

.method public getTransformer()Ljavax/xml/transform/Transformer;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_transformer:Ljavax/xml/transform/Transformer;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_version:Ljava/lang/String;

    return-object v0
.end method

.method final inTemporaryOutputState()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xml/serializer/SerializerBase;->getEncoding()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected initCDATA()V
    .locals 0

    return-void
.end method

.method initCdataElems(Ljava/lang/String;)V
    .locals 10

    const/4 v9, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v4, 0x0

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v6, :cond_6

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-eqz v8, :cond_3

    if-nez v4, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-lez v8, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    if-nez v2, :cond_0

    const-string v7, ""

    :cond_0
    invoke-direct {p0, v7, v5}, Lorg/apache/xml/serializer/SerializerBase;->addCDATAElement(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    const/4 v2, 0x0

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    const/16 v8, 0x7b

    if-ne v8, v1, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    const/16 v8, 0x7d

    if-ne v8, v1, :cond_5

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    const/4 v4, 0x0

    goto :goto_1

    :cond_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-lez v8, :cond_8

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    if-nez v2, :cond_7

    const-string v7, ""

    :cond_7
    invoke-direct {p0, v7, v5}, Lorg/apache/xml/serializer/SerializerBase;->addCDATAElement(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method protected isCdataSection()Z
    .locals 6

    const/4 v0, 0x0

    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerBase;->m_StringOfCDATASections:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v4, v4, Lorg/apache/xml/serializer/ElemContext;->m_elementLocalName:Ljava/lang/String;

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v4, v4, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    invoke-static {v4}, Lorg/apache/xml/serializer/SerializerBase;->getLocalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iput-object v2, v4, Lorg/apache/xml/serializer/ElemContext;->m_elementLocalName:Ljava/lang/String;

    :cond_0
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v4, v4, Lorg/apache/xml/serializer/ElemContext;->m_elementURI:Ljava/lang/String;

    if-nez v4, :cond_3

    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerBase;->getElementURI()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lorg/apache/xml/serializer/ElemContext;->m_elementURI:Ljava/lang/String;

    :cond_1
    :goto_0
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerBase;->m_CdataElems:Ljava/util/Hashtable;

    iget-object v5, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v5, v5, Lorg/apache/xml/serializer/ElemContext;->m_elementLocalName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;

    if-eqz v1, :cond_2

    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v4, v4, Lorg/apache/xml/serializer/ElemContext;->m_elementURI:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    :cond_3
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v4, v4, Lorg/apache/xml/serializer/ElemContext;->m_elementURI:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v4, v4, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    if-nez v4, :cond_4

    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v5, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v5, v5, Lorg/apache/xml/serializer/ElemContext;->m_elementLocalName:Ljava/lang/String;

    iput-object v5, v4, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v4, v4, Lorg/apache/xml/serializer/ElemContext;->m_elementLocalName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v5, v5, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerBase;->getElementURI()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lorg/apache/xml/serializer/ElemContext;->m_elementURI:Ljava/lang/String;

    goto :goto_0
.end method

.method public namespaceAfterStartElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method protected patchName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/16 v6, 0x3a

    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-virtual {v5, v3}, Lorg/apache/xml/serializer/NamespaceMappings;->lookupNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    :goto_0
    return-object v2

    :cond_0
    if-eq v0, v1, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, p1

    goto :goto_0
.end method

.method public reset()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerBase;->resetSerializerBase()V

    const/4 v0, 0x1

    return v0
.end method

.method public setDTDEntityExpansion(Z)V
    .locals 0

    return-void
.end method

.method public setDoctype(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "doctype-system"

    invoke-virtual {p0, v0, p1}, Lorg/apache/xml/serializer/SerializerBase;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "doctype-public"

    invoke-virtual {p0, v0, p2}, Lorg/apache/xml/serializer/SerializerBase;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDoctypePublic(Ljava/lang/String;)V
    .locals 1

    const-string v0, "doctype-public"

    invoke-virtual {p0, v0, p1}, Lorg/apache/xml/serializer/SerializerBase;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDoctypeSystem(Ljava/lang/String;)V
    .locals 1

    const-string v0, "doctype-system"

    invoke-virtual {p0, v0, p1}, Lorg/apache/xml/serializer/SerializerBase;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 1

    const-string v0, "encoding"

    invoke-virtual {p0, v0, p1}, Lorg/apache/xml/serializer/SerializerBase;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setIndent(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "yes"

    :goto_0
    const-string v1, "indent"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xml/serializer/SerializerBase;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "no"

    goto :goto_0
.end method

.method public setIndentAmount(I)V
    .locals 0

    iput p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_indentAmount:I

    return-void
.end method

.method public setMediaType(Ljava/lang/String;)V
    .locals 1

    const-string v0, "media-type"

    invoke-virtual {p0, v0, p1}, Lorg/apache/xml/serializer/SerializerBase;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setNamespaceMappings(Lorg/apache/xml/serializer/NamespaceMappings;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    return-void
.end method

.method public setOmitXMLDeclaration(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "yes"

    :goto_0
    const-string v1, "omit-xml-declaration"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xml/serializer/SerializerBase;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "no"

    goto :goto_0
.end method

.method public setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xml/serializer/SerializerBase;->setProp(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setOutputPropertyDefault(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xml/serializer/SerializerBase;->setProp(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method setProp(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_OutputProps:Ljava/util/HashMap;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_OutputProps:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_OutputPropsDefault:Ljava/util/HashMap;

    :cond_0
    if-eqz p3, :cond_1

    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_OutputPropsDefault:Ljava/util/HashMap;

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_1
    const-string v2, "cdata-section-elements"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p0, p2}, Lorg/apache/xml/serializer/SerializerBase;->initCdataElems(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_OutputProps:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_OutputProps:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    move-object v0, p2

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_OutputProps:Ljava/util/HashMap;

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setSourceLocator(Ljavax/xml/transform/SourceLocator;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_sourceLocator:Ljavax/xml/transform/SourceLocator;

    return-void
.end method

.method public setStandalone(Ljava/lang/String;)V
    .locals 1

    const-string v0, "standalone"

    invoke-virtual {p0, v0, p1}, Lorg/apache/xml/serializer/SerializerBase;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected setStandaloneInternal(Ljava/lang/String;)V
    .locals 1

    const-string v0, "yes"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "yes"

    iput-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_standalone:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v0, "no"

    iput-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_standalone:Ljava/lang/String;

    goto :goto_0
.end method

.method public setTransformer(Ljavax/xml/transform/Transformer;)V
    .locals 1

    iput-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_transformer:Ljavax/xml/transform/Transformer;

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_transformer:Ljavax/xml/transform/Transformer;

    instance-of v0, v0, Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_transformer:Ljavax/xml/transform/Transformer;

    check-cast v0, Lorg/apache/xml/serializer/SerializerTrace;

    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializerTrace;->hasTraceListeners()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_transformer:Ljavax/xml/transform/Transformer;

    check-cast v0, Lorg/apache/xml/serializer/SerializerTrace;

    iput-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    goto :goto_0
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 1

    const-string v0, "version"

    invoke-virtual {p0, v0, p1}, Lorg/apache/xml/serializer/SerializerBase;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xml/serializer/SerializerBase;->startDocumentInternal()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToCallStartDocument:Z

    return-void
.end method

.method protected startDocumentInternal()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xml/serializer/SerializerBase;->fireStartDoc()V

    :cond_0
    return-void
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method
