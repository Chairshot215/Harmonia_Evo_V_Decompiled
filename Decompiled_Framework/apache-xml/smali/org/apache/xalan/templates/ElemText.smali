.class public Lorg/apache/xalan/templates/ElemText;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemText.java"


# static fields
.field static final serialVersionUID:J = 0x1331e74c772b66a7L


# instance fields
.field private m_disableOutputEscaping:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xalan/templates/ElemText;->m_disableOutputEscaping:Z

    return-void
.end method


# virtual methods
.method public appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .locals 5

    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v1, "ER_CANNOT_ADD"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNodeName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemText;->getNodeName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lorg/apache/xalan/templates/ElemText;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :pswitch_0
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x4e
        :pswitch_0
    .end packed-switch
.end method

.method public getDisableOutputEscaping()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xalan/templates/ElemText;->m_disableOutputEscaping:Z

    return v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    const-string v0, "text"

    return-object v0
.end method

.method public getXSLToken()I
    .locals 1

    const/16 v0, 0x2a

    return v0
.end method

.method public setDisableOutputEscaping(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xalan/templates/ElemText;->m_disableOutputEscaping:Z

    return-void
.end method
