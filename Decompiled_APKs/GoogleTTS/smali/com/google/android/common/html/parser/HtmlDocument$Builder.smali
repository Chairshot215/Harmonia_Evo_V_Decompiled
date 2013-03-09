.class public Lcom/google/android/common/html/parser/HtmlDocument$Builder;
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
    name = "Builder"
.end annotation


# instance fields
.field private doc:Lcom/google/android/common/html/parser/HtmlDocument;

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

.field private final preserveComments:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1160
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/common/html/parser/HtmlDocument$Builder;-><init>(Z)V

    .line 1161
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .parameter "preserveComments"

    .prologue
    .line 1166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/common/html/parser/HtmlDocument$Builder;->nodes:Ljava/util/List;

    .line 1167
    iput-boolean p1, p0, Lcom/google/android/common/html/parser/HtmlDocument$Builder;->preserveComments:Z

    .line 1168
    return-void
.end method


# virtual methods
.method public addNode(Lcom/google/android/common/html/parser/HtmlDocument$Node;)V
    .locals 1
    .parameter "node"

    .prologue
    .line 1171
    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlDocument$Builder;->nodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1172
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 1190
    new-instance v0, Lcom/google/android/common/html/parser/HtmlDocument;

    iget-object v1, p0, Lcom/google/android/common/html/parser/HtmlDocument$Builder;->nodes:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/google/android/common/html/parser/HtmlDocument;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/android/common/html/parser/HtmlDocument$Builder;->doc:Lcom/google/android/common/html/parser/HtmlDocument;

    .line 1191
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 1174
    return-void
.end method

.method public visitComment(Lcom/google/android/common/html/parser/HtmlDocument$Comment;)V
    .locals 1
    .parameter "n"

    .prologue
    .line 1182
    iget-boolean v0, p0, Lcom/google/android/common/html/parser/HtmlDocument$Builder;->preserveComments:Z

    if-eqz v0, :cond_0

    .line 1183
    invoke-virtual {p0, p1}, Lcom/google/android/common/html/parser/HtmlDocument$Builder;->addNode(Lcom/google/android/common/html/parser/HtmlDocument$Node;)V

    .line 1185
    :cond_0
    return-void
.end method

.method public visitEndTag(Lcom/google/android/common/html/parser/HtmlDocument$EndTag;)V
    .locals 0
    .parameter "t"

    .prologue
    .line 1187
    invoke-virtual {p0, p1}, Lcom/google/android/common/html/parser/HtmlDocument$Builder;->addNode(Lcom/google/android/common/html/parser/HtmlDocument$Node;)V

    .line 1188
    return-void
.end method

.method public visitTag(Lcom/google/android/common/html/parser/HtmlDocument$Tag;)V
    .locals 0
    .parameter "t"

    .prologue
    .line 1179
    invoke-virtual {p0, p1}, Lcom/google/android/common/html/parser/HtmlDocument$Builder;->addNode(Lcom/google/android/common/html/parser/HtmlDocument$Node;)V

    .line 1180
    return-void
.end method

.method public visitText(Lcom/google/android/common/html/parser/HtmlDocument$Text;)V
    .locals 0
    .parameter "t"

    .prologue
    .line 1176
    invoke-virtual {p0, p1}, Lcom/google/android/common/html/parser/HtmlDocument$Builder;->addNode(Lcom/google/android/common/html/parser/HtmlDocument$Node;)V

    .line 1177
    return-void
.end method
