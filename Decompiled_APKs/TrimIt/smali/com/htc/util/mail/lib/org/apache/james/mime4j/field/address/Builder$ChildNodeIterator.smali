.class Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder$ChildNodeIterator;
.super Ljava/lang/Object;
.source "Builder.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChildNodeIterator"
.end annotation


# instance fields
.field private index:I

.field private len:I

.field private simpleNode:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleNode;


# direct methods
.method public constructor <init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleNode;)V
    .locals 1
    .parameter "simpleNode"

    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput-object p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->simpleNode:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleNode;

    .line 223
    invoke-virtual {p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleNode;->jjtGetNumChildren()I

    move-result v0

    iput v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->len:I

    .line 224
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->index:I

    .line 225
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 232
    iget v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->index:I

    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->len:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->nextNode()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;

    move-result-object v0

    return-object v0
.end method

.method public nextNode()Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;
    .locals 3

    .prologue
    .line 240
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->simpleNode:Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleNode;

    iget v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->index:I

    invoke-virtual {v0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleNode;->jjtGetChild(I)Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/Node;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 228
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
