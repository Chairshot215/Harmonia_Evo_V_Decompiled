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

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/htc/gson/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/htc/gson/DelegatingJsonElementVisitor;->delegate:Lcom/htc/gson/JsonElementVisitor;

    return-void
.end method


# virtual methods
.method public endArray(Lcom/htc/gson/JsonArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/gson/DelegatingJsonElementVisitor;->delegate:Lcom/htc/gson/JsonElementVisitor;

    invoke-interface {v0, p1}, Lcom/htc/gson/JsonElementVisitor;->endArray(Lcom/htc/gson/JsonArray;)V

    return-void
.end method

.method public endObject(Lcom/htc/gson/JsonObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/gson/DelegatingJsonElementVisitor;->delegate:Lcom/htc/gson/JsonElementVisitor;

    invoke-interface {v0, p1}, Lcom/htc/gson/JsonElementVisitor;->endObject(Lcom/htc/gson/JsonObject;)V

    return-void
.end method

.method public startArray(Lcom/htc/gson/JsonArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/gson/DelegatingJsonElementVisitor;->delegate:Lcom/htc/gson/JsonElementVisitor;

    invoke-interface {v0, p1}, Lcom/htc/gson/JsonElementVisitor;->startArray(Lcom/htc/gson/JsonArray;)V

    return-void
.end method

.method public startObject(Lcom/htc/gson/JsonObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/gson/DelegatingJsonElementVisitor;->delegate:Lcom/htc/gson/JsonElementVisitor;

    invoke-interface {v0, p1}, Lcom/htc/gson/JsonElementVisitor;->startObject(Lcom/htc/gson/JsonObject;)V

    return-void
.end method

.method public visitArrayMember(Lcom/htc/gson/JsonArray;Lcom/htc/gson/JsonArray;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/gson/DelegatingJsonElementVisitor;->delegate:Lcom/htc/gson/JsonElementVisitor;

    invoke-interface {v0, p1, p2, p3}, Lcom/htc/gson/JsonElementVisitor;->visitArrayMember(Lcom/htc/gson/JsonArray;Lcom/htc/gson/JsonArray;Z)V

    return-void
.end method

.method public visitArrayMember(Lcom/htc/gson/JsonArray;Lcom/htc/gson/JsonObject;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/gson/DelegatingJsonElementVisitor;->delegate:Lcom/htc/gson/JsonElementVisitor;

    invoke-interface {v0, p1, p2, p3}, Lcom/htc/gson/JsonElementVisitor;->visitArrayMember(Lcom/htc/gson/JsonArray;Lcom/htc/gson/JsonObject;Z)V

    return-void
.end method

.method public visitArrayMember(Lcom/htc/gson/JsonArray;Lcom/htc/gson/JsonPrimitive;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/gson/DelegatingJsonElementVisitor;->delegate:Lcom/htc/gson/JsonElementVisitor;

    invoke-interface {v0, p1, p2, p3}, Lcom/htc/gson/JsonElementVisitor;->visitArrayMember(Lcom/htc/gson/JsonArray;Lcom/htc/gson/JsonPrimitive;Z)V

    return-void
.end method

.method public visitNull()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/gson/DelegatingJsonElementVisitor;->delegate:Lcom/htc/gson/JsonElementVisitor;

    invoke-interface {v0}, Lcom/htc/gson/JsonElementVisitor;->visitNull()V

    return-void
.end method

.method public visitNullArrayMember(Lcom/htc/gson/JsonArray;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/gson/DelegatingJsonElementVisitor;->delegate:Lcom/htc/gson/JsonElementVisitor;

    invoke-interface {v0, p1, p2}, Lcom/htc/gson/JsonElementVisitor;->visitNullArrayMember(Lcom/htc/gson/JsonArray;Z)V

    return-void
.end method

.method public visitNullObjectMember(Lcom/htc/gson/JsonObject;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/gson/DelegatingJsonElementVisitor;->delegate:Lcom/htc/gson/JsonElementVisitor;

    invoke-interface {v0, p1, p2, p3}, Lcom/htc/gson/JsonElementVisitor;->visitNullObjectMember(Lcom/htc/gson/JsonObject;Ljava/lang/String;Z)V

    return-void
.end method

.method public visitObjectMember(Lcom/htc/gson/JsonObject;Ljava/lang/String;Lcom/htc/gson/JsonArray;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/gson/DelegatingJsonElementVisitor;->delegate:Lcom/htc/gson/JsonElementVisitor;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/htc/gson/JsonElementVisitor;->visitObjectMember(Lcom/htc/gson/JsonObject;Ljava/lang/String;Lcom/htc/gson/JsonArray;Z)V

    return-void
.end method

.method public visitObjectMember(Lcom/htc/gson/JsonObject;Ljava/lang/String;Lcom/htc/gson/JsonObject;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/gson/DelegatingJsonElementVisitor;->delegate:Lcom/htc/gson/JsonElementVisitor;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/htc/gson/JsonElementVisitor;->visitObjectMember(Lcom/htc/gson/JsonObject;Ljava/lang/String;Lcom/htc/gson/JsonObject;Z)V

    return-void
.end method

.method public visitObjectMember(Lcom/htc/gson/JsonObject;Ljava/lang/String;Lcom/htc/gson/JsonPrimitive;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/gson/DelegatingJsonElementVisitor;->delegate:Lcom/htc/gson/JsonElementVisitor;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/htc/gson/JsonElementVisitor;->visitObjectMember(Lcom/htc/gson/JsonObject;Ljava/lang/String;Lcom/htc/gson/JsonPrimitive;Z)V

    return-void
.end method

.method public visitPrimitive(Lcom/htc/gson/JsonPrimitive;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/gson/DelegatingJsonElementVisitor;->delegate:Lcom/htc/gson/JsonElementVisitor;

    invoke-interface {v0, p1}, Lcom/htc/gson/JsonElementVisitor;->visitPrimitive(Lcom/htc/gson/JsonPrimitive;)V

    return-void
.end method
