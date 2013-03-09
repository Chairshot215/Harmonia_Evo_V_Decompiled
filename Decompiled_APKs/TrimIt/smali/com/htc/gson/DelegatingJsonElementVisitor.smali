.class Lcom/htc/gson/DelegatingJsonElementVisitor;
.super Ljava/lang/Object;
.source "DelegatingJsonElementVisitor.java"

# interfaces
.implements Lcom/htc/gson/JsonElementVisitor;


# instance fields
.field private final delegate:Lcom/htc/gson/JsonElementVisitor;


# direct methods
.method protected constructor <init>(Lcom/htc/gson/JsonElementVisitor;)V
    .locals 0
    .parameter "delegate"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {p1}, Lcom/htc/gson/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 54
    iput-object p1, p0, Lcom/htc/gson/DelegatingJsonElementVisitor;->delegate:Lcom/htc/gson/JsonElementVisitor;

    .line 55
    return-void
.end method


# virtual methods
.method public endArray(Lcom/htc/gson/JsonArray;)V
    .locals 1
    .parameter "array"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/gson/DelegatingJsonElementVisitor;->delegate:Lcom/htc/gson/JsonElementVisitor;

    invoke-interface {v0, p1}, Lcom/htc/gson/JsonElementVisitor;->endArray(Lcom/htc/gson/JsonArray;)V

    .line 59
    return-void
.end method

.method public endObject(Lcom/htc/gson/JsonObject;)V
    .locals 1
    .parameter "object"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/gson/DelegatingJsonElementVisitor;->delegate:Lcom/htc/gson/JsonElementVisitor;

    invoke-interface {v0, p1}, Lcom/htc/gson/JsonElementVisitor;->endObject(Lcom/htc/gson/JsonObject;)V

    .line 63
    return-void
.end method

.method public startArray(Lcom/htc/gson/JsonArray;)V
    .locals 1
    .parameter "array"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/gson/DelegatingJsonElementVisitor;->delegate:Lcom/htc/gson/JsonElementVisitor;

    invoke-interface {v0, p1}, Lcom/htc/gson/JsonElementVisitor;->startArray(Lcom/htc/gson/JsonArray;)V

    .line 67
    return-void
.end method

.method public startObject(Lcom/htc/gson/JsonObject;)V
    .locals 1
    .parameter "object"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/gson/DelegatingJsonElementVisitor;->delegate:Lcom/htc/gson/JsonElementVisitor;

    invoke-interface {v0, p1}, Lcom/htc/gson/JsonElementVisitor;->startObject(Lcom/htc/gson/JsonObject;)V

    .line 71
    return-void
.end method

.method public visitArrayMember(Lcom/htc/gson/JsonArray;Lcom/htc/gson/JsonArray;Z)V
    .locals 1
    .parameter "parent"
    .parameter "member"
    .parameter "isFirst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/htc/gson/DelegatingJsonElementVisitor;->delegate:Lcom/htc/gson/JsonElementVisitor;

    invoke-interface {v0, p1, p2, p3}, Lcom/htc/gson/JsonElementVisitor;->visitArrayMember(Lcom/htc/gson/JsonArray;Lcom/htc/gson/JsonArray;Z)V

    .line 81
    return-void
.end method

.method public visitArrayMember(Lcom/htc/gson/JsonArray;Lcom/htc/gson/JsonObject;Z)V
    .locals 1
    .parameter "parent"
    .parameter "member"
    .parameter "isFirst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/htc/gson/DelegatingJsonElementVisitor;->delegate:Lcom/htc/gson/JsonElementVisitor;

    invoke-interface {v0, p1, p2, p3}, Lcom/htc/gson/JsonElementVisitor;->visitArrayMember(Lcom/htc/gson/JsonArray;Lcom/htc/gson/JsonObject;Z)V

    .line 86
    return-void
.end method

.method public visitArrayMember(Lcom/htc/gson/JsonArray;Lcom/htc/gson/JsonPrimitive;Z)V
    .locals 1
    .parameter "parent"
    .parameter "member"
    .parameter "isFirst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/gson/DelegatingJsonElementVisitor;->delegate:Lcom/htc/gson/JsonElementVisitor;

    invoke-interface {v0, p1, p2, p3}, Lcom/htc/gson/JsonElementVisitor;->visitArrayMember(Lcom/htc/gson/JsonArray;Lcom/htc/gson/JsonPrimitive;Z)V

    .line 76
    return-void
.end method

.method public visitNull()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/htc/gson/DelegatingJsonElementVisitor;->delegate:Lcom/htc/gson/JsonElementVisitor;

    invoke-interface {v0}, Lcom/htc/gson/JsonElementVisitor;->visitNull()V

    .line 114
    return-void
.end method

.method public visitNullArrayMember(Lcom/htc/gson/JsonArray;Z)V
    .locals 1
    .parameter "parent"
    .parameter "isFirst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/htc/gson/DelegatingJsonElementVisitor;->delegate:Lcom/htc/gson/JsonElementVisitor;

    invoke-interface {v0, p1, p2}, Lcom/htc/gson/JsonElementVisitor;->visitNullArrayMember(Lcom/htc/gson/JsonArray;Z)V

    .line 118
    return-void
.end method

.method public visitNullObjectMember(Lcom/htc/gson/JsonObject;Ljava/lang/String;Z)V
    .locals 1
    .parameter "parent"
    .parameter "memberName"
    .parameter "isFirst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/htc/gson/DelegatingJsonElementVisitor;->delegate:Lcom/htc/gson/JsonElementVisitor;

    invoke-interface {v0, p1, p2, p3}, Lcom/htc/gson/JsonElementVisitor;->visitNullObjectMember(Lcom/htc/gson/JsonObject;Ljava/lang/String;Z)V

    .line 106
    return-void
.end method

.method public visitObjectMember(Lcom/htc/gson/JsonObject;Ljava/lang/String;Lcom/htc/gson/JsonArray;Z)V
    .locals 1
    .parameter "parent"
    .parameter "memberName"
    .parameter "member"
    .parameter "isFirst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/gson/DelegatingJsonElementVisitor;->delegate:Lcom/htc/gson/JsonElementVisitor;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/htc/gson/JsonElementVisitor;->visitObjectMember(Lcom/htc/gson/JsonObject;Ljava/lang/String;Lcom/htc/gson/JsonArray;Z)V

    .line 96
    return-void
.end method

.method public visitObjectMember(Lcom/htc/gson/JsonObject;Ljava/lang/String;Lcom/htc/gson/JsonObject;Z)V
    .locals 1
    .parameter "parent"
    .parameter "memberName"
    .parameter "member"
    .parameter "isFirst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/htc/gson/DelegatingJsonElementVisitor;->delegate:Lcom/htc/gson/JsonElementVisitor;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/htc/gson/JsonElementVisitor;->visitObjectMember(Lcom/htc/gson/JsonObject;Ljava/lang/String;Lcom/htc/gson/JsonObject;Z)V

    .line 101
    return-void
.end method

.method public visitObjectMember(Lcom/htc/gson/JsonObject;Ljava/lang/String;Lcom/htc/gson/JsonPrimitive;Z)V
    .locals 1
    .parameter "parent"
    .parameter "memberName"
    .parameter "member"
    .parameter "isFirst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/htc/gson/DelegatingJsonElementVisitor;->delegate:Lcom/htc/gson/JsonElementVisitor;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/htc/gson/JsonElementVisitor;->visitObjectMember(Lcom/htc/gson/JsonObject;Ljava/lang/String;Lcom/htc/gson/JsonPrimitive;Z)V

    .line 91
    return-void
.end method

.method public visitPrimitive(Lcom/htc/gson/JsonPrimitive;)V
    .locals 1
    .parameter "primitive"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/gson/DelegatingJsonElementVisitor;->delegate:Lcom/htc/gson/JsonElementVisitor;

    invoke-interface {v0, p1}, Lcom/htc/gson/JsonElementVisitor;->visitPrimitive(Lcom/htc/gson/JsonPrimitive;)V

    .line 110
    return-void
.end method
