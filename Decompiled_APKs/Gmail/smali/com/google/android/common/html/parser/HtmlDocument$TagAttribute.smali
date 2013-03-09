.class public Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;
.super Ljava/lang/Object;
.source "HtmlDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/common/html/parser/HtmlDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TagAttribute"
.end annotation


# instance fields
.field private final attribute:Lcom/google/android/common/html/parser/HTML$Attribute;

.field private originalHtml:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/common/html/parser/HTML$Attribute;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "attribute"
    .parameter "value"
    .parameter "originalHtml"

    .prologue
    .line 764
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 765
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/common/base/X;->assertTrue(Z)V

    .line 766
    iput-object p1, p0, Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;->attribute:Lcom/google/android/common/html/parser/HTML$Attribute;

    .line 767
    iput-object p2, p0, Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;->value:Ljava/lang/String;

    .line 768
    iput-object p3, p0, Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;->originalHtml:Ljava/lang/String;

    .line 769
    return-void

    .line 765
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/google/android/common/html/parser/HTML$Attribute;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/common/html/parser/HtmlDocument$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 751
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;-><init>(Lcom/google/android/common/html/parser/HTML$Attribute;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAttribute()Lcom/google/android/common/html/parser/HTML$Attribute;
    .locals 1

    .prologue
    .line 778
    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;->attribute:Lcom/google/android/common/html/parser/HTML$Attribute;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;->attribute:Lcom/google/android/common/html/parser/HTML$Attribute;

    invoke-virtual {v0}, Lcom/google/android/common/html/parser/HTML$Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 795
    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;->value:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;->value:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 873
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;->attribute:Lcom/google/android/common/html/parser/HTML$Attribute;

    invoke-virtual {v1}, Lcom/google/android/common/html/parser/HTML$Attribute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/common/html/parser/HtmlDocument$TagAttribute;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
