.class Lcom/htc/gson/JsonCompactFormatter$FormattingVisitor;
.super Ljava/lang/Object;
.source "JsonCompactFormatter.java"

# interfaces
.implements Lcom/htc/gson/JsonElementVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/gson/JsonCompactFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FormattingVisitor"
.end annotation


# instance fields
.field private final escaper:Lcom/htc/gson/Escaper;

.field private final serializeNulls:Z

.field private final writer:Ljava/lang/Appendable;


# direct methods
.method constructor <init>(Ljava/lang/Appendable;Lcom/htc/gson/Escaper;Z)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/htc/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    iput-object p2, p0, Lcom/htc/gson/JsonCompactFormatter$FormattingVisitor;->escaper:Lcom/htc/gson/Escaper;

    iput-boolean p3, p0, Lcom/htc/gson/JsonCompactFormatter$FormattingVisitor;->serializeNulls:Z

    return-void
.end method


# virtual methods
.method public endArray(Lcom/htc/gson/JsonArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    const/16 v1, 0x5d

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method

.method public endObject(Lcom/htc/gson/JsonObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    const/16 v1, 0x7d

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method

.method public startArray(Lcom/htc/gson/JsonArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    const/16 v1, 0x5b

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method

.method public startObject(Lcom/htc/gson/JsonObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    const/16 v1, 0x7b

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method

.method public visitArrayMember(Lcom/htc/gson/JsonArray;Lcom/htc/gson/JsonArray;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/htc/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    const/16 v1, 0x2c

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_0
    return-void
.end method

.method public visitArrayMember(Lcom/htc/gson/JsonArray;Lcom/htc/gson/JsonObject;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/htc/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    const/16 v1, 0x2c

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_0
    return-void
.end method

.method public visitArrayMember(Lcom/htc/gson/JsonArray;Lcom/htc/gson/JsonPrimitive;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/htc/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    const/16 v1, 0x2c

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_0
    iget-object v0, p0, Lcom/htc/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    iget-object v1, p0, Lcom/htc/gson/JsonCompactFormatter$FormattingVisitor;->escaper:Lcom/htc/gson/Escaper;

    invoke-virtual {p2, v0, v1}, Lcom/htc/gson/JsonPrimitive;->toString(Ljava/lang/Appendable;Lcom/htc/gson/Escaper;)V

    return-void
.end method

.method public visitNull()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    const-string v1, "null"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method public visitNullArrayMember(Lcom/htc/gson/JsonArray;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/htc/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    const/16 v1, 0x2c

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_0
    return-void
.end method

.method public visitNullObjectMember(Lcom/htc/gson/JsonObject;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/htc/gson/JsonCompactFormatter$FormattingVisitor;->serializeNulls:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    check-cast v0, Lcom/htc/gson/JsonObject;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/htc/gson/JsonCompactFormatter$FormattingVisitor;->visitObjectMember(Lcom/htc/gson/JsonObject;Ljava/lang/String;Lcom/htc/gson/JsonObject;Z)V

    :cond_0
    return-void
.end method

.method public visitObjectMember(Lcom/htc/gson/JsonObject;Ljava/lang/String;Lcom/htc/gson/JsonArray;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p4, :cond_0

    iget-object v0, p0, Lcom/htc/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    const/16 v1, 0x2c

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_0
    iget-object v0, p0, Lcom/htc/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    const/16 v1, 0x22

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    iget-object v0, p0, Lcom/htc/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    invoke-interface {v0, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    iget-object v0, p0, Lcom/htc/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    const-string v1, "\":"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method public visitObjectMember(Lcom/htc/gson/JsonObject;Ljava/lang/String;Lcom/htc/gson/JsonObject;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p4, :cond_0

    iget-object v0, p0, Lcom/htc/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    const/16 v1, 0x2c

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_0
    iget-object v0, p0, Lcom/htc/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    const/16 v1, 0x22

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    iget-object v0, p0, Lcom/htc/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    invoke-interface {v0, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    iget-object v0, p0, Lcom/htc/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    const-string v1, "\":"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method public visitObjectMember(Lcom/htc/gson/JsonObject;Ljava/lang/String;Lcom/htc/gson/JsonPrimitive;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p4, :cond_0

    iget-object v0, p0, Lcom/htc/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    const/16 v1, 0x2c

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_0
    iget-object v0, p0, Lcom/htc/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    const/16 v1, 0x22

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    iget-object v0, p0, Lcom/htc/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    invoke-interface {v0, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    iget-object v0, p0, Lcom/htc/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    const-string v1, "\":"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    iget-object v0, p0, Lcom/htc/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    iget-object v1, p0, Lcom/htc/gson/JsonCompactFormatter$FormattingVisitor;->escaper:Lcom/htc/gson/Escaper;

    invoke-virtual {p3, v0, v1}, Lcom/htc/gson/JsonPrimitive;->toString(Ljava/lang/Appendable;Lcom/htc/gson/Escaper;)V

    return-void
.end method

.method public visitPrimitive(Lcom/htc/gson/JsonPrimitive;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    iget-object v1, p0, Lcom/htc/gson/JsonCompactFormatter$FormattingVisitor;->escaper:Lcom/htc/gson/Escaper;

    invoke-virtual {p1, v0, v1}, Lcom/htc/gson/JsonPrimitive;->toString(Ljava/lang/Appendable;Lcom/htc/gson/Escaper;)V

    return-void
.end method
