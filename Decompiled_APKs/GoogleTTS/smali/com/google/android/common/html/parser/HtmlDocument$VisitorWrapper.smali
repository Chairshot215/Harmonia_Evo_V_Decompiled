.class public Lcom/google/android/common/html/parser/HtmlDocument$VisitorWrapper;
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
    name = "VisitorWrapper"
.end annotation


# instance fields
.field private final wrapped:Lcom/google/android/common/html/parser/HtmlDocument$Visitor;


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 1144
    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlDocument$VisitorWrapper;->wrapped:Lcom/google/android/common/html/parser/HtmlDocument$Visitor;

    invoke-interface {v0}, Lcom/google/android/common/html/parser/HtmlDocument$Visitor;->finish()V

    .line 1145
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlDocument$VisitorWrapper;->wrapped:Lcom/google/android/common/html/parser/HtmlDocument$Visitor;

    invoke-interface {v0}, Lcom/google/android/common/html/parser/HtmlDocument$Visitor;->start()V

    .line 1125
    return-void
.end method

.method public visitComment(Lcom/google/android/common/html/parser/HtmlDocument$Comment;)V
    .locals 1
    .parameter "n"

    .prologue
    .line 1140
    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlDocument$VisitorWrapper;->wrapped:Lcom/google/android/common/html/parser/HtmlDocument$Visitor;

    invoke-interface {v0, p1}, Lcom/google/android/common/html/parser/HtmlDocument$Visitor;->visitComment(Lcom/google/android/common/html/parser/HtmlDocument$Comment;)V

    .line 1141
    return-void
.end method

.method public visitEndTag(Lcom/google/android/common/html/parser/HtmlDocument$EndTag;)V
    .locals 1
    .parameter "n"

    .prologue
    .line 1136
    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlDocument$VisitorWrapper;->wrapped:Lcom/google/android/common/html/parser/HtmlDocument$Visitor;

    invoke-interface {v0, p1}, Lcom/google/android/common/html/parser/HtmlDocument$Visitor;->visitEndTag(Lcom/google/android/common/html/parser/HtmlDocument$EndTag;)V

    .line 1137
    return-void
.end method

.method public visitTag(Lcom/google/android/common/html/parser/HtmlDocument$Tag;)V
    .locals 1
    .parameter "n"

    .prologue
    .line 1132
    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlDocument$VisitorWrapper;->wrapped:Lcom/google/android/common/html/parser/HtmlDocument$Visitor;

    invoke-interface {v0, p1}, Lcom/google/android/common/html/parser/HtmlDocument$Visitor;->visitTag(Lcom/google/android/common/html/parser/HtmlDocument$Tag;)V

    .line 1133
    return-void
.end method

.method public visitText(Lcom/google/android/common/html/parser/HtmlDocument$Text;)V
    .locals 1
    .parameter "n"

    .prologue
    .line 1128
    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlDocument$VisitorWrapper;->wrapped:Lcom/google/android/common/html/parser/HtmlDocument$Visitor;

    invoke-interface {v0, p1}, Lcom/google/android/common/html/parser/HtmlDocument$Visitor;->visitText(Lcom/google/android/common/html/parser/HtmlDocument$Text;)V

    .line 1129
    return-void
.end method
