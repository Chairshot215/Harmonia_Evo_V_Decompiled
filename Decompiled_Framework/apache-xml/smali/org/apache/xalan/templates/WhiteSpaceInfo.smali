.class public Lorg/apache/xalan/templates/WhiteSpaceInfo;
.super Lorg/apache/xalan/templates/ElemTemplate;
.source "WhiteSpaceInfo.java"


# static fields
.field static final serialVersionUID:J = 0x58ab0710147f609cL


# instance fields
.field private m_shouldStripSpace:Z


# direct methods
.method public constructor <init>(Lorg/apache/xalan/templates/Stylesheet;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplate;-><init>()V

    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/WhiteSpaceInfo;->setStylesheet(Lorg/apache/xalan/templates/Stylesheet;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xpath/XPath;ZLorg/apache/xalan/templates/Stylesheet;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplate;-><init>()V

    iput-boolean p2, p0, Lorg/apache/xalan/templates/WhiteSpaceInfo;->m_shouldStripSpace:Z

    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/WhiteSpaceInfo;->setMatch(Lorg/apache/xpath/XPath;)V

    invoke-virtual {p0, p3}, Lorg/apache/xalan/templates/WhiteSpaceInfo;->setStylesheet(Lorg/apache/xalan/templates/Stylesheet;)V

    return-void
.end method


# virtual methods
.method public getShouldStripSpace()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xalan/templates/WhiteSpaceInfo;->m_shouldStripSpace:Z

    return v0
.end method

.method public recompose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 0

    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/StylesheetRoot;->recomposeWhiteSpaceInfo(Lorg/apache/xalan/templates/WhiteSpaceInfo;)V

    return-void
.end method
