.class public Lorg/apache/xpath/functions/FuncString;
.super Lorg/apache/xpath/functions/FunctionDef1Arg;
.source "FuncString.java"


# static fields
.field static final serialVersionUID:J = -0x1e9fb12d0dc860f3L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xpath/functions/FunctionDef1Arg;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/xpath/functions/FuncString;->getArg0AsString(Lorg/apache/xpath/XPathContext;)Lorg/apache/xml/utils/XMLString;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/objects/XString;

    return-object v0
.end method
