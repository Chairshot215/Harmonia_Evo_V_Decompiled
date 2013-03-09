.class public Lcom/google/android/common/html/parser/HtmlDocument$DebugPrinter;
.super Ljava/lang/Object;
.source "HtmlDocument.java"

# interfaces
.implements Lcom/google/android/common/html/parser/HtmlDocument$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/common/html/parser/HtmlDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DebugPrinter"
.end annotation


# instance fields
.field private final writer:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>(Ljava/io/PrintWriter;)V
    .locals 0
    .parameter "writer"

    .prologue
    .line 1206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1207
    iput-object p1, p0, Lcom/google/android/common/html/parser/HtmlDocument$DebugPrinter;->writer:Ljava/io/PrintWriter;

    .line 1208
    return-void
.end method

.method private writeCollapsed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "type"
    .parameter "s"

    .prologue
    .line 1222
    iget-object v2, p0, Lcom/google/android/common/html/parser/HtmlDocument$DebugPrinter;->writer:Ljava/io/PrintWriter;

    invoke-virtual {v2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1223
    iget-object v2, p0, Lcom/google/android/common/html/parser/HtmlDocument$DebugPrinter;->writer:Ljava/io/PrintWriter;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1224
    const-string v2, "\n"

    const-string v3, " "

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1226
    .local v1, noNewlines:Ljava/lang/String;
    sget-object v2, Lcom/google/android/common/base/CharMatcher;->LEGACY_WHITESPACE:Lcom/google/android/common/base/CharMatcher;

    const/16 v3, 0x20

    invoke-virtual {v2, v1, v3}, Lcom/google/android/common/base/CharMatcher;->trimAndCollapseFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;

    move-result-object v0

    .line 1227
    .local v0, collapsed:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/common/html/parser/HtmlDocument$DebugPrinter;->writer:Ljava/io/PrintWriter;

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1228
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 1256
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 1211
    return-void
.end method

.method public visitComment(Lcom/google/android/common/html/parser/HtmlDocument$Comment;)V
    .locals 2
    .parameter "n"

    .prologue
    .line 1218
    const-string v0, "COMMENT"

    invoke-virtual {p1}, Lcom/google/android/common/html/parser/HtmlDocument$Comment;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/common/html/parser/HtmlDocument$DebugPrinter;->writeCollapsed(Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    return-void
.end method

.method public visitEndTag(Lcom/google/android/common/html/parser/HtmlDocument$EndTag;)V
    .locals 3
    .parameter "endtag"

    .prologue
    .line 1252
    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlDocument$DebugPrinter;->writer:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==</"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/common/html/parser/HtmlDocument$EndTag;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1253
    return-void
.end method

.method public visitTag(Lcom/google/android/common/html/parser/HtmlDocument$Tag;)V
    .locals 9
    .parameter "tag"

    .prologue
    .line 1231
    iget-object v6, p0, Lcom/google/android/common/html/parser/HtmlDocument$DebugPrinter;->writer:Ljava/io/PrintWriter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "==<"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/google/android/common/html/parser/HtmlDocument$Tag;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1232
    invoke-virtual {p1}, Lcom/google/android/common/html/parser/HtmlDocument$Tag;->getAttributes()Ljava/util/List;

    move-result-object v2

    .line 1233
    .local v2, attributes:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;>;"
    if-eqz v2, :cond_1

    .line 1236
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1237
    .local v3, attrs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;

    .line 1238
    .local v0, a:Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1240
    .end local v0           #a:Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v3, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 1243
    .local v1, array:[Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 1244
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v6, v1

    if-ge v4, v6, :cond_1

    .line 1245
    iget-object v6, p0, Lcom/google/android/common/html/parser/HtmlDocument$DebugPrinter;->writer:Ljava/io/PrintWriter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v1, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1244
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1248
    .end local v1           #array:[Ljava/lang/String;
    .end local v3           #attrs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v4           #i:I
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v6, p0, Lcom/google/android/common/html/parser/HtmlDocument$DebugPrinter;->writer:Ljava/io/PrintWriter;

    invoke-virtual {v6}, Ljava/io/PrintWriter;->println()V

    .line 1249
    return-void
.end method

.method public visitText(Lcom/google/android/common/html/parser/HtmlDocument$Text;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 1214
    const-string v0, "TEXT"

    invoke-virtual {p1}, Lcom/google/android/common/html/parser/HtmlDocument$Text;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/common/html/parser/HtmlDocument$DebugPrinter;->writeCollapsed(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    return-void
.end method
