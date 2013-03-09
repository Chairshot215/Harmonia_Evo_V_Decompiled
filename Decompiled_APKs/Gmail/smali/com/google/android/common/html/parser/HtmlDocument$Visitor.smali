.class public interface abstract Lcom/google/android/common/html/parser/HtmlDocument$Visitor;
.super Ljava/lang/Object;
.source "HtmlDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/common/html/parser/HtmlDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Visitor"
.end annotation


# virtual methods
.method public abstract finish()V
.end method

.method public abstract start()V
.end method

.method public abstract visitComment(Lcom/google/android/common/html/parser/HtmlDocument$Comment;)V
.end method

.method public abstract visitEndTag(Lcom/google/android/common/html/parser/HtmlDocument$EndTag;)V
.end method

.method public abstract visitTag(Lcom/google/android/common/html/parser/HtmlDocument$Tag;)V
.end method

.method public abstract visitText(Lcom/google/android/common/html/parser/HtmlDocument$Text;)V
.end method
