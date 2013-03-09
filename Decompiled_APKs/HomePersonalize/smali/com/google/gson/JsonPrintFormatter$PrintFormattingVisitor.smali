.class Lcom/google/gson/JsonPrintFormatter$PrintFormattingVisitor;
.super Ljava/lang/Object;
.source "JsonPrintFormatter.java"

# interfaces
.implements Lcom/google/gson/JsonElementVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/JsonPrintFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrintFormattingVisitor"
.end annotation


# instance fields
.field private final escaper:Lcom/google/gson/Escaper;

.field private final serializeNulls:Z

.field final synthetic this$0:Lcom/google/gson/JsonPrintFormatter;

.field private final writer:Lcom/google/gson/JsonPrintFormatter$JsonWriter;


# direct methods
.method constructor <init>(Lcom/google/gson/JsonPrintFormatter;Lcom/google/gson/JsonPrintFormatter$JsonWriter;Lcom/google/gson/Escaper;Z)V
    .locals 0
    .parameter
    .parameter "writer"
    .parameter "escaper"
    .parameter "serializeNulls"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/google/gson/JsonPrintFormatter$PrintFormattingVisitor;->this$0:Lcom/google/gson/JsonPrintFormatter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p2, p0, Lcom/google/gson/JsonPrintFormatter$PrintFormattingVisitor;->writer:Lcom/google/gson/JsonPrintFormatter$JsonWriter;

    .line 150
    iput-object p3, p0, Lcom/google/gson/JsonPrintFormatter$PrintFormattingVisitor;->escaper:Lcom/google/gson/Escaper;

    .line 151
    iput-boolean p4, p0, Lcom/google/gson/JsonPrintFormatter$PrintFormattingVisitor;->serializeNulls:Z

    .line 152
    return-void
.end method

.method private addCommaCheckingFirst(Z)V
    .locals 1
    .parameter "first"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    if-nez p1, :cond_0

    .line 156
    iget-object v0, p0, Lcom/google/gson/JsonPrintFormatter$PrintFormattingVisitor;->writer:Lcom/google/gson/JsonPrintFormatter$JsonWriter;

    invoke-virtual {v0}, Lcom/google/gson/JsonPrintFormatter$JsonWriter;->elementSeparator()V

    .line 158
    :cond_0
    return-void
.end method

.method private escapeJsonPrimitive(Lcom/google/gson/JsonPrimitive;)Ljava/lang/String;
    .locals 2
    .parameter "member"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    .local v0, builder:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/google/gson/JsonPrintFormatter$PrintFormattingVisitor;->escaper:Lcom/google/gson/Escaper;

    invoke-virtual {p1, v0, v1}, Lcom/google/gson/JsonPrimitive;->toString(Ljava/lang/Appendable;Lcom/google/gson/Escaper;)V

    .line 236
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public endArray(Lcom/google/gson/JsonArray;)V
    .locals 1
    .parameter "array"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/gson/JsonPrintFormatter$PrintFormattingVisitor;->writer:Lcom/google/gson/JsonPrintFormatter$JsonWriter;

    invoke-virtual {v0}, Lcom/google/gson/JsonPrintFormatter$JsonWriter;->endArray()V

    .line 186
    return-void
.end method

.method public endObject(Lcom/google/gson/JsonObject;)V
    .locals 1
    .parameter "object"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/gson/JsonPrintFormatter$PrintFormattingVisitor;->writer:Lcom/google/gson/JsonPrintFormatter$JsonWriter;

    invoke-virtual {v0}, Lcom/google/gson/JsonPrintFormatter$JsonWriter;->endObject()V

    .line 223
    return-void
.end method

.method public startArray(Lcom/google/gson/JsonArray;)V
    .locals 1
    .parameter "array"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/gson/JsonPrintFormatter$PrintFormattingVisitor;->writer:Lcom/google/gson/JsonPrintFormatter$JsonWriter;

    invoke-virtual {v0}, Lcom/google/gson/JsonPrintFormatter$JsonWriter;->beginArray()V

    .line 162
    return-void
.end method

.method public startObject(Lcom/google/gson/JsonObject;)V
    .locals 1
    .parameter "object"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/gson/JsonPrintFormatter$PrintFormattingVisitor;->writer:Lcom/google/gson/JsonPrintFormatter$JsonWriter;

    invoke-virtual {v0}, Lcom/google/gson/JsonPrintFormatter$JsonWriter;->beginObject()V

    .line 190
    return-void
.end method

.method public visitArrayMember(Lcom/google/gson/JsonArray;Lcom/google/gson/JsonArray;Z)V
    .locals 0
    .parameter "parent"
    .parameter "member"
    .parameter "first"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-direct {p0, p3}, Lcom/google/gson/JsonPrintFormatter$PrintFormattingVisitor;->addCommaCheckingFirst(Z)V

    .line 173
    return-void
.end method

.method public visitArrayMember(Lcom/google/gson/JsonArray;Lcom/google/gson/JsonObject;Z)V
    .locals 0
    .parameter "parent"
    .parameter "member"
    .parameter "first"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    invoke-direct {p0, p3}, Lcom/google/gson/JsonPrintFormatter$PrintFormattingVisitor;->addCommaCheckingFirst(Z)V

    .line 178
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
    .line 166
    invoke-direct {p0, p3}, Lcom/google/gson/JsonPrintFormatter$PrintFormattingVisitor;->addCommaCheckingFirst(Z)V

    .line 167
    iget-object v0, p0, Lcom/google/gson/JsonPrintFormatter$PrintFormattingVisitor;->writer:Lcom/google/gson/JsonPrintFormatter$JsonWriter;

    invoke-direct {p0, p2}, Lcom/google/gson/JsonPrintFormatter$PrintFormattingVisitor;->escapeJsonPrimitive(Lcom/google/gson/JsonPrimitive;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonPrintFormatter$JsonWriter;->value(Ljava/lang/String;)V

    .line 168
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
    .line 230
    iget-object v0, p0, Lcom/google/gson/JsonPrintFormatter$PrintFormattingVisitor;->writer:Lcom/google/gson/JsonPrintFormatter$JsonWriter;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonPrintFormatter$JsonWriter;->value(Ljava/lang/String;)V

    .line 231
    return-void
.end method

.method public visitNullArrayMember(Lcom/google/gson/JsonArray;Z)V
    .locals 0
    .parameter "parent"
    .parameter "isFirst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    invoke-direct {p0, p2}, Lcom/google/gson/JsonPrintFormatter$PrintFormattingVisitor;->addCommaCheckingFirst(Z)V

    .line 182
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
    .line 216
    iget-boolean v0, p0, Lcom/google/gson/JsonPrintFormatter$PrintFormattingVisitor;->serializeNulls:Z

    if-eqz v0, :cond_0

    .line 217
    const/4 v0, 0x0

    check-cast v0, Lcom/google/gson/JsonObject;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/google/gson/JsonPrintFormatter$PrintFormattingVisitor;->visitObjectMember(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonObject;Z)V

    .line 219
    :cond_0
    return-void
.end method

.method public visitObjectMember(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonArray;Z)V
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
    .line 202
    invoke-direct {p0, p4}, Lcom/google/gson/JsonPrintFormatter$PrintFormattingVisitor;->addCommaCheckingFirst(Z)V

    .line 203
    iget-object v0, p0, Lcom/google/gson/JsonPrintFormatter$PrintFormattingVisitor;->writer:Lcom/google/gson/JsonPrintFormatter$JsonWriter;

    invoke-virtual {v0, p2}, Lcom/google/gson/JsonPrintFormatter$JsonWriter;->key(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/google/gson/JsonPrintFormatter$PrintFormattingVisitor;->writer:Lcom/google/gson/JsonPrintFormatter$JsonWriter;

    invoke-virtual {v0}, Lcom/google/gson/JsonPrintFormatter$JsonWriter;->fieldSeparator()V

    .line 205
    return-void
.end method

.method public visitObjectMember(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonObject;Z)V
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
    .line 209
    invoke-direct {p0, p4}, Lcom/google/gson/JsonPrintFormatter$PrintFormattingVisitor;->addCommaCheckingFirst(Z)V

    .line 210
    iget-object v0, p0, Lcom/google/gson/JsonPrintFormatter$PrintFormattingVisitor;->writer:Lcom/google/gson/JsonPrintFormatter$JsonWriter;

    invoke-virtual {v0, p2}, Lcom/google/gson/JsonPrintFormatter$JsonWriter;->key(Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/google/gson/JsonPrintFormatter$PrintFormattingVisitor;->writer:Lcom/google/gson/JsonPrintFormatter$JsonWriter;

    invoke-virtual {v0}, Lcom/google/gson/JsonPrintFormatter$JsonWriter;->fieldSeparator()V

    .line 212
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
    .line 194
    invoke-direct {p0, p4}, Lcom/google/gson/JsonPrintFormatter$PrintFormattingVisitor;->addCommaCheckingFirst(Z)V

    .line 195
    iget-object v0, p0, Lcom/google/gson/JsonPrintFormatter$PrintFormattingVisitor;->writer:Lcom/google/gson/JsonPrintFormatter$JsonWriter;

    invoke-virtual {v0, p2}, Lcom/google/gson/JsonPrintFormatter$JsonWriter;->key(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/google/gson/JsonPrintFormatter$PrintFormattingVisitor;->writer:Lcom/google/gson/JsonPrintFormatter$JsonWriter;

    invoke-virtual {v0}, Lcom/google/gson/JsonPrintFormatter$JsonWriter;->fieldSeparator()V

    .line 197
    iget-object v0, p0, Lcom/google/gson/JsonPrintFormatter$PrintFormattingVisitor;->writer:Lcom/google/gson/JsonPrintFormatter$JsonWriter;

    invoke-direct {p0, p3}, Lcom/google/gson/JsonPrintFormatter$PrintFormattingVisitor;->escapeJsonPrimitive(Lcom/google/gson/JsonPrimitive;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonPrintFormatter$JsonWriter;->value(Ljava/lang/String;)V

    .line 198
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
    .line 226
    iget-object v0, p0, Lcom/google/gson/JsonPrintFormatter$PrintFormattingVisitor;->writer:Lcom/google/gson/JsonPrintFormatter$JsonWriter;

    invoke-direct {p0, p1}, Lcom/google/gson/JsonPrintFormatter$PrintFormattingVisitor;->escapeJsonPrimitive(Lcom/google/gson/JsonPrimitive;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonPrintFormatter$JsonWriter;->value(Ljava/lang/String;)V

    .line 227
    return-void
.end method
