.class public Lorg/apache/xalan/templates/ElemOtherwise;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemOtherwise.java"


# static fields
.field static final serialVersionUID:J = 0x19de0fb3dda62b13L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    return-void
.end method


# virtual methods
.method public getNodeName()Ljava/lang/String;
    .locals 1

    const-string v0, "otherwise"

    return-object v0
.end method

.method public getXSLToken()I
    .locals 1

    const/16 v0, 0x27

    return v0
.end method
