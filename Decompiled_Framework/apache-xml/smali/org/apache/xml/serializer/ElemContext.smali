.class final Lorg/apache/xml/serializer/ElemContext;
.super Ljava/lang/Object;
.source "ElemContext.java"


# instance fields
.field final m_currentElemDepth:I

.field m_elementDesc:Lorg/apache/xml/serializer/ElemDesc;

.field m_elementLocalName:Ljava/lang/String;

.field m_elementName:Ljava/lang/String;

.field m_elementURI:Ljava/lang/String;

.field m_isCdataSection:Z

.field m_isRaw:Z

.field private m_next:Lorg/apache/xml/serializer/ElemContext;

.field final m_prev:Lorg/apache/xml/serializer/ElemContext;

.field m_startTagOpen:Z


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/ElemContext;->m_elementDesc:Lorg/apache/xml/serializer/ElemDesc;

    iput-object v0, p0, Lorg/apache/xml/serializer/ElemContext;->m_elementLocalName:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xml/serializer/ElemContext;->m_elementURI:Ljava/lang/String;

    iput-boolean v1, p0, Lorg/apache/xml/serializer/ElemContext;->m_isRaw:Z

    iput-boolean v1, p0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    iput-object p0, p0, Lorg/apache/xml/serializer/ElemContext;->m_prev:Lorg/apache/xml/serializer/ElemContext;

    iput v1, p0, Lorg/apache/xml/serializer/ElemContext;->m_currentElemDepth:I

    return-void
.end method

.method private constructor <init>(Lorg/apache/xml/serializer/ElemContext;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/ElemContext;->m_elementDesc:Lorg/apache/xml/serializer/ElemDesc;

    iput-object v0, p0, Lorg/apache/xml/serializer/ElemContext;->m_elementLocalName:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xml/serializer/ElemContext;->m_elementURI:Ljava/lang/String;

    iput-boolean v1, p0, Lorg/apache/xml/serializer/ElemContext;->m_isRaw:Z

    iput-boolean v1, p0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    iput-object p1, p0, Lorg/apache/xml/serializer/ElemContext;->m_prev:Lorg/apache/xml/serializer/ElemContext;

    iget v0, p1, Lorg/apache/xml/serializer/ElemContext;->m_currentElemDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/xml/serializer/ElemContext;->m_currentElemDepth:I

    return-void
.end method


# virtual methods
.method final pop()Lorg/apache/xml/serializer/ElemContext;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/ElemContext;->m_prev:Lorg/apache/xml/serializer/ElemContext;

    return-object v0
.end method

.method final push()Lorg/apache/xml/serializer/ElemContext;
    .locals 2

    iget-object v0, p0, Lorg/apache/xml/serializer/ElemContext;->m_next:Lorg/apache/xml/serializer/ElemContext;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/xml/serializer/ElemContext;

    invoke-direct {v0, p0}, Lorg/apache/xml/serializer/ElemContext;-><init>(Lorg/apache/xml/serializer/ElemContext;)V

    iput-object v0, p0, Lorg/apache/xml/serializer/ElemContext;->m_next:Lorg/apache/xml/serializer/ElemContext;

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    return-object v0
.end method

.method final push(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xml/serializer/ElemContext;
    .locals 2

    iget-object v0, p0, Lorg/apache/xml/serializer/ElemContext;->m_next:Lorg/apache/xml/serializer/ElemContext;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/xml/serializer/ElemContext;

    invoke-direct {v0, p0}, Lorg/apache/xml/serializer/ElemContext;-><init>(Lorg/apache/xml/serializer/ElemContext;)V

    iput-object v0, p0, Lorg/apache/xml/serializer/ElemContext;->m_next:Lorg/apache/xml/serializer/ElemContext;

    :cond_0
    iput-object p3, v0, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    iput-object p2, v0, Lorg/apache/xml/serializer/ElemContext;->m_elementLocalName:Ljava/lang/String;

    iput-object p1, v0, Lorg/apache/xml/serializer/ElemContext;->m_elementURI:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/apache/xml/serializer/ElemContext;->m_isCdataSection:Z

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    return-object v0
.end method
