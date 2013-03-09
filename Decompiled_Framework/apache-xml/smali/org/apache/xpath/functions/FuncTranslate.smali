.class public Lorg/apache/xpath/functions/FuncTranslate;
.super Lorg/apache/xpath/functions/Function3Args;
.source "FuncTranslate.java"


# static fields
.field static final serialVersionUID:J = -0x173719f81d54e982L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xpath/functions/Function3Args;-><init>()V

    return-void
.end method


# virtual methods
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

    invoke-virtual {v9}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v3

    iget-object v9, p0, Lorg/apache/xpath/functions/Function2Args;->m_arg1:Lorg/apache/xpath/Expression;

    invoke-virtual {v9, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lorg/apache/xpath/functions/Function3Args;->m_arg2:Lorg/apache/xpath/Expression;

    invoke-virtual {v9, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_2

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-gez v5, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-ge v5, v8, :cond_0

    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    new-instance v9, Lorg/apache/xpath/objects/XString;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    return-object v9
.end method
