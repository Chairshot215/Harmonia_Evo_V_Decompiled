.class public Lorg/apache/xpath/functions/FuncSubstring;
.super Lorg/apache/xpath/functions/Function3Args;
.source "FuncSubstring.java"


# static fields
.field static final serialVersionUID:J = -0x53387922fd0656eeL


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xpath/functions/Function3Args;-><init>()V

    return-void
.end method


# virtual methods
.method public checkNumberArgs(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xpath/functions/FuncSubstring;->reportWrongNumberArgs()V

    :cond_0
    return-void
.end method

.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v9, p0, Lorg/apache/xpath/functions/FunctionOneArg;->m_arg0:Lorg/apache/xpath/Expression;

    invoke-virtual {v9, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/xpath/objects/XObject;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object v4

    iget-object v9, p0, Lorg/apache/xpath/functions/Function2Args;->m_arg1:Lorg/apache/xpath/Expression;

    invoke-virtual {v9, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v5

    invoke-interface {v4}, Lorg/apache/xml/utils/XMLString;->length()I

    move-result v3

    if-gtz v3, :cond_0

    sget-object v8, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    :goto_0
    return-object v8

    :cond_0
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v9

    if-eqz v9, :cond_3

    const-wide v5, -0x3ed17b8000000000L

    const/4 v7, 0x0

    :goto_1
    iget-object v9, p0, Lorg/apache/xpath/functions/Function3Args;->m_arg2:Lorg/apache/xpath/Expression;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lorg/apache/xpath/functions/Function3Args;->m_arg2:Lorg/apache/xpath/Expression;

    invoke-virtual {v9, p1}, Lorg/apache/xpath/Expression;->num(Lorg/apache/xpath/XPathContext;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    long-to-double v9, v9

    add-double/2addr v9, v5

    double-to-int v9, v9

    add-int/lit8 v0, v9, -0x1

    if-gez v0, :cond_5

    const/4 v0, 0x0

    :cond_1
    :goto_2
    if-le v7, v3, :cond_2

    move v7, v3

    :cond_2
    invoke-interface {v4, v7, v0}, Lorg/apache/xml/utils/XMLString;->substring(II)Lorg/apache/xml/utils/XMLString;

    move-result-object v8

    :goto_3
    check-cast v8, Lorg/apache/xpath/objects/XString;

    goto :goto_0

    :cond_3
    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    long-to-double v5, v9

    const-wide/16 v9, 0x0

    cmpl-double v9, v5, v9

    if-lez v9, :cond_4

    double-to-int v9, v5

    add-int/lit8 v7, v9, -0x1

    :goto_4
    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    goto :goto_4

    :cond_5
    if-le v0, v3, :cond_1

    move v0, v3

    goto :goto_2

    :cond_6
    if-le v7, v3, :cond_7

    move v7, v3

    :cond_7
    invoke-interface {v4, v7}, Lorg/apache/xml/utils/XMLString;->substring(I)Lorg/apache/xml/utils/XMLString;

    move-result-object v8

    goto :goto_3
.end method

.method protected reportWrongNumberArgs()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    new-instance v0, Lorg/apache/xpath/functions/WrongNumberArgsException;

    const-string v1, "ER_TWO_OR_THREE"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xpath/functions/WrongNumberArgsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
