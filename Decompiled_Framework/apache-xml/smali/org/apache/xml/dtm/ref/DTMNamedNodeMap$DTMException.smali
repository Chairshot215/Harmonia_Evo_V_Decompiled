.class public Lorg/apache/xml/dtm/ref/DTMNamedNodeMap$DTMException;
.super Lorg/w3c/dom/DOMException;
.source "DTMNamedNodeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DTMException"
.end annotation


# static fields
.field static final serialVersionUID:J = -0x730cd7a4dcdecc2eL


# instance fields
.field final synthetic this$0:Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;S)V
    .locals 1

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap$DTMException;->this$0:Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;

    const-string v0, ""

    invoke-direct {p0, p2, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;SLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap$DTMException;->this$0:Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;

    invoke-direct {p0, p2, p3}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    return-void
.end method
