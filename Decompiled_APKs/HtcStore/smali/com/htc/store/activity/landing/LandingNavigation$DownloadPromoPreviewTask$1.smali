.class Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask$1;
.super Ljava/lang/Object;
.source "LandingNavigation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask;->savePromoPreview(Landroid/graphics/drawable/Drawable;Lcom/htc/store/module/vo/PromoItem;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask;

.field final synthetic val$height_for_retrieval:I

.field final synthetic val$promoDrawable:Landroid/graphics/drawable/Drawable;

.field final synthetic val$swapPath:Ljava/lang/String;

.field final synthetic val$targetPath:Ljava/lang/String;

.field final synthetic val$width_for_retrieval:I


# direct methods
.method constructor <init>(Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask;Landroid/graphics/drawable/Drawable;Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1836
    iput-object p1, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask$1;->this$1:Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask;

    iput-object p2, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask$1;->val$promoDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask$1;->val$swapPath:Ljava/lang/String;

    iput p4, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask$1;->val$width_for_retrieval:I

    iput p5, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask$1;->val$height_for_retrieval:I

    iput-object p6, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask$1;->val$targetPath:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1839
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1840
    .local v3, start:J
    iget-object v5, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask$1;->val$promoDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask$1;->val$swapPath:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    iget v8, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask$1;->val$width_for_retrieval:I

    iget v9, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask$1;->val$height_for_retrieval:I

    invoke-static {v5, v6, v7, v8, v9}, Lcom/htc/store/util/ImageUtils;->writeImageFile(Landroid/graphics/drawable/Drawable;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;II)Z

    .line 1841
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1842
    .local v0, end:J
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "write "

    aput-object v7, v6, v10

    iget-object v7, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask$1;->val$swapPath:Ljava/lang/String;

    aput-object v7, v6, v11

    const-string v7, " end, and cost "

    aput-object v7, v6, v12

    sub-long v7, v0, v3

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v13

    const-string v7, " mseconds"

    aput-object v7, v6, v14

    invoke-static {v5, v6}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1843
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1844
    iget-object v5, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask$1;->val$swapPath:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask$1;->val$targetPath:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/htc/store/util/StorageUtils;->moveFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 1845
    .local v2, isSaveDrawableSuccessfully:Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1846
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x7

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "move "

    aput-object v7, v6, v10

    iget-object v7, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask$1;->val$swapPath:Ljava/lang/String;

    aput-object v7, v6, v11

    const-string v7, " to "

    aput-object v7, v6, v12

    iget-object v7, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask$1;->val$targetPath:Ljava/lang/String;

    aput-object v7, v6, v13

    const-string v7, " end, and cost "

    aput-object v7, v6, v14

    const/4 v7, 0x5

    sub-long v8, v0, v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const-string v8, " mseconds"

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1847
    invoke-static {}, Lcom/htc/store/activity/landing/LandingNavigation;->access$100()Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x5

    new-array v7, v5, [Ljava/lang/Object;

    const-string v5, "move "

    aput-object v5, v7, v10

    iget-object v5, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask$1;->val$swapPath:Ljava/lang/String;

    aput-object v5, v7, v11

    const-string v5, " to "

    aput-object v5, v7, v12

    iget-object v5, p0, Lcom/htc/store/activity/landing/LandingNavigation$DownloadPromoPreviewTask$1;->val$targetPath:Ljava/lang/String;

    aput-object v5, v7, v13

    if-eqz v2, :cond_0

    const-string v5, " successfully"

    :goto_0
    aput-object v5, v7, v14

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1848
    return-void

    .line 1847
    :cond_0
    const-string v5, " failed"

    goto :goto_0
.end method
