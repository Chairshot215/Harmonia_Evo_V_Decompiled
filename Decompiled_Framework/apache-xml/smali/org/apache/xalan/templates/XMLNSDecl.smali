.class public Lorg/apache/xalan/templates/XMLNSDecl;
.super Ljava/lang/Object;
.source "XMLNSDecl.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = 0x5d1f8d55334acce9L


# instance fields
.field private m_isExcluded:Z

.field private m_prefix:Ljava/lang/String;

.field private m_uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xalan/templates/XMLNSDecl;->m_prefix:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/xalan/templates/XMLNSDecl;->m_uri:Ljava/lang/String;

    iput-boolean p3, p0, Lorg/apache/xalan/templates/XMLNSDecl;->m_isExcluded:Z

    return-void
.end method


# virtual methods
.method public getIsExcluded()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xalan/templates/XMLNSDecl;->m_isExcluded:Z

    return v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/XMLNSDecl;->m_prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getURI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/XMLNSDecl;->m_uri:Ljava/lang/String;

    return-object v0
.end method
