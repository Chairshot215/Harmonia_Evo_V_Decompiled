.class Lcom/htc/store/activity/detail/DetailInfo$GetThumbnailImageTask;
.super Landroid/os/AsyncTask;
.source "DetailInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/detail/DetailInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetThumbnailImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/store/activity/detail/DetailInfo;


# direct methods
.method private constructor <init>(Lcom/htc/store/activity/detail/DetailInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 2047
    iput-object p1, p0, Lcom/htc/store/activity/detail/DetailInfo$GetThumbnailImageTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/store/activity/detail/DetailInfo;Lcom/htc/store/activity/detail/DetailInfo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2047
    invoke-direct {p0, p1}, Lcom/htc/store/activity/detail/DetailInfo$GetThumbnailImageTask;-><init>(Lcom/htc/store/activity/detail/DetailInfo;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .locals 19
    .parameter "params"

    .prologue
    .line 2051
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, "doInBackground: GetThumbnailImageTask"

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2052
    const/4 v10, 0x0

    .line 2053
    .local v10, result:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/store/activity/detail/DetailInfo$GetThumbnailImageTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    invoke-virtual {v15}, Lcom/htc/store/activity/detail/DetailInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 2054
    .local v9, res:Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/store/activity/detail/DetailInfo$GetThumbnailImageTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mItemItem:Lcom/htc/store/module/vo/ItemItem;
    invoke-static {v15}, Lcom/htc/store/activity/detail/DetailInfo;->access$700(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v15

    if-eqz v15, :cond_a

    .line 2055
    const v15, 0x7f080022

    invoke-virtual {v9, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    .line 2056
    .local v14, width:I
    const v15, 0x7f080023

    invoke-virtual {v9, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 2057
    .local v3, height:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/store/activity/detail/DetailInfo$GetThumbnailImageTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mItemItem:Lcom/htc/store/module/vo/ItemItem;
    invoke-static {v15}, Lcom/htc/store/activity/detail/DetailInfo;->access$700(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v15

    invoke-virtual {v15}, Lcom/htc/store/module/vo/ItemItem;->getOnlineIconURL()Ljava/lang/String;

    move-result-object v12

    .line 2058
    .local v12, thumbnailURL:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 2059
    const/4 v7, 0x0

    .line 2060
    .local v7, needDownload:Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/store/activity/detail/DetailInfo$GetThumbnailImageTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static {v15}, Lcom/htc/store/activity/detail/DetailInfo;->access$5500(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v15, v0, v12}, Lcom/htc/store/provider/AccessHelper;->getImageCacheMappingItem(ILjava/lang/String;)Lcom/htc/store/module/vo/ImageCacheMappingItem;

    move-result-object v6

    .line 2062
    .local v6, mappingItem:Lcom/htc/store/module/vo/ImageCacheMappingItem;
    if-eqz v6, :cond_5

    .line 2063
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    invoke-virtual {v6}, Lcom/htc/store/module/vo/ImageCacheMappingItem;->getExpiredTime()J

    move-result-wide v17

    cmp-long v15, v15, v17

    if-lez v15, :cond_4

    .line 2064
    const/4 v7, 0x1

    .line 2084
    :cond_0
    :goto_0
    if-eqz v6, :cond_9

    .line 2085
    if-eqz v7, :cond_8

    .line 2086
    invoke-virtual {v6}, Lcom/htc/store/module/vo/ImageCacheMappingItem;->getId()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Lcom/htc/store/util/StorageUtils;->getSharedImageFilePath(J)Ljava/lang/String;

    move-result-object v15

    invoke-static {v12, v15}, Lcom/htc/store/util/DownloadUtils;->retrieveImageWithBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2088
    .local v2, bitmap:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_2

    .line 2089
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    if-gt v15, v14, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    if-le v15, v3, :cond_7

    .line 2090
    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    int-to-float v0, v14

    move/from16 v17, v0

    int-to-float v0, v3

    move/from16 v18, v0

    invoke-static/range {v15 .. v18}, Lcom/htc/store/util/ImageUtils;->organizeSize(FFFF)[I

    move-result-object v8

    .line 2091
    .local v8, organizedSize:[I
    const/4 v15, 0x0

    aget v15, v8, v15

    const/16 v16, 0x1

    aget v16, v8, v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v2, v15, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 2092
    .local v13, tmp:Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 2093
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    .end local v10           #result:Landroid/graphics/drawable/Drawable;
    invoke-direct {v10, v9, v13}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 2109
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #height:I
    .end local v6           #mappingItem:Lcom/htc/store/module/vo/ImageCacheMappingItem;
    .end local v7           #needDownload:Z
    .end local v8           #organizedSize:[I
    .end local v12           #thumbnailURL:Ljava/lang/String;
    .end local v13           #tmp:Landroid/graphics/Bitmap;
    .end local v14           #width:I
    .restart local v10       #result:Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_1
    if-nez v10, :cond_3

    .line 2110
    const v15, 0x7f02000a

    invoke-virtual {v9, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 2111
    :cond_3
    return-object v10

    .line 2066
    .restart local v3       #height:I
    .restart local v6       #mappingItem:Lcom/htc/store/module/vo/ImageCacheMappingItem;
    .restart local v7       #needDownload:Z
    .restart local v12       #thumbnailURL:Ljava/lang/String;
    .restart local v14       #width:I
    :cond_4
    new-instance v11, Ljava/io/File;

    invoke-virtual {v6}, Lcom/htc/store/module/vo/ImageCacheMappingItem;->getId()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Lcom/htc/store/util/StorageUtils;->getSharedImageFilePath(J)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v11, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2067
    .local v11, thumbnailFile:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_0

    .line 2068
    const/4 v7, 0x1

    goto :goto_0

    .line 2072
    .end local v11           #thumbnailFile:Ljava/io/File;
    :cond_5
    new-instance v6, Lcom/htc/store/module/vo/ImageCacheMappingItem;

    .end local v6           #mappingItem:Lcom/htc/store/module/vo/ImageCacheMappingItem;
    invoke-direct {v6}, Lcom/htc/store/module/vo/ImageCacheMappingItem;-><init>()V

    .line 2073
    .restart local v6       #mappingItem:Lcom/htc/store/module/vo/ImageCacheMappingItem;
    const/4 v15, 0x1

    invoke-virtual {v6, v15}, Lcom/htc/store/module/vo/ImageCacheMappingItem;->setType(I)V

    .line 2074
    invoke-virtual {v6, v12}, Lcom/htc/store/module/vo/ImageCacheMappingItem;->setURL(Ljava/lang/String;)V

    .line 2075
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/store/activity/detail/DetailInfo$GetThumbnailImageTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/store/activity/BaseActivity;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;
    invoke-static/range {v17 .. v17}, Lcom/htc/store/activity/detail/DetailInfo;->access$7800(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/module/PreferenceManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/htc/store/module/PreferenceManager;->getImageTTL()J

    move-result-wide v17

    add-long v15, v15, v17

    move-wide v0, v15

    invoke-virtual {v6, v0, v1}, Lcom/htc/store/module/vo/ImageCacheMappingItem;->setExpiredTime(J)V

    .line 2076
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/store/activity/detail/DetailInfo$GetThumbnailImageTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static {v15}, Lcom/htc/store/activity/detail/DetailInfo;->access$5500(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v15

    invoke-virtual {v15, v6}, Lcom/htc/store/provider/AccessHelper;->addImageCacheMappingItem(Lcom/htc/store/module/vo/ImageCacheMappingItem;)J

    move-result-wide v4

    .line 2077
    .local v4, id:J
    const-wide/16 v15, 0x0

    cmp-long v15, v4, v15

    if-lez v15, :cond_6

    .line 2078
    invoke-virtual {v6, v4, v5}, Lcom/htc/store/module/vo/ImageCacheMappingItem;->setId(J)V

    .line 2079
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 2081
    :cond_6
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 2095
    .end local v4           #id:J
    .restart local v2       #bitmap:Landroid/graphics/Bitmap;
    :cond_7
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    .end local v10           #result:Landroid/graphics/drawable/Drawable;
    invoke-direct {v10, v9, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local v10       #result:Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 2099
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/store/activity/detail/DetailInfo$GetThumbnailImageTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #calls: Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;
    invoke-static {v15}, Lcom/htc/store/activity/detail/DetailInfo;->access$7900(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/app/Activity;

    move-result-object v15

    invoke-virtual {v6}, Lcom/htc/store/module/vo/ImageCacheMappingItem;->getId()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-static {v15, v0, v1, v14, v3}, Lcom/htc/store/util/ImageUtils;->getSharedIcon(Landroid/content/Context;JII)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    goto :goto_1

    .line 2102
    :cond_9
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, "mappingItem is null"

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2106
    .end local v3           #height:I
    .end local v6           #mappingItem:Lcom/htc/store/module/vo/ImageCacheMappingItem;
    .end local v7           #needDownload:Z
    .end local v12           #thumbnailURL:Ljava/lang/String;
    .end local v14           #width:I
    :cond_a
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, "mItemItem is null"

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2047
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/detail/DetailInfo$GetThumbnailImageTask;->doInBackground([Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 2116
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "onPostExecute: GetThumbnailImageTask"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2117
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$GetThumbnailImageTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mItemIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$8000(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2118
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$GetThumbnailImageTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mItemIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$8000(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2119
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2047
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/detail/DetailInfo$GetThumbnailImageTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
