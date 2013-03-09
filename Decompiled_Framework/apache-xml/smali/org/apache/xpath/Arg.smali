.class public Lorg/apache/xpath/Arg;
.super Ljava/lang/Object;
.source "Arg.java"


# instance fields
.field private m_expression:Ljava/lang/String;

.field private m_isFromWithParam:Z

.field private m_isVisible:Z

.field private m_qname:Lorg/apache/xml/utils/QName;

.field private m_val:Lorg/apache/xpath/objects/XObject;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/xml/utils/QName;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/xpath/Arg;->m_qname:Lorg/apache/xml/utils/QName;

    iput-object v2, p0, Lorg/apache/xpath/Arg;->m_val:Lorg/apache/xpath/objects/XObject;

    iput-object v2, p0, Lorg/apache/xpath/Arg;->m_expression:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xpath/Arg;->m_isVisible:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xpath/Arg;->m_isFromWithParam:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/utils/QName;Ljava/lang/String;Z)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xpath/Arg;->m_qname:Lorg/apache/xml/utils/QName;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xpath/Arg;->m_val:Lorg/apache/xpath/objects/XObject;

    iput-object p2, p0, Lorg/apache/xpath/Arg;->m_expression:Ljava/lang/String;

    iput-boolean p3, p0, Lorg/apache/xpath/Arg;->m_isFromWithParam:Z

    if-nez p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/apache/xpath/Arg;->m_isVisible:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/xml/utils/QName;Lorg/apache/xpath/objects/XObject;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xpath/Arg;->m_qname:Lorg/apache/xml/utils/QName;

    iput-object p2, p0, Lorg/apache/xpath/Arg;->m_val:Lorg/apache/xpath/objects/XObject;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xpath/Arg;->m_isVisible:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xpath/Arg;->m_isFromWithParam:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xpath/Arg;->m_expression:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/utils/QName;Lorg/apache/xpath/objects/XObject;Z)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xpath/Arg;->m_qname:Lorg/apache/xml/utils/QName;

    iput-object p2, p0, Lorg/apache/xpath/Arg;->m_val:Lorg/apache/xpath/objects/XObject;

    iput-boolean p3, p0, Lorg/apache/xpath/Arg;->m_isFromWithParam:Z

    if-nez p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/apache/xpath/Arg;->m_isVisible:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xpath/Arg;->m_expression:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public detach()V
    .locals 2

    iget-object v0, p0, Lorg/apache/xpath/Arg;->m_val:Lorg/apache/xpath/objects/XObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xpath/Arg;->m_val:Lorg/apache/xpath/objects/XObject;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/xpath/objects/XObject;->allowDetachToRelease(Z)V

    iget-object v0, p0, Lorg/apache/xpath/Arg;->m_val:Lorg/apache/xpath/objects/XObject;

    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->detach()V

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/apache/xml/utils/QName;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xpath/Arg;->m_qname:Lorg/apache/xml/utils/QName;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getExpression()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/Arg;->m_expression:Ljava/lang/String;

    return-object v0
.end method

.method public final getQName()Lorg/apache/xml/utils/QName;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/Arg;->m_qname:Lorg/apache/xml/utils/QName;

    return-object v0
.end method

.method public final getVal()Lorg/apache/xpath/objects/XObject;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/Arg;->m_val:Lorg/apache/xpath/objects/XObject;

    return-object v0
.end method

.method public isFromWithParam()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xpath/Arg;->m_isFromWithParam:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xpath/Arg;->m_isVisible:Z

    return v0
.end method

.method public setExpression(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xpath/Arg;->m_expression:Ljava/lang/String;

    return-void
.end method

.method public setIsVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xpath/Arg;->m_isVisible:Z

    return-void
.end method

.method public final setQName(Lorg/apache/xml/utils/QName;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xpath/Arg;->m_qname:Lorg/apache/xml/utils/QName;

    return-void
.end method

.method public final setVal(Lorg/apache/xpath/objects/XObject;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xpath/Arg;->m_val:Lorg/apache/xpath/objects/XObject;

    return-void
.end method
