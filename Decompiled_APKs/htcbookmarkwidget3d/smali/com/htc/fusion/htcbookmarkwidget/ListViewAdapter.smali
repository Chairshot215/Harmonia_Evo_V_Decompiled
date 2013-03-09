.class public Lcom/htc/fusion/htcbookmarkwidget/ListViewAdapter;
.super Lcom/htc/fusion/htcbookmarkwidget/BookmarkAdapter;
.source "ListViewAdapter.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "HtcBookmarkWidget"


# instance fields
.field private mAddBookmarkTag:Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/android/rosie/widget/Widget$Host;Ljava/util/List;)V
    .locals 2
    .parameter "context"
    .parameter "widgetHost"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/htc/android/rosie/widget/Widget$Host;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/fusion/htcbookmarkwidget/IBookmark;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p3, arraylist:Ljava/util/List;,"Ljava/util/List<Lcom/htc/fusion/htcbookmarkwidget/IBookmark;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/fusion/htcbookmarkwidget/BookmarkAdapter;-><init>(Landroid/content/Context;Lcom/htc/android/rosie/widget/Widget$Host;Ljava/util/List;)V

    .line 25
    new-instance v0, Lcom/htc/fusion/htcbookmarkwidget/tags/BookmarkTag;

    const-string v1, "tag_name_of_add_bookmark_item"

    invoke-direct {v0, v1}, Lcom/htc/fusion/htcbookmarkwidget/tags/BookmarkTag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/ListViewAdapter;->mAddBookmarkTag:Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;

    .line 26
    return-void
.end method


# virtual methods
.method protected setFxListItemData(ILcom/htc/fusion/fx/controls/FxListItem;)V
    .locals 8
    .parameter "position"
    .parameter "item"

    .prologue
    .line 29
    const-string v5, "dynamicimage.internet_icon"

    invoke-virtual {p2, v5}, Lcom/htc/fusion/fx/controls/FxListItem;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v4

    check-cast v4, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 31
    .local v4, faviconImage:Lcom/htc/fusion/fx/controls/FxDynamicImage;
    const/4 v1, 0x0

    .line 33
    .local v1, bookmark:Lcom/htc/fusion/htcbookmarkwidget/IBookmark;
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/htc/fusion/htcbookmarkwidget/ListViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/htc/fusion/htcbookmarkwidget/IBookmark;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    iget-object v5, p0, Lcom/htc/fusion/htcbookmarkwidget/ListViewAdapter;->mAddBookmarkTag:Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;

    invoke-interface {v1, v5}, Lcom/htc/fusion/htcbookmarkwidget/IBookmark;->containsTag(Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/ListViewAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x208013b

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/Bitmap;)V

    .line 57
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v2

    .line 35
    .local v2, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v5, "HtcBookmarkWidget"

    const-string v6, "IndexOutOfBounds"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 44
    .end local v2           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_0
    invoke-interface {v1}, Lcom/htc/fusion/htcbookmarkwidget/IBookmark;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 46
    .local v3, favicon:Landroid/graphics/Bitmap;
    if-eqz v3, :cond_3

    .line 47
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->getSize()Landroid/graphics/PointF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/PointF;->x:F

    float-to-int v6, v6

    if-ne v5, v6, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->getSize()Landroid/graphics/PointF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/PointF;->y:F

    float-to-int v6, v6

    if-eq v5, v6, :cond_2

    .line 48
    :cond_1
    invoke-virtual {v4}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->getSize()Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->x:F

    float-to-int v5, v5

    invoke-virtual {v4}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->getSize()Landroid/graphics/PointF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/PointF;->y:F

    float-to-int v6, v6

    const/4 v7, 0x0

    invoke-static {v3, v5, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 49
    invoke-interface {v1, v3}, Lcom/htc/fusion/htcbookmarkwidget/IBookmark;->setFavicon(Landroid/graphics/Bitmap;)V

    .line 51
    :cond_2
    invoke-virtual {v4, v3}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 53
    :cond_3
    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/ListViewAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020004

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method protected setSyncFxListItemData(ILcom/htc/fusion/fx/controls/FxListItem;)V
    .locals 10
    .parameter "position"
    .parameter "fxListItem"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 60
    invoke-super {p0, p1, p2}, Lcom/htc/fusion/htcbookmarkwidget/BookmarkAdapter;->setSyncFxListItemData(ILcom/htc/fusion/fx/controls/FxListItem;)V

    .line 61
    const/4 v7, 0x2

    new-array v2, v7, [Ljava/lang/String;

    const-string v7, "textlabel.bookmark_primary"

    aput-object v7, v2, v8

    const-string v7, "textlabel.bookmark_secondary"

    aput-object v7, v2, v9

    .line 62
    .local v2, controlNames:[Ljava/lang/String;
    invoke-virtual {p2, v2}, Lcom/htc/fusion/fx/controls/FxListItem;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v4

    .line 63
    .local v4, objects:[Lcom/htc/fusion/fx/FxObject;
    aget-object v5, v4, v8

    check-cast v5, Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 64
    .local v5, titleLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;
    aget-object v6, v4, v9

    check-cast v6, Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 66
    .local v6, urlLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;
    const/4 v1, 0x0

    .line 68
    .local v1, bookmark:Lcom/htc/fusion/htcbookmarkwidget/IBookmark;
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/htc/fusion/htcbookmarkwidget/ListViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/htc/fusion/htcbookmarkwidget/IBookmark;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    invoke-interface {v1}, Lcom/htc/fusion/htcbookmarkwidget/IBookmark;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 74
    invoke-interface {v1}, Lcom/htc/fusion/htcbookmarkwidget/IBookmark;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 75
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v3

    .line 70
    .local v3, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v7, "HtcBookmarkWidget"

    const-string v8, "IndexOutOfBounds"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
