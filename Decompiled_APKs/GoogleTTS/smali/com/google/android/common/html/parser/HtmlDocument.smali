.class public Lcom/google/android/common/html/parser/HtmlDocument;
.super Ljava/lang/Object;
.source "HtmlDocument.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/common/html/parser/HtmlDocument$1;,
        Lcom/google/android/common/html/parser/HtmlDocument$DebugPrinter;,
        Lcom/google/android/common/html/parser/HtmlDocument$Builder;,
        Lcom/google/android/common/html/parser/HtmlDocument$VisitorWrapper;,
        Lcom/google/android/common/html/parser/HtmlDocument$Visitor;,
        Lcom/google/android/common/html/parser/HtmlDocument$MultiplexFilterChain;,
        Lcom/google/android/common/html/parser/HtmlDocument$SimpleMultiplexFilter;,
        Lcom/google/android/common/html/parser/HtmlDocument$MultiplexFilterAdapter;,
        Lcom/google/android/common/html/parser/HtmlDocument$MultiplexFilter;,
        Lcom/google/android/common/html/parser/HtmlDocument$Filter;,
        Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;,
        Lcom/google/android/common/html/parser/HtmlDocument$EndTag;,
        Lcom/google/android/common/html/parser/HtmlDocument$Tag;,
        Lcom/google/android/common/html/parser/HtmlDocument$CDATA;,
        Lcom/google/android/common/html/parser/HtmlDocument$EscapedText;,
        Lcom/google/android/common/html/parser/HtmlDocument$UnescapedText;,
        Lcom/google/android/common/html/parser/HtmlDocument$Text;,
        Lcom/google/android/common/html/parser/HtmlDocument$Comment;,
        Lcom/google/android/common/html/parser/HtmlDocument$Node;
    }
.end annotation


# instance fields
.field private final nodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/common/html/parser/HtmlDocument$Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/common/html/parser/HtmlDocument$Node;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, nodes:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/common/html/parser/HtmlDocument$Node;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/android/common/html/parser/HtmlDocument;->nodes:Ljava/util/List;

    .line 36
    return-void
.end method

.method public static createEndTag(Lcom/google/android/common/html/parser/HTML$Element;)Lcom/google/android/common/html/parser/HtmlDocument$EndTag;
    .locals 1
    .parameter "element"

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/common/html/parser/HtmlDocument;->createEndTag(Lcom/google/android/common/html/parser/HTML$Element;Ljava/lang/String;)Lcom/google/android/common/html/parser/HtmlDocument$EndTag;

    move-result-object v0

    return-object v0
.end method

.method public static createEndTag(Lcom/google/android/common/html/parser/HTML$Element;Ljava/lang/String;)Lcom/google/android/common/html/parser/HtmlDocument$EndTag;
    .locals 2
    .parameter "element"
    .parameter "originalHtml"

    .prologue
    .line 132
    new-instance v0, Lcom/google/android/common/html/parser/HtmlDocument$EndTag;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/common/html/parser/HtmlDocument$EndTag;-><init>(Lcom/google/android/common/html/parser/HTML$Element;Ljava/lang/String;Lcom/google/android/common/html/parser/HtmlDocument$1;)V

    return-object v0
.end method

.method public static createTag(Lcom/google/android/common/html/parser/HTML$Element;Ljava/util/List;)Lcom/google/android/common/html/parser/HtmlDocument$Tag;
    .locals 1
    .parameter "element"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/common/html/parser/HTML$Element;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;",
            ">;)",
            "Lcom/google/android/common/html/parser/HtmlDocument$Tag;"
        }
    .end annotation

    .prologue
    .local p1, attributes:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;>;"
    const/4 v0, 0x0

    .line 87
    invoke-static {p0, p1, v0, v0}, Lcom/google/android/common/html/parser/HtmlDocument;->createTag(Lcom/google/android/common/html/parser/HTML$Element;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/common/html/parser/HtmlDocument$Tag;

    move-result-object v0

    return-object v0
.end method

.method public static createTag(Lcom/google/android/common/html/parser/HTML$Element;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/common/html/parser/HtmlDocument$Tag;
    .locals 7
    .parameter "element"
    .parameter
    .parameter "originalHtmlBeforeAttributes"
    .parameter "originalHtmlAfterAttributes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/common/html/parser/HTML$Element;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/common/html/parser/HtmlDocument$Tag;"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, attributes:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;>;"
    new-instance v0, Lcom/google/android/common/html/parser/HtmlDocument$Tag;

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/common/html/parser/HtmlDocument$Tag;-><init>(Lcom/google/android/common/html/parser/HTML$Element;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Lcom/google/android/common/html/parser/HtmlDocument$1;)V

    return-object v0
.end method


# virtual methods
.method public accept(Lcom/google/android/common/html/parser/HtmlDocument$Visitor;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 192
    invoke-interface {p1}, Lcom/google/android/common/html/parser/HtmlDocument$Visitor;->start()V

    .line 193
    iget-object v2, p0, Lcom/google/android/common/html/parser/HtmlDocument;->nodes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/common/html/parser/HtmlDocument$Node;

    .line 194
    .local v1, node:Lcom/google/android/common/html/parser/HtmlDocument$Node;
    invoke-virtual {v1, p1}, Lcom/google/android/common/html/parser/HtmlDocument$Node;->accept(Lcom/google/android/common/html/parser/HtmlDocument$Visitor;)V

    goto :goto_0

    .line 196
    .end local v1           #node:Lcom/google/android/common/html/parser/HtmlDocument$Node;
    :cond_0
    invoke-interface {p1}, Lcom/google/android/common/html/parser/HtmlDocument$Visitor;->finish()V

    .line 197
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 77
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 78
    .local v0, strWriter:Ljava/io/StringWriter;
    new-instance v1, Lcom/google/android/common/html/parser/HtmlDocument$DebugPrinter;

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {v1, v2}, Lcom/google/android/common/html/parser/HtmlDocument$DebugPrinter;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {p0, v1}, Lcom/google/android/common/html/parser/HtmlDocument;->accept(Lcom/google/android/common/html/parser/HtmlDocument$Visitor;)V

    .line 79
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
