.class Lcom/google/gson/JsonCompactFormatter$FormattingVisitor;
.super Ljava/lang/Object;
.source "JsonCompactFormatter.java"

# interfaces
.implements Lcom/google/gson/JsonElementVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/JsonCompactFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FormattingVisitor"
.end annotation


# instance fields
.field private final escaper:Lcom/google/gson/Escaper;

.field private final serializeNulls:Z

.field private final writer:Ljava/lang/Appendable;


# direct methods
.method constructor <init>(Ljava/lang/Appendable;Lcom/google/gson/Escaper;Z)V
    .locals 0
    .parameter "writer"
    .parameter "escaper"
    .parameter "serializeNulls"

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/google/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    .line 35
    iput-object p2, p0, Lcom/google/gson/JsonCompactFormatter$FormattingVisitor;->escaper:Lcom/google/gson/Escaper;

    .line 36
    iput-boolean p3, p0, Lcom/google/gson/JsonCompactFormatter$FormattingVisitor;->serializeNulls:Z

    .line 37
    return-void
.end method


# virtual methods
.method public endArray(Lcom/google/gson/JsonArray;)V
    .locals 2
    .parameter "array"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    const/16 v1, 0x5d

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 81
    return-void
.end method

.method public endObject(Lcom/google/gson/JsonObject;)V
    .locals 2
    .parameter "object"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    const/16 v1, 0x7d

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 127
    return-void
.end method

.method public startArray(Lcom/google/gson/JsonArray;)V
    .locals 2
    .parameter "array"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    const/16 v1, 0x5b

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 49
    return-void
.end method

.method public startObject(Lcom/google/gson/JsonObject;)V
    .locals 2
    .parameter "object"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    const/16 v1, 0x7b

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 85
    return-void
.end method

.method public visitArrayMember(Lcom/google/gson/JsonArray;Lcom/google/gson/JsonArray;Z)V
    .locals 2
    .parameter "parent"
    .parameter "member"
    .parameter "isFirst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    if-nez p3, :cond_0

    .line 62
    iget-object v0, p0, Lcom/google/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    const/16 v1, 0x2c

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 64
    :cond_0
    return-void
.end method

.method public visitArrayMember(Lcom/google/gson/JsonArray;Lcom/google/gson/JsonObject;Z)V
    .locals 2
    .parameter "parent"
    .parameter "member"
    .parameter "isFirst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    if-nez p3, :cond_0

    .line 69
    iget-object v0, p0, Lcom/google/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    const/16 v1, 0x2c

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 71
    :cond_0
    return-void
.end method

.method public visitArrayMember(Lcom/google/gson/JsonArray;Lcom/google/gson/JsonPrimitive;Z)V
    .locals 2
    .parameter "parent"
    .parameter "member"
    .parameter "isFirst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    if-nez p3, :cond_0

    .line 54
    iget-object v0, p0, Lcom/google/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    const/16 v1, 0x2c

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/google/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    iget-object v1, p0, Lcom/google/gson/JsonCompactFormatter$FormattingVisitor;->escaper:Lcom/google/gson/Escaper;

    invoke-virtual {p2, v0, v1}, Lcom/google/gson/JsonPrimitive;->toString(Ljava/lang/Appendable;Lcom/google/gson/Escaper;)V

    .line 57
    return-void
.end method

.method public visitNull()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    const-string v1, "null"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 45
    return-void
.end method

.method public visitNullArrayMember(Lcom/google/gson/JsonArray;Z)V
    .locals 2
    .parameter "parent"
    .parameter "isFirst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    if-nez p2, :cond_0

    .line 75
    iget-object v0, p0, Lcom/google/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    const/16 v1, 0x2c

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 77
    :cond_0
    return-void
.end method

.method public visitNullObjectMember(Lcom/google/gson/JsonObject;Ljava/lang/String;Z)V
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
    .line 120
    iget-boolean v0, p0, Lcom/google/gson/JsonCompactFormatter$FormattingVisitor;->serializeNulls:Z

    if-eqz v0, :cond_0

    .line 121
    const/4 v0, 0x0

    check-cast v0, Lcom/google/gson/JsonObject;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/google/gson/JsonCompactFormatter$FormattingVisitor;->visitObjectMember(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonObject;Z)V

    .line 123
    :cond_0
    return-void
.end method

.method public visitObjectMember(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonArray;Z)V
    .locals 2
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
    if-nez p4, :cond_0

    .line 101
    iget-object v0, p0, Lcom/google/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    const/16 v1, 0x2c

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/google/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    const/16 v1, 0x22

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 104
    iget-object v0, p0, Lcom/google/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    invoke-interface {v0, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 105
    iget-object v0, p0, Lcom/google/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    const-string v1, "\":"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 106
    return-void
.end method

.method public visitObjectMember(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonObject;Z)V
    .locals 2
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
    .line 110
    if-nez p4, :cond_0

    .line 111
    iget-object v0, p0, Lcom/google/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    const/16 v1, 0x2c

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/google/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    const/16 v1, 0x22

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 114
    iget-object v0, p0, Lcom/google/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    invoke-interface {v0, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 115
    iget-object v0, p0, Lcom/google/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    const-string v1, "\":"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 116
    return-void
.end method

.method public visitObjectMember(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonPrimitive;Z)V
    .locals 2
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
    .line 89
    if-nez p4, :cond_0

    .line 90
    iget-object v0, p0, Lcom/google/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    const/16 v1, 0x2c

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/google/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    const/16 v1, 0x22

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 93
    iget-object v0, p0, Lcom/google/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    invoke-interface {v0, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 94
    iget-object v0, p0, Lcom/google/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    const-string v1, "\":"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 95
    iget-object v0, p0, Lcom/google/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    iget-object v1, p0, Lcom/google/gson/JsonCompactFormatter$FormattingVisitor;->escaper:Lcom/google/gson/Escaper;

    invoke-virtual {p3, v0, v1}, Lcom/google/gson/JsonPrimitive;->toString(Ljava/lang/Appendable;Lcom/google/gson/Escaper;)V

    .line 96
    return-void
.end method

.method public visitPrimitive(Lcom/google/gson/JsonPrimitive;)V
    .locals 2
    .parameter "primitive"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/gson/JsonCompactFormatter$FormattingVisitor;->writer:Ljava/lang/Appendable;

    iget-object v1, p0, Lcom/google/gson/JsonCompactFormatter$FormattingVisitor;->escaper:Lcom/google/gson/Escaper;

    invoke-virtual {p1, v0, v1}, Lcom/google/gson/JsonPrimitive;->toString(Ljava/lang/Appendable;Lcom/google/gson/Escaper;)V

    .line 41
    return-void
.end method
