.class public final Lorg/apache/xpath/objects/DTMXRTreeFrag;
.super Ljava/lang/Object;
.source "DTMXRTreeFrag.java"


# instance fields
.field private m_dtm:Lorg/apache/xml/dtm/DTM;

.field private m_dtmIdentity:I

.field private m_xctxt:Lorg/apache/xpath/XPathContext;


# direct methods
.method public constructor <init>(ILorg/apache/xpath/XPathContext;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xpath/objects/DTMXRTreeFrag;->m_dtmIdentity:I

    iput-object p2, p0, Lorg/apache/xpath/objects/DTMXRTreeFrag;->m_xctxt:Lorg/apache/xpath/XPathContext;

    iput p1, p0, Lorg/apache/xpath/objects/DTMXRTreeFrag;->m_dtmIdentity:I

    invoke-virtual {p2, p1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xpath/objects/DTMXRTreeFrag;->m_dtm:Lorg/apache/xml/dtm/DTM;

    return-void
.end method


# virtual methods
.method public final destruct()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xpath/objects/DTMXRTreeFrag;->m_dtm:Lorg/apache/xml/dtm/DTM;

    iput-object v0, p0, Lorg/apache/xpath/objects/DTMXRTreeFrag;->m_xctxt:Lorg/apache/xpath/XPathContext;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lorg/apache/xpath/objects/DTMXRTreeFrag;

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/apache/xpath/objects/DTMXRTreeFrag;->m_dtmIdentity:I

    check-cast p1, Lorg/apache/xpath/objects/DTMXRTreeFrag;

    invoke-virtual {p1}, Lorg/apache/xpath/objects/DTMXRTreeFrag;->getDTMIdentity()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method final getDTM()Lorg/apache/xml/dtm/DTM;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/objects/DTMXRTreeFrag;->m_dtm:Lorg/apache/xml/dtm/DTM;

    return-object v0
.end method

.method public final getDTMIdentity()I
    .locals 1

    iget v0, p0, Lorg/apache/xpath/objects/DTMXRTreeFrag;->m_dtmIdentity:I

    return v0
.end method

.method final getXPathContext()Lorg/apache/xpath/XPathContext;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/objects/DTMXRTreeFrag;->m_xctxt:Lorg/apache/xpath/XPathContext;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lorg/apache/xpath/objects/DTMXRTreeFrag;->m_dtmIdentity:I

    return v0
.end method
