.class public Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTroute;
.super Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleNode;
.source "ASTroute.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 7
    invoke-direct {p0, p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleNode;-><init>(I)V

    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;I)V
    .locals 0
    .parameter "p"
    .parameter "id"

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/SimpleNode;-><init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParser;I)V

    .line 12
    return-void
.end method


# virtual methods
.method public jjtAccept(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "visitor"
    .parameter "data"

    .prologue
    .line 17
    invoke-interface {p1, p0, p2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/AddressListParserVisitor;->visit(Lcom/htc/util/mail/lib/org/apache/james/mime4j/field/address/parser/ASTroute;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
