.class public Lorg/apache/xalan/templates/ElemMessage;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemMessage.java"


# static fields
.field static final serialVersionUID:J = 0x153d549875451337L


# instance fields
.field private m_terminate:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xalan/templates/ElemMessage;->m_terminate:Z

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1, p0}, Lorg/apache/xalan/transformer/TransformerImpl;->transformToString(Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMsgMgr()Lorg/apache/xalan/transformer/MsgMgr;

    move-result-object v1

    iget-boolean v2, p0, Lorg/apache/xalan/templates/ElemMessage;->m_terminate:Z

    invoke-virtual {v1, p0, v0, v2}, Lorg/apache/xalan/transformer/MsgMgr;->message(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;Z)V

    iget-boolean v1, p0, Lorg/apache/xalan/templates/ElemMessage;->m_terminate:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v1

    new-instance v2, Ljavax/xml/transform/TransformerException;

    const-string v3, "ER_STYLESHEET_DIRECTED_TERMINATION"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    :cond_0
    return-void
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    const-string v0, "message"

    return-object v0
.end method

.method public getTerminate()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xalan/templates/ElemMessage;->m_terminate:Z

    return v0
.end method

.method public getXSLToken()I
    .locals 1

    const/16 v0, 0x4b

    return v0
.end method

.method public setTerminate(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xalan/templates/ElemMessage;->m_terminate:Z

    return-void
.end method
