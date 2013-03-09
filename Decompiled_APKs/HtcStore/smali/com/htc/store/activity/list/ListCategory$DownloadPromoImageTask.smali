.class Lcom/htc/store/activity/list/ListCategory$DownloadPromoImageTask;
.super Lcom/htc/store/module/MultiExecutableAsyncTask;
.source "ListCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/list/ListCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadPromoImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/store/module/MultiExecutableAsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACTION_UPDATE_IDLE_FLAG:I = 0x0

.field private static final ACTION_UPDATE_PROMO_IMAGE:I = 0x1


# instance fields
.field private mIndexesToDownload:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPromoImageHeight:I

.field private mPromoImageWidth:I

.field final synthetic this$0:Lcom/htc/store/activity/list/ListCategory;


# direct methods
.method public constructor <init>(Lcom/htc/store/activity/list/ListCategory;)V
    .locals 4
    .parameter

    .prologue
    .line 1116
    iput-object p1, p0, Lcom/htc/store/activity/list/ListCategory$DownloadPromoImageTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    invoke-direct {p0}, Lcom/htc/store/module/MultiExecutableAsyncTask;-><init>()V

    .line 1117
    iget-object v2, p1, Lcom/htc/store/activity/list/ListCategory;->mPromoItems:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/htc/store/activity/list/ListCategory;->mPromoItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1118
    iget-object v2, p1, Lcom/htc/store/activity/list/ListCategory;->mPromoItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1119
    .local v1, size:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/htc/store/activity/list/ListCategory$DownloadPromoImageTask;->mIndexesToDownload:Ljava/util/ArrayList;

    .line 1120
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1121
    iget-object v2, p0, Lcom/htc/store/activity/list/ListCategory$DownloadPromoImageTask;->mIndexesToDownload:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1120
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1124
    .end local v0           #i:I
    .end local v1           #size:I
    :cond_0
    invoke-virtual {p1}, Lcom/htc/store/activity/list/ListCategory;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/htc/store/activity/list/ListCategory$DownloadPromoImageTask;->mPromoImageWidth:I

    .line 1125
    invoke-virtual {p1}, Lcom/htc/store/activity/list/ListCategory;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/htc/store/activity/list/ListCategory$DownloadPromoImageTask;->mPromoImageHeight:I

    .line 1126
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/store/activity/list/ListCategory$DownloadPromoImageTask;->mIsIdle:Z

    .line 1127
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13
    .parameter "params"

    .prologue
    .line 1131
    invoke-static {}, Lcom/htc/store/activity/list/ListCategory;->access$300()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "doInBackground: DownloadPromoImageTask"

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1132
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {p0, v9}, Lcom/htc/store/activity/list/ListCategory$DownloadPromoImageTask;->publishProgress([Ljava/lang/Object;)V

    .line 1133
    iget-object v9, p0, Lcom/htc/store/activity/list/ListCategory$DownloadPromoImageTask;->mIndexesToDownload:Ljava/util/ArrayList;

    if-eqz v9, :cond_6

    .line 1134
    iget-object v9, p0, Lcom/htc/store/activity/list/ListCategory$DownloadPromoImageTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v9, v9, Lcom/htc/store/activity/list/ListCategory;->mCategoryItem:Lcom/htc/store/module/vo/CategoryItem;

    invoke-virtual {v9}, Lcom/htc/store/module/vo/CategoryItem;->getId()J

    move-result-wide v1

    .line 1135
    .local v1, categoryId:J
    iget-object v9, p0, Lcom/htc/store/activity/list/ListCategory$DownloadPromoImageTask;->mIndexesToDownload:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1136
    .local v8, totalCount:I
    move v6, v8

    .line 1137
    .local v6, remainedCount:I
    const/4 v3, 0x0

    .line 1138
    .local v3, count:I
    :goto_0
    if-lez v6, :cond_1

    .line 1139
    const/4 v9, -0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1140
    .local v4, index:Ljava/lang/Integer;
    iget-object v10, p0, Lcom/htc/store/activity/list/ListCategory$DownloadPromoImageTask;->mIndexesToDownload:Ljava/util/ArrayList;

    monitor-enter v10

    .line 1141
    :try_start_0
    iget-object v9, p0, Lcom/htc/store/activity/list/ListCategory$DownloadPromoImageTask;->mIndexesToDownload:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1142
    iget-object v9, p0, Lcom/htc/store/activity/list/ListCategory$DownloadPromoImageTask;->mIndexesToDownload:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/lang/Integer;

    move-object v4, v0

    .line 1144
    :cond_0
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1145
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ltz v9, :cond_1

    .line 1146
    iget-object v9, p0, Lcom/htc/store/activity/list/ListCategory$DownloadPromoImageTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v9, v9, Lcom/htc/store/activity/list/ListCategory;->mPromoItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/store/module/vo/PromoItem;

    .line 1147
    .local v5, item:Lcom/htc/store/module/vo/PromoItem;
    invoke-virtual {v5}, Lcom/htc/store/module/vo/PromoItem;->getOnlineImageURLPortrait()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Lcom/htc/store/module/vo/PromoItem;->getOnlineItemId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v2, v10}, Lcom/htc/store/util/StorageUtils;->getPromoPreviewFilePath(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget v11, p0, Lcom/htc/store/activity/list/ListCategory$DownloadPromoImageTask;->mPromoImageWidth:I

    iget v12, p0, Lcom/htc/store/activity/list/ListCategory$DownloadPromoImageTask;->mPromoImageHeight:I

    invoke-static {v9, v10, v11, v12}, Lcom/htc/store/util/DownloadUtils;->retrieveImageWithResult(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v7

    .line 1150
    .local v7, result:I
    iget-object v9, p0, Lcom/htc/store/activity/list/ListCategory$DownloadPromoImageTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-boolean v9, v9, Lcom/htc/store/activity/list/ListCategory;->mIsUserCancelled:Z

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/htc/store/activity/list/ListCategory$DownloadPromoImageTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnPause:Z
    invoke-static {v9}, Lcom/htc/store/activity/list/ListCategory;->access$3500(Lcom/htc/store/activity/list/ListCategory;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {p0}, Lcom/htc/store/activity/list/ListCategory$DownloadPromoImageTask;->isCancelled()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1167
    .end local v4           #index:Ljava/lang/Integer;
    .end local v5           #item:Lcom/htc/store/module/vo/PromoItem;
    .end local v7           #result:I
    :cond_1
    if-ne v3, v8, :cond_2

    .line 1168
    iget-object v9, p0, Lcom/htc/store/activity/list/ListCategory$DownloadPromoImageTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/htc/store/activity/list/ListCategory;->mAllPromoImageRetrieved:Z

    .line 1173
    .end local v1           #categoryId:J
    .end local v3           #count:I
    .end local v6           #remainedCount:I
    .end local v8           #totalCount:I
    :cond_2
    :goto_1
    const/4 v9, 0x0

    return-object v9

    .line 1144
    .restart local v1       #categoryId:J
    .restart local v3       #count:I
    .restart local v4       #index:Ljava/lang/Integer;
    .restart local v6       #remainedCount:I
    .restart local v8       #totalCount:I
    :catchall_0
    move-exception v9

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9

    .line 1153
    .restart local v5       #item:Lcom/htc/store/module/vo/PromoItem;
    .restart local v7       #result:I
    :cond_3
    const/4 v9, 0x2

    if-eq v7, v9, :cond_4

    const/4 v9, 0x1

    if-ne v7, v9, :cond_5

    .line 1154
    :cond_4
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v5, v9, v10

    invoke-virtual {p0, v9}, Lcom/htc/store/activity/list/ListCategory$DownloadPromoImageTask;->publishProgress([Ljava/lang/Object;)V

    .line 1155
    add-int/lit8 v3, v3, 0x1

    .line 1157
    :cond_5
    invoke-static {}, Lcom/htc/store/activity/list/ListCategory;->access$300()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "Download result: "

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1158
    iget-object v10, p0, Lcom/htc/store/activity/list/ListCategory$DownloadPromoImageTask;->mIndexesToDownload:Ljava/util/ArrayList;

    monitor-enter v10

    .line 1159
    :try_start_2
    iget-object v9, p0, Lcom/htc/store/activity/list/ListCategory$DownloadPromoImageTask;->mIndexesToDownload:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1160
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1162
    iget-object v9, p0, Lcom/htc/store/activity/list/ListCategory$DownloadPromoImageTask;->mIndexesToDownload:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1166
    goto/16 :goto_0

    .line 1160
    :catchall_1
    move-exception v9

    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v9

    .line 1171
    .end local v1           #categoryId:J
    .end local v3           #count:I
    .end local v4           #index:Ljava/lang/Integer;
    .end local v5           #item:Lcom/htc/store/module/vo/PromoItem;
    .end local v6           #remainedCount:I
    .end local v7           #result:I
    .end local v8           #totalCount:I
    :cond_6
    iget-object v9, p0, Lcom/htc/store/activity/list/ListCategory$DownloadPromoImageTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/htc/store/activity/list/ListCategory;->mAllPromoImageRetrieved:Z

    goto :goto_1
.end method

.method public insert(Ljava/lang/Integer;)V
    .locals 3
    .parameter "position"

    .prologue
    .line 1210
    iget-object v1, p0, Lcom/htc/store/activity/list/ListCategory$DownloadPromoImageTask;->mIndexesToDownload:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1211
    :try_start_0
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$DownloadPromoImageTask;->mIndexesToDownload:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$DownloadPromoImageTask;->mIndexesToDownload:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1212
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$DownloadPromoImageTask;->mIndexesToDownload:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1213
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$DownloadPromoImageTask;->mIndexesToDownload:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1215
    :cond_0
    monitor-exit v1

    .line 1216
    return-void

    .line 1215
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 5
    .parameter "result"

    .prologue
    const/4 v4, 0x1

    .line 1201
    invoke-static {}, Lcom/htc/store/activity/list/ListCategory;->access$300()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "onPostExecute: DownloadPromoImageTask"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1202
    iput-boolean v4, p0, Lcom/htc/store/activity/list/ListCategory$DownloadPromoImageTask;->mIsIdle:Z

    .line 1203
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$DownloadPromoImageTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnPause:Z
    invoke-static {v0}, Lcom/htc/store/activity/list/ListCategory;->access$3600(Lcom/htc/store/activity/list/ListCategory;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1204
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$DownloadPromoImageTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    #calls: Lcom/htc/store/activity/list/ListCategory;->updateProgressBarAndMenuItem()Z
    invoke-static {v0}, Lcom/htc/store/activity/list/ListCategory;->access$2800(Lcom/htc/store/activity/list/ListCategory;)Z

    .line 1206
    :cond_0
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 5
    .parameter "values"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1181
    invoke-static {}, Lcom/htc/store/activity/list/ListCategory;->access$300()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "onProgressUpdate: DownloadPromoImageTask"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1182
    aget-object v0, p1, v4

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 1183
    iput-boolean v4, p0, Lcom/htc/store/activity/list/ListCategory$DownloadPromoImageTask;->mIsIdle:Z

    .line 1197
    :goto_0
    return-void

    .line 1185
    :cond_0
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$DownloadPromoImageTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget v0, v0, Lcom/htc/store/activity/list/ListCategory;->mOrientation:I

    if-ne v0, v3, :cond_2

    .line 1186
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$DownloadPromoImageTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v0, v0, Lcom/htc/store/activity/list/ListCategory;->mPromoSwitcherPort:Lcom/htc/store/module/view/PromoSwitcher;

    if-nez v0, :cond_1

    .line 1187
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$DownloadPromoImageTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    #calls: Lcom/htc/store/activity/list/ListCategory;->initPromoFeaturedViews(I)V
    invoke-static {v0, v3}, Lcom/htc/store/activity/list/ListCategory;->access$2500(Lcom/htc/store/activity/list/ListCategory;I)V

    .line 1189
    :cond_1
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$DownloadPromoImageTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v1, v0, Lcom/htc/store/activity/list/ListCategory;->mPromoSwitcherPort:Lcom/htc/store/module/view/PromoSwitcher;

    aget-object v0, p1, v3

    check-cast v0, Lcom/htc/store/module/vo/PromoItem;

    invoke-virtual {v1, v0}, Lcom/htc/store/module/view/PromoSwitcher;->addPromoItem(Lcom/htc/store/module/vo/PromoItem;)V

    goto :goto_0

    .line 1191
    :cond_2
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$DownloadPromoImageTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v0, v0, Lcom/htc/store/activity/list/ListCategory;->mPromoSwitcherLand:Lcom/htc/store/module/view/PromoSwitcher;

    if-nez v0, :cond_3

    .line 1192
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$DownloadPromoImageTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    const/4 v1, 0x2

    #calls: Lcom/htc/store/activity/list/ListCategory;->initPromoFeaturedViews(I)V
    invoke-static {v0, v1}, Lcom/htc/store/activity/list/ListCategory;->access$2500(Lcom/htc/store/activity/list/ListCategory;I)V

    .line 1194
    :cond_3
    iget-object v0, p0, Lcom/htc/store/activity/list/ListCategory$DownloadPromoImageTask;->this$0:Lcom/htc/store/activity/list/ListCategory;

    iget-object v1, v0, Lcom/htc/store/activity/list/ListCategory;->mPromoSwitcherLand:Lcom/htc/store/module/view/PromoSwitcher;

    aget-object v0, p1, v3

    check-cast v0, Lcom/htc/store/module/vo/PromoItem;

    invoke-virtual {v1, v0}, Lcom/htc/store/module/view/PromoSwitcher;->addPromoItem(Lcom/htc/store/module/vo/PromoItem;)V

    goto :goto_0
.end method
