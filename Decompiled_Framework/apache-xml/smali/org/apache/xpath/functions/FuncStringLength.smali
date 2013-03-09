.class public Lorg/apache/xpath/functions/FuncStringLength;
.super Lorg/apache/xpath/functions/FunctionDef1Arg;
.source "FuncStringLength.java"


# static fields
.field static final serialVersionUID:J = -0x23712495700b99fL


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xpath/functions/FunctionDef1Arg;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    new-instance v0, Lorg/apache/xpath/objects/XNumber;

    invoke-virtual {p0, p1}, Lorg/apache/xpath/functions/FuncStringLength;->getArg0AsString(Lorg/apache/xpath/XPathContext;)Lorg/apache/xml/utils/XMLString;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/xml/utils/XMLString;->length()I

    move-result v1

    int-to-double v1, v1

    invoke-direct {v0, v1, v2}, Lorg/apache/xpath/objects/XNumber;-><init>(D)V

    return-object v0
.end method
