.class Lcom/htc/store/activity/DispatchActivity$DoGetMoreTask;
.super Landroid/os/AsyncTask;
.source "DispatchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/DispatchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DoGetMoreTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Lcom/htc/store/module/vo/CategoryItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/store/activity/DispatchActivity;


# direct methods
.method private constructor <init>(Lcom/htc/store/activity/DispatchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcom/htc/store/activity/DispatchActivity$DoGetMoreTask;->this$0:Lcom/htc/store/activity/DispatchActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/store/activity/DispatchActivity;Lcom/htc/store/activity/DispatchActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 239
    invoke-direct {p0, p1}, Lcom/htc/store/activity/DispatchActivity$DoGetMoreTask;-><init>(Lcom/htc/store/activity/DispatchActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Lcom/htc/store/module/vo/CategoryItem;
    .locals 14
    .parameter "params"

    .prologue
    .line 242
    invoke-static {}, Lcom/htc/store/activity/DispatchActivity;->access$100()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "doInBackground: DoGetMoreTask"

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    const/4 v2, 0x0

    .line 244
    .local v2, categoryItem:Lcom/htc/store/module/vo/CategoryItem;
    const/4 v10, 0x0

    aget-object v5, p1, v10

    check-cast v5, Ljava/lang/String;

    .line 245
    .local v5, key:Ljava/lang/String;
    new-instance v0, Lcom/htc/store/provider/AccessHelper;

    iget-object v10, p0, Lcom/htc/store/activity/DispatchActivity$DoGetMoreTask;->this$0:Lcom/htc/store/activity/DispatchActivity;

    invoke-virtual {v10}, Lcom/htc/store/activity/DispatchActivity;->getContext()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/htc/store/provider/AccessHelper;-><init>(Landroid/content/Context;)V

    .line 246
    .local v0, accessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-virtual {v0, v5}, Lcom/htc/store/provider/AccessHelper;->getGetMoreMappingItem(Ljava/lang/String;)Lcom/htc/store/module/vo/GetMoreMappingItem;

    move-result-object v6

    .line 247
    .local v6, mappingItem:Lcom/htc/store/module/vo/GetMoreMappingItem;
    invoke-virtual {v0, v5}, Lcom/htc/store/provider/AccessHelper;->isGetMoreDataExpired(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    if-eqz v6, :cond_0

    .line 248
    invoke-virtual {v6}, Lcom/htc/store/module/vo/GetMoreMappingItem;->getOnlineId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/htc/store/provider/AccessHelper;->getCategoryItemByOnlineId(Ljava/lang/String;)Lcom/htc/store/module/vo/CategoryItem;

    move-result-object v2

    .line 250
    :cond_0
    if-nez v2, :cond_3

    .line 251
    iget-object v10, p0, Lcom/htc/store/activity/DispatchActivity$DoGetMoreTask;->this$0:Lcom/htc/store/activity/DispatchActivity;

    invoke-virtual {v10}, Lcom/htc/store/activity/DispatchActivity;->getContext()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/htc/store/util/CommonUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 252
    new-instance v8, Lcom/htc/store/module/rest/RestHelper;

    iget-object v10, p0, Lcom/htc/store/activity/DispatchActivity$DoGetMoreTask;->this$0:Lcom/htc/store/activity/DispatchActivity;

    invoke-virtual {v10}, Lcom/htc/store/activity/DispatchActivity;->getContext()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v8, v10}, Lcom/htc/store/module/rest/RestHelper;-><init>(Landroid/content/Context;)V

    .line 253
    .local v8, restHelper:Lcom/htc/store/module/rest/RestHelper;
    invoke-virtual {v8, v5}, Lcom/htc/store/module/rest/RestHelper;->getMore(Ljava/lang/String;)Lcom/htc/store/module/rest/RestResult;

    move-result-object v9

    .line 254
    .local v9, restResult:Lcom/htc/store/module/rest/RestResult;
    iget v10, v9, Lcom/htc/store/module/rest/RestResult;->mResultCode:I

    const/16 v11, 0xc8

    if-ne v10, v11, :cond_2

    .line 255
    iget-object v10, v9, Lcom/htc/store/module/rest/RestResult;->mResultData:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 256
    .local v1, actionType:I
    iget-object v7, v9, Lcom/htc/store/module/rest/RestResult;->mAdditional1:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .line 257
    .local v7, onlineId:Ljava/lang/String;
    invoke-virtual {v0, v7}, Lcom/htc/store/provider/AccessHelper;->getCategoryItemByOnlineId(Ljava/lang/String;)Lcom/htc/store/module/vo/CategoryItem;

    move-result-object v2

    .line 258
    if-nez v2, :cond_1

    .line 259
    new-instance v2, Lcom/htc/store/module/vo/CategoryItem;

    .end local v2           #categoryItem:Lcom/htc/store/module/vo/CategoryItem;
    invoke-direct {v2}, Lcom/htc/store/module/vo/CategoryItem;-><init>()V

    .line 260
    .restart local v2       #categoryItem:Lcom/htc/store/module/vo/CategoryItem;
    invoke-virtual {v2, v7}, Lcom/htc/store/module/vo/CategoryItem;->setOnlineId(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v2, v1}, Lcom/htc/store/module/vo/CategoryItem;->setOnlineActionTypeOnClick(I)V

    .line 262
    iget-object v10, v9, Lcom/htc/store/module/rest/RestResult;->mAdditional2:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v2, v10}, Lcom/htc/store/module/vo/CategoryItem;->setOnlineLabel(Ljava/lang/String;)V

    .line 263
    iget-object v10, v9, Lcom/htc/store/module/rest/RestResult;->mAdditional3:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v2, v10}, Lcom/htc/store/module/vo/CategoryItem;->setOnlinePageType(I)V

    .line 264
    invoke-virtual {v0, v2}, Lcom/htc/store/provider/AccessHelper;->addCategoryItem(Lcom/htc/store/module/vo/CategoryItem;)J

    move-result-wide v3

    .line 265
    .local v3, id:J
    invoke-virtual {v2, v3, v4}, Lcom/htc/store/module/vo/CategoryItem;->setId(J)V

    .line 267
    .end local v3           #id:J
    :cond_1
    if-nez v6, :cond_4

    .line 268
    new-instance v6, Lcom/htc/store/module/vo/GetMoreMappingItem;

    .end local v6           #mappingItem:Lcom/htc/store/module/vo/GetMoreMappingItem;
    invoke-direct {v6, v2}, Lcom/htc/store/module/vo/GetMoreMappingItem;-><init>(Lcom/htc/store/module/vo/CategoryItem;)V

    .line 269
    .restart local v6       #mappingItem:Lcom/htc/store/module/vo/GetMoreMappingItem;
    invoke-virtual {v6, v5}, Lcom/htc/store/module/vo/GetMoreMappingItem;->setKey(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v0, v6}, Lcom/htc/store/provider/AccessHelper;->addGetMoreMappingItem(Lcom/htc/store/module/vo/GetMoreMappingItem;)J

    .line 276
    .end local v1           #actionType:I
    .end local v7           #onlineId:Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-virtual {v8}, Lcom/htc/store/module/rest/RestHelper;->destroy()V

    .line 281
    .end local v8           #restHelper:Lcom/htc/store/module/rest/RestHelper;
    .end local v9           #restResult:Lcom/htc/store/module/rest/RestResult;
    :cond_3
    :goto_1
    return-object v2

    .line 272
    .restart local v1       #actionType:I
    .restart local v7       #onlineId:Ljava/lang/String;
    .restart local v8       #restHelper:Lcom/htc/store/module/rest/RestHelper;
    .restart local v9       #restResult:Lcom/htc/store/module/rest/RestResult;
    :cond_4
    invoke-virtual {v6, v2}, Lcom/htc/store/module/vo/GetMoreMappingItem;->copyFromCategoryItem(Lcom/htc/store/module/vo/CategoryItem;)V

    .line 273
    invoke-virtual {v0, v6}, Lcom/htc/store/provider/AccessHelper;->updateGetMoreMappingItem(Lcom/htc/store/module/vo/GetMoreMappingItem;)Z

    goto :goto_0

    .line 278
    .end local v1           #actionType:I
    .end local v7           #onlineId:Ljava/lang/String;
    .end local v8           #restHelper:Lcom/htc/store/module/rest/RestHelper;
    .end local v9           #restResult:Lcom/htc/store/module/rest/RestResult;
    :cond_5
    invoke-static {}, Lcom/htc/store/activity/DispatchActivity;->access$100()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "Network is not available."

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 239
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/DispatchActivity$DoGetMoreTask;->doInBackground([Ljava/lang/Object;)Lcom/htc/store/module/vo/CategoryItem;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/htc/store/module/vo/CategoryItem;)V
    .locals 7
    .parameter "item"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 286
    invoke-static {}, Lcom/htc/store/activity/DispatchActivity;->access$100()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "onPostExecute: DoGetMoreTask"

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 287
    iget-object v2, p0, Lcom/htc/store/activity/DispatchActivity$DoGetMoreTask;->this$0:Lcom/htc/store/activity/DispatchActivity;

    iget-boolean v2, v2, Lcom/htc/store/activity/BaseActivity;->mOnBackPressed:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/htc/store/activity/DispatchActivity$DoGetMoreTask;->this$0:Lcom/htc/store/activity/DispatchActivity;

    invoke-virtual {v2}, Lcom/htc/store/activity/DispatchActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_2

    .line 288
    if-eqz p1, :cond_4

    .line 289
    invoke-virtual {p1}, Lcom/htc/store/module/vo/CategoryItem;->getOnlineActionTypeOnClick()I

    move-result v1

    .line 290
    .local v1, actionType:I
    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 292
    :cond_0
    iget-object v2, p0, Lcom/htc/store/activity/DispatchActivity$DoGetMoreTask;->this$0:Lcom/htc/store/activity/DispatchActivity;

    invoke-virtual {v2}, Lcom/htc/store/activity/DispatchActivity;->getContext()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/htc/store/util/ActivityUtils;->startCategoryListActivity(Landroid/content/Context;Lcom/htc/store/module/vo/CategoryItem;)V

    .line 296
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/htc/store/activity/DispatchActivity$DoGetMoreTask;->this$0:Lcom/htc/store/activity/DispatchActivity;

    invoke-virtual {v2}, Lcom/htc/store/activity/DispatchActivity;->finish()V

    .line 312
    .end local v1           #actionType:I
    :cond_2
    :goto_1
    return-void

    .line 293
    .restart local v1       #actionType:I
    :cond_3
    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 294
    iget-object v2, p0, Lcom/htc/store/activity/DispatchActivity$DoGetMoreTask;->this$0:Lcom/htc/store/activity/DispatchActivity;

    invoke-virtual {v2}, Lcom/htc/store/activity/DispatchActivity;->getContext()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/htc/store/util/ActivityUtils;->startItemListActivity(Landroid/content/Context;Lcom/htc/store/module/vo/CategoryItem;)V

    goto :goto_0

    .line 298
    .end local v1           #actionType:I
    :cond_4
    const/4 v0, 0x0

    .line 299
    .local v0, action:I
    iget-object v2, p0, Lcom/htc/store/activity/DispatchActivity$DoGetMoreTask;->this$0:Lcom/htc/store/activity/DispatchActivity;

    invoke-virtual {v2}, Lcom/htc/store/activity/DispatchActivity;->getContext()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/store/util/CommonUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 300
    const/4 v0, 0x3

    .line 305
    :goto_2
    iget-object v2, p0, Lcom/htc/store/activity/DispatchActivity$DoGetMoreTask;->this$0:Lcom/htc/store/activity/DispatchActivity;

    iget-boolean v2, v2, Lcom/htc/store/activity/BaseActivity;->mOnPause:Z

    if-nez v2, :cond_6

    .line 306
    iget-object v2, p0, Lcom/htc/store/activity/DispatchActivity$DoGetMoreTask;->this$0:Lcom/htc/store/activity/DispatchActivity;

    #calls: Lcom/htc/store/activity/DispatchActivity;->doAction(I)V
    invoke-static {v2, v0}, Lcom/htc/store/activity/DispatchActivity;->access$200(Lcom/htc/store/activity/DispatchActivity;I)V

    goto :goto_1

    .line 302
    :cond_5
    invoke-static {}, Lcom/htc/store/activity/DispatchActivity;->access$100()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "Network is not available."

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    const/4 v0, 0x2

    goto :goto_2

    .line 308
    :cond_6
    iget-object v2, p0, Lcom/htc/store/activity/DispatchActivity$DoGetMoreTask;->this$0:Lcom/htc/store/activity/DispatchActivity;

    #setter for: Lcom/htc/store/activity/DispatchActivity;->mActionOnResume:I
    invoke-static {v2, v0}, Lcom/htc/store/activity/DispatchActivity;->access$302(Lcom/htc/store/activity/DispatchActivity;I)I

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 239
    check-cast p1, Lcom/htc/store/module/vo/CategoryItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/DispatchActivity$DoGetMoreTask;->onPostExecute(Lcom/htc/store/module/vo/CategoryItem;)V

    return-void
.end method
