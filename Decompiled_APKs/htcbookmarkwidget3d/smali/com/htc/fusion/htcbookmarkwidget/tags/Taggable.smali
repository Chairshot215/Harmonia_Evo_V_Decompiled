.class public interface abstract Lcom/htc/fusion/htcbookmarkwidget/tags/Taggable;
.super Ljava/lang/Object;
.source "Taggable.java"


# virtual methods
.method public abstract addTag(Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;)V
.end method

.method public abstract containsTag(Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;)Z
.end method

.method public abstract count()I
.end method

.method public abstract getTagsSet()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeTag(Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;)Z
.end method

.method public abstract toTagsArray([Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;)[Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;
.end method
