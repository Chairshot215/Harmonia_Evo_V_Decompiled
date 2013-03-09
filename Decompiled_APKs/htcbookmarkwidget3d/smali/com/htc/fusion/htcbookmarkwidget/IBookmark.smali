.class public interface abstract Lcom/htc/fusion/htcbookmarkwidget/IBookmark;
.super Ljava/lang/Object;
.source "IBookmark.java"

# interfaces
.implements Lcom/htc/fusion/htcbookmarkwidget/tags/Taggable;


# virtual methods
.method public abstract getCreatedTime()J
.end method

.method public abstract getFavicon()Landroid/graphics/Bitmap;
.end method

.method public abstract getFolderInfo()I
.end method

.method public abstract getId()I
.end method

.method public abstract getParent()I
.end method

.method public abstract getThumbnailImage()Lcom/htc/fusion/htcbookmarkwidget/util/IImage;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public abstract releaseFavicon()V
.end method

.method public abstract setFavicon(Landroid/graphics/Bitmap;)V
.end method

.method public abstract setId(I)V
.end method

.method public abstract setThumbnail(Landroid/graphics/Bitmap;)V
.end method

.method public abstract setTitle(Ljava/lang/String;)V
.end method

.method public abstract setUrl(Ljava/lang/String;)V
.end method
