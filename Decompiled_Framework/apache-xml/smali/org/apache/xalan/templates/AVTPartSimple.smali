.class public Lorg/apache/xalan/templates/AVTPartSimple;
.super Lorg/apache/xalan/templates/AVTPart;
.source "AVTPartSimple.java"


# static fields
.field static final serialVersionUID:J = -0x33f8c32d8f0120e9L


# instance fields
.field private m_val:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xalan/templates/AVTPart;-><init>()V

    iput-object p1, p0, Lorg/apache/xalan/templates/AVTPartSimple;->m_val:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V
    .locals 0

    return-void
.end method

.method public evaluate(Lorg/apache/xpath/XPathContext;Lorg/apache/xml/utils/FastStringBuffer;ILorg/apache/xml/utils/PrefixResolver;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/AVTPartSimple;->m_val:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    return-void
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 0

    return-void
.end method

.method public getSimpleString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/AVTPartSimple;->m_val:Ljava/lang/String;

    return-object v0
.end method
