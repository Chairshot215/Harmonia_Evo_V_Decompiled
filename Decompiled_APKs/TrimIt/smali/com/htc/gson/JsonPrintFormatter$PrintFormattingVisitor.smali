.class Lcom/htc/gson/JsonPrintFormatter$PrintFormattingVisitor;
.super Ljava/lang/Object;
.source "JsonPrintFormatter.java"

# interfaces
.implements Lcom/htc/gson/JsonElementVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/gson/JsonPrintFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrintFormattingVisitor"
.end annotation


# instance fields
.field private final escaper:Lcom/htc/gson/Escaper;

.field private final serializeNulls:Z

.field final synthetic this$0:Lcom/htc/gson/JsonPrintFormatter;

.field private final writer:Lcom/htc/gson/JsonPrintFormatter$JsonWriter;


# direct methods
.method constructor <init>(Lcom/htc/gson/JsonPrintFormatter;Lcom/htc/gson/JsonPrintFormatter$JsonWriter;Lcom/htc/gson/Escaper;Z)V
    .locals 0
    .parameter
    .parameter "writer"
    .parameter "escaper"
    .parameter "serializeNulls"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/htc/gson/JsonPrintFormatter$PrintFormattingVisitor;->this$0:Lcom/htc/gson/JsonPrintFormatter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p2, p0, Lcom/htc/gson/JsonPrintFormatter$PrintFormattingVisitor;->writer:Lcom/htc/gson/JsonPrintFormatter$JsonWriter;

    .line 152
    iput-object p3, p0, Lcom/htc/gson/JsonPrintFormatter$PrintFormattingVisitor;->escaper:Lcom/htc/gson/Escaper;

    .line 153
    iput-boolean p4, p0, Lcom/htc/gson/JsonPrintFormatter$PrintFormattingVisitor;->serializeNulls:Z

    .line 154
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
    .line 157
    if-nez p1, :cond_0

    .line 158
    iget-object v0, p0, Lcom/htc/gson/JsonPrintFormatter$PrintFormattingVisitor;->writer:Lcom/htc/gson/JsonPrintFormatter$JsonWriter;

    invoke-virtual {v0}, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->elementSeparator()V

    .line 160
    :cond_0
    return-void
.end method

.method private escapeJsonPrimitive(Lcom/htc/gson/JsonPrimitive;)Ljava/lang/String;
    .locals 2
    .parameter "member"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    .local v0, builder:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/htc/gson/JsonPrintFormatter$PrintFormattingVisitor;->escaper:Lcom/htc/gson/Escaper;

    invoke-virtual {p1, v0, v1}, Lcom/htc/gson/JsonPrimitive;->toString(Ljava/lang/Appendable;Lcom/htc/gson/Escaper;)V

    .line 238
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public endArray(Lcom/htc/gson/JsonArray;)V
    .locals 1
    .parameter "array"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/htc/gson/JsonPrintFormatter$PrintFormattingVisitor;->writer:Lcom/htc/gson/JsonPrintFormatter$JsonWriter;

    invoke-virtual {v0}, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->endArray()V

    .line 188
    return-void
.end method

.method public endObject(Lcom/htc/gson/JsonObject;)V
    .locals 1
    .parameter "object"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/htc/gson/JsonPrintFormatter$PrintFormattingVisitor;->writer:Lcom/htc/gson/JsonPrintFormatter$JsonWriter;

    invoke-virtual {v0}, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->endObject()V

    .line 225
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
    .line 163
    iget-object v0, p0, Lcom/htc/gson/JsonPrintFormatter$PrintFormattingVisitor;->writer:Lcom/htc/gson/JsonPrintFormatter$JsonWriter;

    invoke-virtual {v0}, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->beginArray()V

    .line 164
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
    .line 191
    iget-object v0, p0, Lcom/htc/gson/JsonPrintFormatter$PrintFormattingVisitor;->writer:Lcom/htc/gson/JsonPrintFormatter$JsonWriter;

    invoke-virtual {v0}, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->beginObject()V

    .line 192
    return-void
.end method

.method public visitArrayMember(Lcom/htc/gson/JsonArray;Lcom/htc/gson/JsonArray;Z)V
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
    .line 174
    invoke-direct {p0, p3}, Lcom/htc/gson/JsonPrintFormatter$PrintFormattingVisitor;->addCommaCheckingFirst(Z)V

    .line 175
    return-void
.end method

.method public visitArrayMember(Lcom/htc/gson/JsonArray;Lcom/htc/gson/JsonObject;Z)V
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
    .line 179
    invoke-direct {p0, p3}, Lcom/htc/gson/JsonPrintFormatter$PrintFormattingVisitor;->addCommaCheckingFirst(Z)V

    .line 180
    return-void
.end method

.method public visitArrayMember(Lcom/htc/gson/JsonArray;Lcom/htc/gson/JsonPrimitive;Z)V
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
    .line 168
    invoke-direct {p0, p3}, Lcom/htc/gson/JsonPrintFormatter$PrintFormattingVisitor;->addCommaCheckingFirst(Z)V

    .line 169
    iget-object v0, p0, Lcom/htc/gson/JsonPrintFormatter$PrintFormattingVisitor;->writer:Lcom/htc/gson/JsonPrintFormatter$JsonWriter;

    invoke-direct {p0, p2}, Lcom/htc/gson/JsonPrintFormatter$PrintFormattingVisitor;->escapeJsonPrimitive(Lcom/htc/gson/JsonPrimitive;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->value(Ljava/lang/String;)V

    .line 170
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
    .line 232
    iget-object v0, p0, Lcom/htc/gson/JsonPrintFormatter$PrintFormattingVisitor;->writer:Lcom/htc/gson/JsonPrintFormatter$JsonWriter;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->value(Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method public visitNullArrayMember(Lcom/htc/gson/JsonArray;Z)V
    .locals 0
    .parameter "parent"
    .parameter "isFirst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    invoke-direct {p0, p2}, Lcom/htc/gson/JsonPrintFormatter$PrintFormattingVisitor;->addCommaCheckingFirst(Z)V

    .line 184
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
    .line 218
    iget-boolean v0, p0, Lcom/htc/gson/JsonPrintFormatter$PrintFormattingVisitor;->serializeNulls:Z

    if-eqz v0, :cond_0

    .line 219
    const/4 v0, 0x0

    check-cast v0, Lcom/htc/gson/JsonObject;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/htc/gson/JsonPrintFormatter$PrintFormattingVisitor;->visitObjectMember(Lcom/htc/gson/JsonObject;Ljava/lang/String;Lcom/htc/gson/JsonObject;Z)V

    .line 221
    :cond_0
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
    .line 204
    invoke-direct {p0, p4}, Lcom/htc/gson/JsonPrintFormatter$PrintFormattingVisitor;->addCommaCheckingFirst(Z)V

    .line 205
    iget-object v0, p0, Lcom/htc/gson/JsonPrintFormatter$PrintFormattingVisitor;->writer:Lcom/htc/gson/JsonPrintFormatter$JsonWriter;

    invoke-virtual {v0, p2}, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->key(Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/htc/gson/JsonPrintFormatter$PrintFormattingVisitor;->writer:Lcom/htc/gson/JsonPrintFormatter$JsonWriter;

    invoke-virtual {v0}, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->fieldSeparator()V

    .line 207
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
    .line 211
    invoke-direct {p0, p4}, Lcom/htc/gson/JsonPrintFormatter$PrintFormattingVisitor;->addCommaCheckingFirst(Z)V

    .line 212
    iget-object v0, p0, Lcom/htc/gson/JsonPrintFormatter$PrintFormattingVisitor;->writer:Lcom/htc/gson/JsonPrintFormatter$JsonWriter;

    invoke-virtual {v0, p2}, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->key(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/htc/gson/JsonPrintFormatter$PrintFormattingVisitor;->writer:Lcom/htc/gson/JsonPrintFormatter$JsonWriter;

    invoke-virtual {v0}, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->fieldSeparator()V

    .line 214
    return-void
.end method

.method public visitObjectMember(Lcom/htc/gson/JsonObject;Ljava/lang/String;Lcom/htc/gson/JsonPrimitive;Z)V
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
    .line 196
    invoke-direct {p0, p4}, Lcom/htc/gson/JsonPrintFormatter$PrintFormattingVisitor;->addCommaCheckingFirst(Z)V

    .line 197
    iget-object v0, p0, Lcom/htc/gson/JsonPrintFormatter$PrintFormattingVisitor;->writer:Lcom/htc/gson/JsonPrintFormatter$JsonWriter;

    invoke-virtual {v0, p2}, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->key(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/htc/gson/JsonPrintFormatter$PrintFormattingVisitor;->writer:Lcom/htc/gson/JsonPrintFormatter$JsonWriter;

    invoke-virtual {v0}, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->fieldSeparator()V

    .line 199
    iget-object v0, p0, Lcom/htc/gson/JsonPrintFormatter$PrintFormattingVisitor;->writer:Lcom/htc/gson/JsonPrintFormatter$JsonWriter;

    invoke-direct {p0, p3}, Lcom/htc/gson/JsonPrintFormatter$PrintFormattingVisitor;->escapeJsonPrimitive(Lcom/htc/gson/JsonPrimitive;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->value(Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method public visitPrimitive(Lcom/htc/gson/JsonPrimitive;)V
    .locals 2
    .parameter "primitive"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Lcom/htc/gson/JsonPrintFormatter$PrintFormattingVisitor;->writer:Lcom/htc/gson/JsonPrintFormatter$JsonWriter;

    invoke-direct {p0, p1}, Lcom/htc/gson/JsonPrintFormatter$PrintFormattingVisitor;->escapeJsonPrimitive(Lcom/htc/gson/JsonPrimitive;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->value(Ljava/lang/String;)V

    .line 229
    return-void
.end method
