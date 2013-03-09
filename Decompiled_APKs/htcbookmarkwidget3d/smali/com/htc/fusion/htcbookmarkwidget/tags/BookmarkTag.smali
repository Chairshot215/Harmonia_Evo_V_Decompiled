.class public Lcom/htc/fusion/htcbookmarkwidget/tags/BookmarkTag;
.super Ljava/lang/Object;
.source "BookmarkTag.java"

# interfaces
.implements Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "HtcBookmarkWidget"


# instance fields
.field public MAX_TAGNAME_LEN:I

.field private mTagName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "tagName"

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/16 v0, 0x80

    iput v0, p0, Lcom/htc/fusion/htcbookmarkwidget/tags/BookmarkTag;->MAX_TAGNAME_LEN:I

    .line 15
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 16
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/htc/fusion/htcbookmarkwidget/tags/BookmarkTag;->MAX_TAGNAME_LEN:I

    if-le v0, v1, :cond_0

    .line 17
    const/4 v0, 0x0

    iget v1, p0, Lcom/htc/fusion/htcbookmarkwidget/tags/BookmarkTag;->MAX_TAGNAME_LEN:I

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/tags/BookmarkTag;->mTagName:Ljava/lang/String;

    .line 24
    :goto_0
    return-void

    .line 19
    :cond_0
    iput-object p1, p0, Lcom/htc/fusion/htcbookmarkwidget/tags/BookmarkTag;->mTagName:Ljava/lang/String;

    goto :goto_0

    .line 22
    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/tags/BookmarkTag;->mTagName:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "object"

    .prologue
    .line 31
    instance-of v1, p1, Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;

    if-nez v1, :cond_0

    .line 32
    const/4 v1, 0x0

    .line 35
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 34
    check-cast v0, Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;

    .line 35
    .local v0, tag:Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;
    iget-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/tags/BookmarkTag;->mTagName:Ljava/lang/String;

    invoke-interface {v0}, Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/tags/BookmarkTag;->mTagName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/tags/BookmarkTag;->mTagName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/tags/BookmarkTag;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
