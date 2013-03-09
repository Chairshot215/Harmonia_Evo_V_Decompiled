.class public abstract Lorg/apache/xalan/templates/AVTPart;
.super Ljava/lang/Object;
.source "AVTPart.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/xalan/templates/XSLTVisitable;


# static fields
.field static final serialVersionUID:J = -0x1841414701217379L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canTraverseOutsideSubtree()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract evaluate(Lorg/apache/xpath/XPathContext;Lorg/apache/xml/utils/FastStringBuffer;ILorg/apache/xml/utils/PrefixResolver;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation
.end method

.method public abstract fixupVariables(Ljava/util/Vector;I)V
.end method

.method public abstract getSimpleString()Ljava/lang/String;
.end method

.method public setXPathSupport(Lorg/apache/xpath/XPathContext;)V
    .locals 0

    return-void
.end method
