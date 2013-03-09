.class public Lcom/htc/fusion/htcbookmarkwidget/GridViewAdapter;
.super Lcom/htc/fusion/htcbookmarkwidget/BookmarkAdapter;
.source "GridViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fusion/htcbookmarkwidget/GridViewAdapter$LoadImageTask;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOGTAG:Ljava/lang/String; = "HtcBookmarkWidget"


# instance fields
.field private mAddBookmarkTag:Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;

.field private mImageList:Lcom/htc/fusion/htcbookmarkwidget/util/IImageList;

.field private mState:Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/android/rosie/widget/Widget$Host;Ljava/util/List;Lcom/htc/fusion/htcbookmarkwidget/util/IImageList;)V
    .locals 2
    .parameter "context"
    .parameter "widgetHost"
    .parameter
    .parameter "imageList"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/htc/android/rosie/widget/Widget$Host;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/fusion/htcbookmarkwidget/IBookmark;",
            ">;",
            "Lcom/htc/fusion/htcbookmarkwidget/util/IImageList;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    .local p3, arraylist:Ljava/util/List;,"Ljava/util/List<Lcom/htc/fusion/htcbookmarkwidget/IBookmark;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/fusion/htcbookmarkwidget/BookmarkAdapter;-><init>(Landroid/content/Context;Lcom/htc/android/rosie/widget/Widget$Host;Ljava/util/List;)V

    .line 150
    sget-object v0, Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;->UNKNOW:Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;

    iput-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/GridViewAdapter;->mState:Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;

    .line 37
    new-instance v0, Lcom/htc/fusion/htcbookmarkwidget/tags/BookmarkTag;

    const-string v1, "tag_name_of_add_bookmark_item"

    invoke-direct {v0, v1}, Lcom/htc/fusion/htcbookmarkwidget/tags/BookmarkTag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/GridViewAdapter;->mAddBookmarkTag:Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;

    .line 38
    iput-object p4, p0, Lcom/htc/fusion/htcbookmarkwidget/GridViewAdapter;->mImageList:Lcom/htc/fusion/htcbookmarkwidget/util/IImageList;

    .line 39
    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/GridViewAdapter;->updateState()V

    .line 40
    return-void
.end method

.method private getDefaultThumbnail()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/GridViewAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020001

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected setFxListItemData(ILcom/htc/fusion/fx/controls/FxListItem;)V
    .locals 15
    .parameter "position"
    .parameter "item"

    .prologue
    .line 43
    const-string v1, "dynamicimage.pages"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxListItem;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v7

    check-cast v7, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 44
    .local v7, background:Lcom/htc/fusion/fx/controls/FxDynamicImage;
    const/4 v3, 0x0

    .line 45
    .local v3, width:I
    const/4 v4, 0x0

    .line 47
    .local v4, height:I
    if-nez v7, :cond_0

    .line 48
    const-string v1, "dynamicimage.bookmark_pages"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxListItem;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v7

    .end local v7           #background:Lcom/htc/fusion/fx/controls/FxDynamicImage;
    check-cast v7, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 50
    .restart local v7       #background:Lcom/htc/fusion/fx/controls/FxDynamicImage;
    :cond_0
    invoke-virtual {v7}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->getSize()Landroid/graphics/PointF;

    move-result-object v13

    .line 51
    .local v13, size:Landroid/graphics/PointF;
    iget v1, v13, Landroid/graphics/PointF;->x:F

    float-to-int v3, v1

    .line 52
    iget v1, v13, Landroid/graphics/PointF;->y:F

    float-to-int v4, v1

    .line 54
    const/4 v8, 0x0

    .line 56
    .local v8, bookmark:Lcom/htc/fusion/htcbookmarkwidget/IBookmark;
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/htc/fusion/htcbookmarkwidget/GridViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/htc/fusion/htcbookmarkwidget/IBookmark;

    move-object v8, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    invoke-interface {v8}, Lcom/htc/fusion/htcbookmarkwidget/IBookmark;->getUrl()Ljava/lang/String;

    move-result-object v14

    .line 66
    .local v14, url:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/GridViewAdapter;->mAddBookmarkTag:Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;

    invoke-interface {v8, v1}, Lcom/htc/fusion/htcbookmarkwidget/IBookmark;->containsTag(Lcom/htc/fusion/htcbookmarkwidget/tags/Tag;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    invoke-virtual {p0}, Lcom/htc/fusion/htcbookmarkwidget/GridViewAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f020002

    invoke-static {v1, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/Bitmap;)V

    .line 128
    .end local v14           #url:Ljava/lang/String;
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v10

    .line 58
    .local v10, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v1, "HtcBookmarkWidget"

    const-string v5, "IndexOutOfBounds"

    invoke-static {v1, v5, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 70
    .end local v10           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v14       #url:Ljava/lang/String;
    :cond_1
    const/4 v11, 0x0

    .line 72
    .local v11, image:Lcom/htc/fusion/htcbookmarkwidget/util/IImage;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v1, v5, :cond_2

    .line 73
    iget-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/GridViewAdapter;->mImageList:Lcom/htc/fusion/htcbookmarkwidget/util/IImageList;

    invoke-interface {v1, v14}, Lcom/htc/fusion/htcbookmarkwidget/util/IImageList;->getImage(Ljava/lang/String;)Lcom/htc/fusion/htcbookmarkwidget/util/IImage;

    move-result-object v11

    .line 74
    if-eqz v11, :cond_2

    .line 75
    invoke-interface {v11}, Lcom/htc/fusion/htcbookmarkwidget/util/IImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v8, v1}, Lcom/htc/fusion/htcbookmarkwidget/IBookmark;->setThumbnail(Landroid/graphics/Bitmap;)V

    .line 79
    :cond_2
    if-nez v11, :cond_3

    .line 81
    invoke-interface {v8}, Lcom/htc/fusion/htcbookmarkwidget/IBookmark;->getThumbnailImage()Lcom/htc/fusion/htcbookmarkwidget/util/IImage;

    move-result-object v11

    .line 85
    :cond_3
    if-eqz v11, :cond_4

    invoke-interface {v11}, Lcom/htc/fusion/htcbookmarkwidget/util/IImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 87
    const/4 v11, 0x0

    .line 91
    :cond_4
    if-nez v11, :cond_5

    .line 92
    iget-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/GridViewAdapter;->mImageList:Lcom/htc/fusion/htcbookmarkwidget/util/IImageList;

    invoke-interface {v1, v14}, Lcom/htc/fusion/htcbookmarkwidget/util/IImageList;->getImage(Ljava/lang/String;)Lcom/htc/fusion/htcbookmarkwidget/util/IImage;

    move-result-object v11

    .line 93
    if-eqz v11, :cond_5

    .line 94
    invoke-interface {v11}, Lcom/htc/fusion/htcbookmarkwidget/util/IImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v8, v1}, Lcom/htc/fusion/htcbookmarkwidget/IBookmark;->setThumbnail(Landroid/graphics/Bitmap;)V

    .line 99
    :cond_5
    if-eqz v11, :cond_6

    .line 100
    invoke-interface {v11}, Lcom/htc/fusion/htcbookmarkwidget/util/IImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 101
    .local v2, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/htc/fusion/htcbookmarkwidget/Utilities;->transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZZ)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 113
    .local v9, croppedBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v7, v9}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 115
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v9           #croppedBitmap:Landroid/graphics/Bitmap;
    :cond_6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-ge v1, v5, :cond_8

    iget-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/GridViewAdapter;->mState:Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;

    sget-object v5, Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;->EXTERNAL:Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;

    if-eq v1, v5, :cond_7

    iget-object v1, p0, Lcom/htc/fusion/htcbookmarkwidget/GridViewAdapter;->mState:Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;

    sget-object v5, Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;->PHONE:Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;

    if-ne v1, v5, :cond_8

    .line 121
    :cond_7
    const/4 v12, 0x0

    .line 122
    .local v12, nullBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v7, v12}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 124
    .end local v12           #nullBitmap:Landroid/graphics/Bitmap;
    :cond_8
    invoke-direct {p0}, Lcom/htc/fusion/htcbookmarkwidget/GridViewAdapter;->getDefaultThumbnail()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method protected setSyncFxListItemData(ILcom/htc/fusion/fx/controls/FxListItem;)V
    .locals 7
    .parameter "position"
    .parameter "fxListItem"

    .prologue
    .line 131
    invoke-super {p0, p1, p2}, Lcom/htc/fusion/htcbookmarkwidget/BookmarkAdapter;->setSyncFxListItemData(ILcom/htc/fusion/fx/controls/FxListItem;)V

    .line 132
    const-string v5, "textlabel.visualbookmark_label"

    invoke-virtual {p2, v5}, Lcom/htc/fusion/fx/controls/FxListItem;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v4

    check-cast v4, Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 134
    .local v4, titleLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;
    const/4 v1, 0x0

    .line 136
    .local v1, bookmark:Lcom/htc/fusion/htcbookmarkwidget/IBookmark;
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/htc/fusion/htcbookmarkwidget/GridViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/htc/fusion/htcbookmarkwidget/IBookmark;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    invoke-interface {v1}, Lcom/htc/fusion/htcbookmarkwidget/IBookmark;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 143
    .local v3, title:Ljava/lang/String;
    invoke-virtual {v4, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 144
    .end local v3           #title:Ljava/lang/String;
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v2

    .line 138
    .local v2, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v5, "HtcBookmarkWidget"

    const-string v6, "IndexOutOfBounds"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updateState()V
    .locals 3

    .prologue
    .line 153
    sget-object v0, Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;->UNKNOW:Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;

    .line 154
    .local v0, state:Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;
    invoke-static {}, Lcom/htc/fusion/htcbookmarkwidget/util/AppUnbundleUtil;->getPhoneStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    sget-object v0, Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;->PHONE:Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;

    .line 162
    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/fusion/htcbookmarkwidget/GridViewAdapter;->updateState(Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;)V

    .line 163
    return-void

    .line 156
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    sget-object v0, Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;->EXTERNAL:Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;

    goto :goto_0

    .line 159
    :cond_1
    sget-object v0, Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;->CUSTOMIZE_RES:Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;

    goto :goto_0
.end method

.method public updateState(Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;)V
    .locals 0
    .parameter "newState"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/htc/fusion/htcbookmarkwidget/GridViewAdapter;->mState:Lcom/htc/fusion/htcbookmarkwidget/util/StorageStateListener$StorageState;

    .line 167
    return-void
.end method
