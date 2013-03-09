.class public Lorg/apache/xalan/processor/WhitespaceInfoPaths;
.super Lorg/apache/xalan/templates/WhiteSpaceInfo;
.source "WhitespaceInfoPaths.java"


# static fields
.field static final serialVersionUID:J = 0x52a394c820bc6ab3L


# instance fields
.field private m_elements:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Lorg/apache/xalan/templates/Stylesheet;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xalan/templates/WhiteSpaceInfo;-><init>(Lorg/apache/xalan/templates/Stylesheet;)V

    invoke-virtual {p0, p1}, Lorg/apache/xalan/processor/WhitespaceInfoPaths;->setStylesheet(Lorg/apache/xalan/templates/Stylesheet;)V

    return-void
.end method


# virtual methods
.method public clearElements()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xalan/processor/WhitespaceInfoPaths;->m_elements:Ljava/util/Vector;

    return-void
.end method

.method getElements()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/processor/WhitespaceInfoPaths;->m_elements:Ljava/util/Vector;

    return-object v0
.end method

.method public setElements(Ljava/util/Vector;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xalan/processor/WhitespaceInfoPaths;->m_elements:Ljava/util/Vector;

    return-void
.end method
