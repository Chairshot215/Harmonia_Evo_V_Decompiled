.class public Lcom/htc/fusion/htcbookmarkwidget/Bookmark;
.super Ljava/lang/Object;
.source "Bookmark.java"

# interfaces
.implements Lcom/htc/fusion/htcbookmarkwidget/IBookmark;


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "HtcBookmarkWidget"


# instance fields
.field private mCreatedTime:J

.field private mFavicon:Landroid/graphics/Bitmap;

.field private mId:I

.field private mIsFolder:I

.field private mParent:I

.field private mTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;",
            ">;"
        }
    .end annotation
.end field

.field private mThumbnail:Landroid/graphics/Bitmap;

.field private mTitle:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "id"
    .parameter "title"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p0, p1}, Lcom/htc/fusion/htcbookmarkwidget/Bookmark;->setId(I)V

    .line 27
    invoke-virtual {p0, p2}, Lcom/htc/fusion/htcbookmarkwidget/Bookmark;->setTitle(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0, p3}, Lcom/htc/fusion/htcbookmarkwidget/Bookmark;->setUrl(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0, p4}, Lcom/htc/fusion/htcbookmarkwidget/Bookmark;->setFavicon(Landroid/graphics/Bitmap;)V

    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/fusion/htcbookmarkwidget/Bookmark;->mCreatedTime:J

    .line 31
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;J)V
    .locals 0
    .parameter "id"
    .parameter "title"
    .parameter "url"
    .parameter "favicon"
    .parameter "createtime"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/fusion/htcbookmarkwidget/Bookmark;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 35
    iput-wide p5, p0, Lcom/htc/fusion/htcbookmarkwidget/Bookmark;->mCreatedTime:J

    .line 36
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;JII)V
    .locals 0
    .parameter "id"
    .parameter "title"
    .parameter "url"
    .parameter "favicon"
    .parameter "createtime"
    .parameter "isfolder"
    .parameter "parent"

    .prologue
    .line 41
    invoke-direct/range {p0 .. p6}, Lcom/htc/fusion/htcbookmarkwidget/Bookmark;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;J)V

    .line 42
    iput p7, p0, Lcom/htc/fusion/htcbookmarkwidget/Bookmark;->mIsFolder:I

    .line 43
    iput p8, p0, Lcom/htc/fusion/htcbookmarkwidget/Bookmark;->mParent:I

    .line 45
    return-void
.end method


# virtual methods
.method public addTag(Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;)V
    .locals 3
    .parameter "tag"

    .prologue
    .line 101
    if-nez p1, :cond_0

    .line 102
    const-string v1, "HtcBookmarkWidget"

    const-string v2, "Null tag"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/Bookmark;->getTagsSet()Ljava/util/Set;

    move-result-object v0

    .line 107
    .local v0, tagSet:Ljava/util/Set;,"Ljava/util/Set<Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public containsTag(Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;)Z
    .locals 3
    .parameter "tag"

    .prologue
    .line 111
    if-nez p1, :cond_0

    .line 112
    const-string v1, "HtcBookmarkWidget"

    const-string v2, "Null tag"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 v1, 0x0

    .line 117
    :goto_0
    return v1

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/Bookmark;->getTagsSet()Ljava/util/Set;

    move-result-object v0

    .line 117
    .local v0, tagSet:Ljava/util/Set;,"Ljava/util/Set<Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public count()I
    .locals 2

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/Bookmark;->getTagsSet()Ljava/util/Set;

    move-result-object v0

    .line 122
    .local v0, tagSet:Ljava/util/Set;,"Ljava/util/Set<Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    return v1
.end method

.method public getCreatedTime()J
    .locals 2

    .prologue
    .line 148
    iget-wide v0, p0, Lcom/htc/fusion/htcbookmarkwidget/Bookmark;->mCreatedTime:J

    return-wide v0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/Bookmark;->mFavicon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getFolderInfo()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/htc/fusion/htcbookmarkwidget/Bookmark;->mIsFolder:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/htc/fusion/htcbookmarkwidget/Bookmark;->mId:I

    return v0
.end method

.method public getParent()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/htc/fusion/htcbookmarkwidget/Bookmark;->mParent:I

    return v0
.end method

.method public getTagsSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/Bookmark;->mTags:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/Bookmark;->mTags:Ljava/util/Set;

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/Bookmark;->mTags:Ljava/util/Set;

    return-object v0
.end method

.method public getThumbnailImage()Lcom/htc/fusion/htcbookmarkwidget/util/IImage;
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/Bookmark;->mThumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 89
    new-instance v0, Lcom/htc/fusion/htcbookmarkwidget/util/BitmapImage;

    iget-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/Bookmark;->mThumbnail:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Lcom/htc/fusion/htcbookmarkwidget/util/BitmapImage;-><init>(Landroid/graphics/Bitmap;)V

    .line 91
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/Bookmark;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/Bookmark;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public releaseFavicon()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/Bookmark;->mFavicon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/Bookmark;->mFavicon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/Bookmark;->mFavicon:Landroid/graphics/Bitmap;

    .line 85
    :cond_0
    return-void
.end method

.method public removeTag(Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;)Z
    .locals 2
    .parameter "tag"

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/Bookmark;->getTagsSet()Ljava/util/Set;

    move-result-object v0

    .line 132
    .local v0, tagSet:Ljava/util/Set;,"Ljava/util/Set<Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;>;"
    if-nez p1, :cond_0

    .line 133
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 134
    const/4 v1, 0x1

    .line 136
    :goto_0
    return v1

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public setFavicon(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "favicon"

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/Bookmark;->releaseFavicon()V

    .line 77
    iput-object p1, p0, Lcom/htc/fusion/htcbookmarkwidget/Bookmark;->mFavicon:Landroid/graphics/Bitmap;

    .line 78
    return-void
.end method

.method public setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 52
    iput p1, p0, Lcom/htc/fusion/htcbookmarkwidget/Bookmark;->mId:I

    .line 53
    return-void
.end method

.method public setThumbnail(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "thumbnail"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/htc/fusion/htcbookmarkwidget/Bookmark;->mThumbnail:Landroid/graphics/Bitmap;

    .line 96
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/htc/fusion/htcbookmarkwidget/Bookmark;->mTitle:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/htc/fusion/htcbookmarkwidget/Bookmark;->mUrl:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public toTagsArray([Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;)[Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;
    .locals 2
    .parameter "array"

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/Bookmark;->getTagsSet()Ljava/util/Set;

    move-result-object v0

    .line 127
    .local v0, tagSet:Ljava/util/Set;,"Ljava/util/Set<Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;

    return-object v1
.end method
