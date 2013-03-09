.class Lcom/htc/store/activity/detail/DetailInfo$GetPreviewTask;
.super Landroid/os/AsyncTask;
.source "DetailInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/detail/DetailInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetPreviewTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private mDownloadItemsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/activity/detail/DetailInfo$PreviewItem;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCancel:Z

.field final synthetic this$0:Lcom/htc/store/activity/detail/DetailInfo;


# direct methods
.method public constructor <init>(Lcom/htc/store/activity/detail/DetailInfo;Ljava/util/ArrayList;I)V
    .locals 3
    .parameter
    .parameter
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/activity/detail/DetailInfo$PreviewItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p2, previewItemsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/activity/detail/DetailInfo$PreviewItem;>;"
    const/4 v2, 0x0

    .line 2228
    iput-object p1, p0, Lcom/htc/store/activity/detail/DetailInfo$GetPreviewTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2225
    iput-boolean v2, p0, Lcom/htc/store/activity/detail/DetailInfo$GetPreviewTask;->mIsCancel:Z

    .line 2229
    #setter for: Lcom/htc/store/activity/detail/DetailInfo;->mPreviewItemsFailedCount:I
    invoke-static {p1, v2}, Lcom/htc/store/activity/detail/DetailInfo;->access$9002(Lcom/htc/store/activity/detail/DetailInfo;I)I

    .line 2230
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo$GetPreviewTask;->mDownloadItemsList:Ljava/util/ArrayList;

    .line 2231
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 2232
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/store/activity/detail/DetailInfo$PreviewItem;

    .line 2233
    .local v1, preview:Lcom/htc/store/activity/detail/DetailInfo$PreviewItem;
    iget-boolean v2, v1, Lcom/htc/store/activity/detail/DetailInfo$PreviewItem;->finished:Z

    if-nez v2, :cond_0

    .line 2234
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo$GetPreviewTask;->mDownloadItemsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2231
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2237
    .end local v1           #preview:Lcom/htc/store/activity/detail/DetailInfo$PreviewItem;
    :cond_1
    return-void
.end method


# virtual methods
.method public cancelTask()V
    .locals 1

    .prologue
    .line 2327
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/store/activity/detail/DetailInfo$GetPreviewTask;->mIsCancel:Z

    .line 2328
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14
    .parameter "params"

    .prologue
    .line 2241
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "doInBackground: GetPreviewTask"

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2243
    iget-object v9, p0, Lcom/htc/store/activity/detail/DetailInfo$GetPreviewTask;->mDownloadItemsList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2244
    .local v1, count:I
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "GetPreviewTask - not downloaded items count: "

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2245
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 2247
    iget-boolean v9, p0, Lcom/htc/store/activity/detail/DetailInfo$GetPreviewTask;->mIsCancel:Z

    if-eqz v9, :cond_1

    .line 2285
    :cond_0
    const/4 v9, 0x0

    return-object v9

    .line 2250
    :cond_1
    iget-object v9, p0, Lcom/htc/store/activity/detail/DetailInfo$GetPreviewTask;->mDownloadItemsList:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/store/activity/detail/DetailInfo$PreviewItem;

    .line 2251
    .local v7, preview:Lcom/htc/store/activity/detail/DetailInfo$PreviewItem;
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "GetPreviewTask - get Preview "

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget v12, v7, Lcom/htc/store/activity/detail/DetailInfo$PreviewItem;->id:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, ", width: "

    aput-object v12, v10, v11

    const/4 v11, 0x3

    iget v12, v7, Lcom/htc/store/activity/detail/DetailInfo$PreviewItem;->width:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string v12, ", height: "

    aput-object v12, v10, v11

    const/4 v11, 0x5

    iget v12, v7, Lcom/htc/store/activity/detail/DetailInfo$PreviewItem;->height:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2253
    iget-object v9, p0, Lcom/htc/store/activity/detail/DetailInfo$GetPreviewTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mGetDetailInfoFromServer:Z
    invoke-static {v9}, Lcom/htc/store/activity/detail/DetailInfo;->access$6000(Lcom/htc/store/activity/detail/DetailInfo;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v2, 0x0

    .line 2255
    .local v2, drawable:Landroid/graphics/drawable/Drawable;
    :goto_1
    if-nez v2, :cond_6

    .line 2257
    iget-object v4, v7, Lcom/htc/store/activity/detail/DetailInfo$PreviewItem;->url:Ljava/lang/String;

    .line 2258
    .local v4, imageUrl:Ljava/lang/String;
    iget-object v9, p0, Lcom/htc/store/activity/detail/DetailInfo$GetPreviewTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mOnlineItemId:Ljava/lang/String;
    invoke-static {v9}, Lcom/htc/store/activity/detail/DetailInfo;->access$2700(Lcom/htc/store/activity/detail/DetailInfo;)Ljava/lang/String;

    move-result-object v9

    iget v10, v7, Lcom/htc/store/activity/detail/DetailInfo$PreviewItem;->id:I

    invoke-static {v9, v10}, Lcom/htc/store/util/StorageUtils;->getItemSnapshotFilePath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 2259
    .local v5, localPath:Ljava/lang/String;
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "GetPreviewTask - get Preview from Url: "

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v4, v10, v11

    const/4 v11, 0x2

    const-string v12, ", Save Path: "

    aput-object v12, v10, v11

    const/4 v11, 0x3

    aput-object v5, v10, v11

    invoke-static {v9, v10}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2261
    invoke-static {v4, v5}, Lcom/htc/store/util/DownloadUtils;->retrieveImageWithBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2262
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    .line 2263
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "GetPreviewTask - preview on server, width: "

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, ", height: "

    aput-object v12, v10, v11

    const/4 v11, 0x3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2264
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    iget v10, v7, Lcom/htc/store/activity/detail/DetailInfo$PreviewItem;->width:I

    if-gt v9, v10, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    iget v10, v7, Lcom/htc/store/activity/detail/DetailInfo$PreviewItem;->height:I

    if-le v9, v10, :cond_5

    .line 2265
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    iget v11, v7, Lcom/htc/store/activity/detail/DetailInfo$PreviewItem;->width:I

    int-to-float v11, v11

    iget v12, v7, Lcom/htc/store/activity/detail/DetailInfo$PreviewItem;->height:I

    int-to-float v12, v12

    invoke-static {v9, v10, v11, v12}, Lcom/htc/store/util/ImageUtils;->organizeSize(FFFF)[I

    move-result-object v6

    .line 2266
    .local v6, organizedSize:[I
    const/4 v9, 0x0

    aget v9, v6, v9

    const/4 v10, 0x1

    aget v10, v6, v10

    const/4 v11, 0x1

    invoke-static {v0, v9, v10, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 2267
    .local v8, tmp:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2268
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2           #drawable:Landroid/graphics/drawable/Drawable;
    iget-object v9, p0, Lcom/htc/store/activity/detail/DetailInfo$GetPreviewTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    invoke-virtual {v9}, Lcom/htc/store/activity/detail/DetailInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-direct {v2, v9, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 2277
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v4           #imageUrl:Ljava/lang/String;
    .end local v5           #localPath:Ljava/lang/String;
    .end local v6           #organizedSize:[I
    .end local v8           #tmp:Landroid/graphics/Bitmap;
    .restart local v2       #drawable:Landroid/graphics/drawable/Drawable;
    :cond_3
    :goto_2
    if-nez v2, :cond_7

    .line 2278
    iget-object v9, p0, Lcom/htc/store/activity/detail/DetailInfo$GetPreviewTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    invoke-static {v9}, Lcom/htc/store/activity/detail/DetailInfo;->access$9008(Lcom/htc/store/activity/detail/DetailInfo;)I

    .line 2279
    iget-object v9, p0, Lcom/htc/store/activity/detail/DetailInfo$GetPreviewTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    invoke-virtual {v9}, Lcom/htc/store/activity/detail/DetailInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f020007

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2280
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, v7, Lcom/htc/store/activity/detail/DetailInfo$PreviewItem;->id:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    aput-object v2, v9, v10

    invoke-virtual {p0, v9}, Lcom/htc/store/activity/detail/DetailInfo$GetPreviewTask;->publishProgress([Ljava/lang/Object;)V

    .line 2245
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 2253
    .end local v2           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_4
    iget-object v9, p0, Lcom/htc/store/activity/detail/DetailInfo$GetPreviewTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #calls: Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;
    invoke-static {v9}, Lcom/htc/store/activity/detail/DetailInfo;->access$9100(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/app/Activity;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/store/activity/detail/DetailInfo$GetPreviewTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mOnlineItemId:Ljava/lang/String;
    invoke-static {v10}, Lcom/htc/store/activity/detail/DetailInfo;->access$2700(Lcom/htc/store/activity/detail/DetailInfo;)Ljava/lang/String;

    move-result-object v10

    iget v11, v7, Lcom/htc/store/activity/detail/DetailInfo$PreviewItem;->width:I

    iget v12, v7, Lcom/htc/store/activity/detail/DetailInfo$PreviewItem;->height:I

    iget v13, v7, Lcom/htc/store/activity/detail/DetailInfo$PreviewItem;->id:I

    invoke-static {v9, v10, v11, v12, v13}, Lcom/htc/store/util/ImageUtils;->getItemSnapshot(Landroid/content/Context;Ljava/lang/String;III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_1

    .line 2270
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v2       #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v4       #imageUrl:Ljava/lang/String;
    .restart local v5       #localPath:Ljava/lang/String;
    :cond_5
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2           #drawable:Landroid/graphics/drawable/Drawable;
    iget-object v9, p0, Lcom/htc/store/activity/detail/DetailInfo$GetPreviewTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    invoke-virtual {v9}, Lcom/htc/store/activity/detail/DetailInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-direct {v2, v9, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local v2       #drawable:Landroid/graphics/drawable/Drawable;
    goto :goto_2

    .line 2274
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v4           #imageUrl:Ljava/lang/String;
    .end local v5           #localPath:Ljava/lang/String;
    :cond_6
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "GetPreviewTask - get Preview from local cache"

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 2282
    :cond_7
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, v7, Lcom/htc/store/activity/detail/DetailInfo$PreviewItem;->id:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    aput-object v2, v9, v10

    invoke-virtual {p0, v9}, Lcom/htc/store/activity/detail/DetailInfo$GetPreviewTask;->publishProgress([Ljava/lang/Object;)V

    goto :goto_3
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 4
    .parameter "object"

    .prologue
    const/4 v3, 0x0

    .line 2317
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onPostExecute: GetPreviewTask"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2318
    iget-boolean v0, p0, Lcom/htc/store/activity/detail/DetailInfo$GetPreviewTask;->mIsCancel:Z

    if-eqz v0, :cond_0

    .line 2324
    :goto_0
    return-void

    .line 2321
    :cond_0
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$GetPreviewTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mPreviewItemsFinishedCount:I
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$9600(Lcom/htc/store/activity/detail/DetailInfo;)I

    move-result v0

    if-nez v0, :cond_1

    .line 2322
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$GetPreviewTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    const v1, 0x7f0a0030

    #calls: Lcom/htc/store/activity/detail/DetailInfo;->showEmptyView(IZ)V
    invoke-static {v0, v1, v3}, Lcom/htc/store/activity/detail/DetailInfo;->access$4300(Lcom/htc/store/activity/detail/DetailInfo;IZ)V

    .line 2323
    :cond_1
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$GetPreviewTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #calls: Lcom/htc/store/activity/detail/DetailInfo;->hideHeaderProgressBar()V
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$4800(Lcom/htc/store/activity/detail/DetailInfo;)V

    goto :goto_0
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 9
    .parameter "values"

    .prologue
    const/4 v8, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 2290
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, "onProgressUpdate: GetPreviewTask"

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2291
    iget-boolean v3, p0, Lcom/htc/store/activity/detail/DetailInfo$GetPreviewTask;->mIsCancel:Z

    if-eqz v3, :cond_1

    .line 2313
    :cond_0
    :goto_0
    return-void

    .line 2294
    :cond_1
    aget-object v3, p1, v6

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2295
    .local v2, id:I
    aget-object v3, p1, v7

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 2296
    .local v1, finished:Z
    aget-object v0, p1, v8

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 2297
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "GetPreviewTask - index = "

    aput-object v5, v4, v6

    aget-object v5, p1, v6

    aput-object v5, v4, v7

    const-string v5, ", finished = "

    aput-object v5, v4, v8

    const/4 v5, 0x3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2299
    if-eqz v1, :cond_0

    .line 2302
    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo$GetPreviewTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mHasDetailView:Z
    invoke-static {v3}, Lcom/htc/store/activity/detail/DetailInfo;->access$9200(Lcom/htc/store/activity/detail/DetailInfo;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2303
    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo$GetPreviewTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #calls: Lcom/htc/store/activity/detail/DetailInfo;->hideEmptyView()V
    invoke-static {v3}, Lcom/htc/store/activity/detail/DetailInfo;->access$9300(Lcom/htc/store/activity/detail/DetailInfo;)V

    .line 2304
    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo$GetPreviewTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mPreviewContent:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/htc/store/activity/detail/DetailInfo;->access$9400(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/widget/LinearLayout;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2305
    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo$GetPreviewTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mPreviewContent:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/htc/store/activity/detail/DetailInfo;->access$9400(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/widget/LinearLayout;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/store/activity/detail/DetailInfo$GetPreviewTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mDetailPreview:Lcom/htc/store/module/view/DetailPreview;
    invoke-static {v4}, Lcom/htc/store/activity/detail/DetailInfo;->access$9500(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/module/view/DetailPreview;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/store/module/view/DetailPreview;->getLayout()Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2306
    :cond_2
    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo$GetPreviewTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #setter for: Lcom/htc/store/activity/detail/DetailInfo;->mHasDetailView:Z
    invoke-static {v3, v7}, Lcom/htc/store/activity/detail/DetailInfo;->access$9202(Lcom/htc/store/activity/detail/DetailInfo;Z)Z

    .line 2310
    :cond_3
    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo$GetPreviewTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mDetailPreview:Lcom/htc/store/module/view/DetailPreview;
    invoke-static {v3}, Lcom/htc/store/activity/detail/DetailInfo;->access$9500(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/module/view/DetailPreview;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/store/activity/detail/DetailInfo$GetPreviewTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mPreviewItemsFinishedCount:I
    invoke-static {v4}, Lcom/htc/store/activity/detail/DetailInfo;->access$9600(Lcom/htc/store/activity/detail/DetailInfo;)I

    move-result v4

    invoke-virtual {v3, v4, v0}, Lcom/htc/store/module/view/DetailPreview;->setPreviewDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 2311
    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo$GetPreviewTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mPreviewItemsList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/store/activity/detail/DetailInfo;->access$9700(Lcom/htc/store/activity/detail/DetailInfo;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/store/activity/detail/DetailInfo$PreviewItem;

    iput-boolean v7, v3, Lcom/htc/store/activity/detail/DetailInfo$PreviewItem;->finished:Z

    .line 2312
    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo$GetPreviewTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    invoke-static {v3}, Lcom/htc/store/activity/detail/DetailInfo;->access$9608(Lcom/htc/store/activity/detail/DetailInfo;)I

    goto/16 :goto_0
.end method
