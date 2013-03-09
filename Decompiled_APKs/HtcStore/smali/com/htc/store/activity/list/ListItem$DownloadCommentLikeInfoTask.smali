.class Lcom/htc/store/activity/list/ListItem$DownloadCommentLikeInfoTask;
.super Lcom/htc/store/module/MultiExecutableAsyncTask;
.source "ListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/list/ListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadCommentLikeInfoTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/store/module/MultiExecutableAsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mItemsToDownload:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/vo/ItemItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/store/activity/list/ListItem;


# direct methods
.method public constructor <init>(Lcom/htc/store/activity/list/ListItem;Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/vo/ItemItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1181
    .local p2, itemsToDownload:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/ItemItem;>;"
    iput-object p1, p0, Lcom/htc/store/activity/list/ListItem$DownloadCommentLikeInfoTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    invoke-direct {p0}, Lcom/htc/store/module/MultiExecutableAsyncTask;-><init>()V

    .line 1182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/htc/store/activity/list/ListItem$DownloadCommentLikeInfoTask;->mItemsToDownload:Ljava/util/ArrayList;

    .line 1183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/store/activity/list/ListItem$DownloadCommentLikeInfoTask;->mIsIdle:Z

    .line 1184
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 10
    .parameter "params"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1188
    invoke-static {}, Lcom/htc/store/activity/list/ListItem;->access$000()Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    const-string v7, "doInBackground: DownloadCommentLikeCountTask"

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1189
    const/4 v0, 0x0

    .line 1190
    .local v0, action:I
    new-array v5, v9, [Ljava/lang/Boolean;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v5}, Lcom/htc/store/activity/list/ListItem$DownloadCommentLikeInfoTask;->publishProgress([Ljava/lang/Object;)V

    .line 1191
    iget-object v5, p0, Lcom/htc/store/activity/list/ListItem$DownloadCommentLikeInfoTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    iget-object v5, v5, Lcom/htc/store/activity/list/ListItem;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    if-nez v5, :cond_0

    .line 1192
    iget-object v5, p0, Lcom/htc/store/activity/list/ListItem$DownloadCommentLikeInfoTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    new-instance v6, Lcom/htc/store/module/rest/RestHelper;

    iget-object v7, p0, Lcom/htc/store/activity/list/ListItem$DownloadCommentLikeInfoTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    #calls: Lcom/htc/store/activity/list/ListItem;->getContext()Landroid/app/Activity;
    invoke-static {v7}, Lcom/htc/store/activity/list/ListItem;->access$4000(Lcom/htc/store/activity/list/ListItem;)Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/htc/store/module/rest/RestHelper;-><init>(Landroid/content/Context;)V

    iput-object v6, v5, Lcom/htc/store/activity/list/ListItem;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    .line 1194
    :cond_0
    iget-object v5, p0, Lcom/htc/store/activity/list/ListItem$DownloadCommentLikeInfoTask;->mItemsToDownload:Ljava/util/ArrayList;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/htc/store/activity/list/ListItem$DownloadCommentLikeInfoTask;->mItemsToDownload:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/htc/store/activity/list/ListItem$DownloadCommentLikeInfoTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    #calls: Lcom/htc/store/activity/list/ListItem;->isHtcAccountExisted()Z
    invoke-static {v5}, Lcom/htc/store/activity/list/ListItem;->access$4100(Lcom/htc/store/activity/list/ListItem;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1196
    :try_start_0
    iget-object v5, p0, Lcom/htc/store/activity/list/ListItem$DownloadCommentLikeInfoTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    iget-object v5, v5, Lcom/htc/store/activity/list/ListItem;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    iget-object v6, p0, Lcom/htc/store/activity/list/ListItem$DownloadCommentLikeInfoTask;->mItemsToDownload:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Lcom/htc/store/module/rest/RestHelper;->getCommentLikeInfo(Ljava/util/ArrayList;)Lcom/htc/store/module/rest/RestResult;

    move-result-object v4

    .line 1197
    .local v4, result:Lcom/htc/store/module/rest/RestResult;
    iget-object v5, p0, Lcom/htc/store/activity/list/ListItem$DownloadCommentLikeInfoTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    iget-boolean v5, v5, Lcom/htc/store/activity/list/ListItem;->mIsUserCancelled:Z

    if-eqz v5, :cond_1

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1216
    .end local v4           #result:Lcom/htc/store/module/rest/RestResult;
    :goto_0
    return-object v5

    .line 1198
    .restart local v4       #result:Lcom/htc/store/module/rest/RestResult;
    :cond_1
    iget v5, v4, Lcom/htc/store/module/rest/RestResult;->mResultCode:I

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_3

    .line 1199
    iget-object v5, v4, Lcom/htc/store/module/rest/RestResult;->mResultList:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    iget-object v5, v4, Lcom/htc/store/module/rest/RestResult;->mResultList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1201
    iget-object v3, v4, Lcom/htc/store/module/rest/RestResult;->mResultList:Ljava/util/ArrayList;

    .line 1202
    .local v3, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/ItemItem;>;"
    invoke-static {}, Lcom/htc/store/activity/list/ListItem;->access$000()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "result count (DownloadCommentLikeCountTask): "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1203
    iget-object v5, p0, Lcom/htc/store/activity/list/ListItem$DownloadCommentLikeInfoTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    iget-object v5, v5, Lcom/htc/store/activity/list/ListItem;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {v5, v3}, Lcom/htc/store/provider/AccessHelper;->updateItemItemsCommentLikeInfoOnly(Ljava/util/ArrayList;)I

    move-result v1

    .line 1204
    .local v1, count:I
    invoke-static {}, Lcom/htc/store/activity/list/ListItem;->access$000()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "update count (DownloadCommentLikeCountTask): "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1209
    .end local v1           #count:I
    .end local v3           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/ItemItem;>;"
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/htc/store/activity/list/ListItem$DownloadCommentLikeInfoTask;->mItemsToDownload:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1216
    .end local v4           #result:Lcom/htc/store/module/rest/RestResult;
    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_0

    .line 1207
    .restart local v4       #result:Lcom/htc/store/module/rest/RestResult;
    :cond_3
    const/4 v0, 0x4

    goto :goto_1

    .line 1210
    .end local v4           #result:Lcom/htc/store/module/rest/RestResult;
    :catch_0
    move-exception v2

    .line 1211
    .local v2, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/htc/store/activity/list/ListItem;->access$000()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2

    .line 1214
    .end local v2           #e:Ljava/lang/Exception;
    :cond_4
    invoke-static {}, Lcom/htc/store/activity/list/ListItem;->access$000()Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    const-string v7, "mItemsToDownload is null/empty."

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1177
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/list/ListItem$DownloadCommentLikeInfoTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 5
    .parameter "action"

    .prologue
    const/4 v4, 0x1

    .line 1226
    invoke-static {}, Lcom/htc/store/activity/list/ListItem;->access$000()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "onPostExecute: DownloadCommentLikeCountTask"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1227
    iput-boolean v4, p0, Lcom/htc/store/activity/list/ListItem$DownloadCommentLikeInfoTask;->mIsIdle:Z

    .line 1228
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$DownloadCommentLikeInfoTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    iget v1, v0, Lcom/htc/store/activity/list/ListItem;->mDownloadCommentLikeInfoTaskCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/htc/store/activity/list/ListItem;->mDownloadCommentLikeInfoTaskCount:I

    .line 1229
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$DownloadCommentLikeInfoTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnBackPressed:Z
    invoke-static {v0}, Lcom/htc/store/activity/list/ListItem;->access$4200(Lcom/htc/store/activity/list/ListItem;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$DownloadCommentLikeInfoTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnDestroy:Z
    invoke-static {v0}, Lcom/htc/store/activity/list/ListItem;->access$4300(Lcom/htc/store/activity/list/ListItem;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1230
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$DownloadCommentLikeInfoTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnPause:Z
    invoke-static {v0}, Lcom/htc/store/activity/list/ListItem;->access$4400(Lcom/htc/store/activity/list/ListItem;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1231
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$DownloadCommentLikeInfoTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    #calls: Lcom/htc/store/activity/list/ListItem;->doAction(I)V
    invoke-static {v0, v1}, Lcom/htc/store/activity/list/ListItem;->access$2400(Lcom/htc/store/activity/list/ListItem;I)V

    .line 1232
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$DownloadCommentLikeInfoTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    #calls: Lcom/htc/store/activity/list/ListItem;->updateProgressBarAndMenuItem()Z
    invoke-static {v0}, Lcom/htc/store/activity/list/ListItem;->access$3100(Lcom/htc/store/activity/list/ListItem;)Z

    .line 1237
    :cond_0
    :goto_0
    return-void

    .line 1234
    :cond_1
    iget-object v0, p0, Lcom/htc/store/activity/list/ListItem$DownloadCommentLikeInfoTask;->this$0:Lcom/htc/store/activity/list/ListItem;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/htc/store/activity/list/ListItem;->mActionOnResume:I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1177
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/list/ListItem$DownloadCommentLikeInfoTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Boolean;)V
    .locals 1
    .parameter "values"

    .prologue
    .line 1221
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/store/activity/list/ListItem$DownloadCommentLikeInfoTask;->mIsIdle:Z

    .line 1222
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1177
    check-cast p1, [Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/list/ListItem$DownloadCommentLikeInfoTask;->onProgressUpdate([Ljava/lang/Boolean;)V

    return-void
.end method
