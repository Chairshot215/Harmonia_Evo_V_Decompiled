.class public Lorg/apache/xalan/templates/NamespaceAlias;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "NamespaceAlias.java"


# static fields
.field static final serialVersionUID:J = 0x654a7ce453a441eL


# instance fields
.field private m_ResultNamespace:Ljava/lang/String;

.field private m_ResultPrefix:Ljava/lang/String;

.field private m_StylesheetNamespace:Ljava/lang/String;

.field private m_StylesheetPrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    iput p1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_docOrderNumber:I

    return-void
.end method


# virtual methods
.method public getResultNamespace()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/NamespaceAlias;->m_ResultNamespace:Ljava/lang/String;

    return-object v0
.end method

.method public getResultPrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/NamespaceAlias;->m_ResultPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getStylesheetNamespace()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/NamespaceAlias;->m_StylesheetNamespace:Ljava/lang/String;

    return-object v0
.end method

.method public getStylesheetPrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/NamespaceAlias;->m_StylesheetPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public recompose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 0

    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/StylesheetRoot;->recomposeNamespaceAliases(Lorg/apache/xalan/templates/NamespaceAlias;)V

    return-void
.end method

.method public setResultNamespace(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xalan/templates/NamespaceAlias;->m_ResultNamespace:Ljava/lang/String;

    return-void
.end method

.method public setResultPrefix(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xalan/templates/NamespaceAlias;->m_ResultPrefix:Ljava/lang/String;

    return-void
.end method

.method public setStylesheetNamespace(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xalan/templates/NamespaceAlias;->m_StylesheetNamespace:Ljava/lang/String;

    return-void
.end method

.method public setStylesheetPrefix(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xalan/templates/NamespaceAlias;->m_StylesheetPrefix:Ljava/lang/String;

    return-void
.end method
