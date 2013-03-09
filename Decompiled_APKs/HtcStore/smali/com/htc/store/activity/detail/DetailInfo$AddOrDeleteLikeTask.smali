.class Lcom/htc/store/activity/detail/DetailInfo$AddOrDeleteLikeTask;
.super Landroid/os/AsyncTask;
.source "DetailInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/detail/DetailInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddOrDeleteLikeTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
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
    .line 2122
    iput-object p1, p0, Lcom/htc/store/activity/detail/DetailInfo$AddOrDeleteLikeTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/store/activity/detail/DetailInfo;Lcom/htc/store/activity/detail/DetailInfo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2122
    invoke-direct {p0, p1}, Lcom/htc/store/activity/detail/DetailInfo$AddOrDeleteLikeTask;-><init>(Lcom/htc/store/activity/detail/DetailInfo;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 11
    .parameter "params"

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2125
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    const-string v7, "doInBackground: AddOrDeleteLikeTask"

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2126
    iget-object v5, p0, Lcom/htc/store/activity/detail/DetailInfo$AddOrDeleteLikeTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;
    invoke-static {v5}, Lcom/htc/store/activity/detail/DetailInfo;->access$6900(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/module/rest/RestHelper;

    move-result-object v5

    if-nez v5, :cond_0

    .line 2127
    iget-object v5, p0, Lcom/htc/store/activity/detail/DetailInfo$AddOrDeleteLikeTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    new-instance v6, Lcom/htc/store/module/rest/RestHelper;

    iget-object v7, p0, Lcom/htc/store/activity/detail/DetailInfo$AddOrDeleteLikeTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #calls: Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;
    invoke-static {v7}, Lcom/htc/store/activity/detail/DetailInfo;->access$8100(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/htc/store/module/rest/RestHelper;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/htc/store/activity/detail/DetailInfo;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;
    invoke-static {v5, v6}, Lcom/htc/store/activity/detail/DetailInfo;->access$6902(Lcom/htc/store/activity/detail/DetailInfo;Lcom/htc/store/module/rest/RestHelper;)Lcom/htc/store/module/rest/RestHelper;

    .line 2128
    :cond_0
    iget-object v5, p0, Lcom/htc/store/activity/detail/DetailInfo$AddOrDeleteLikeTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mItemItem:Lcom/htc/store/module/vo/ItemItem;
    invoke-static {v5}, Lcom/htc/store/activity/detail/DetailInfo;->access$700(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/store/module/vo/ItemItem;->getOnlineUserLike()I

    move-result v5

    if-ne v5, v3, :cond_1

    move v2, v3

    .line 2129
    .local v2, liked:Z
    :goto_0
    iget-object v5, p0, Lcom/htc/store/activity/detail/DetailInfo$AddOrDeleteLikeTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mItemItem:Lcom/htc/store/module/vo/ItemItem;
    invoke-static {v5}, Lcom/htc/store/activity/detail/DetailInfo;->access$700(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/store/module/vo/ItemItem;->getOnlineV1Id()Ljava/lang/String;

    move-result-object v0

    .line 2130
    .local v0, appId:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/store/activity/detail/DetailInfo$AddOrDeleteLikeTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mItemItem:Lcom/htc/store/module/vo/ItemItem;
    invoke-static {v5}, Lcom/htc/store/activity/detail/DetailInfo;->access$700(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/store/module/vo/ItemItem;->getContentType()I

    move-result v1

    .line 2131
    .local v1, appType:I
    if-eqz v2, :cond_2

    .line 2132
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    const-string v7, "AddOrDeleteLikeTask - remove like, appId = "

    aput-object v7, v6, v4

    aput-object v0, v6, v3

    const-string v3, ", appType = "

    aput-object v3, v6, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v9

    invoke-static {v5, v6}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2133
    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo$AddOrDeleteLikeTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;
    invoke-static {v3}, Lcom/htc/store/activity/detail/DetailInfo;->access$6900(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/module/rest/RestHelper;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/htc/store/module/rest/RestHelper;->deleteLike(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2136
    :goto_1
    return-object v3

    .end local v0           #appId:Ljava/lang/String;
    .end local v1           #appType:I
    .end local v2           #liked:Z
    :cond_1
    move v2, v4

    .line 2128
    goto :goto_0

    .line 2135
    .restart local v0       #appId:Ljava/lang/String;
    .restart local v1       #appType:I
    .restart local v2       #liked:Z
    :cond_2
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    const-string v7, "AddOrDeleteLikeTask - add like, appId = "

    aput-object v7, v6, v4

    aput-object v0, v6, v3

    const-string v3, ", appType = "

    aput-object v3, v6, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v9

    invoke-static {v5, v6}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2136
    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo$AddOrDeleteLikeTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;
    invoke-static {v3}, Lcom/htc/store/activity/detail/DetailInfo;->access$6900(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/module/rest/RestHelper;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/htc/store/module/rest/RestHelper;->addLike(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2122
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/detail/DetailInfo$AddOrDeleteLikeTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 5
    .parameter "result"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2142
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "onPostExecute: AddOrDeleteLikeTask"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2143
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 2144
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "AddOrDeleteLikeTask: success"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2145
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$AddOrDeleteLikeTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #calls: Lcom/htc/store/activity/detail/DetailInfo;->executeCommentLikeInfoTask()V
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$8200(Lcom/htc/store/activity/detail/DetailInfo;)V

    .line 2153
    :goto_0
    return-void

    .line 2147
    :cond_0
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "AddOrDeleteLikeTask: result is not success"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2148
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$AddOrDeleteLikeTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mButtonLike:Lcom/htc/widget/HeaderBarImage;
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$1300(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/widget/HeaderBarImage;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/widget/HeaderBarImage;->setEnabled(Z)V

    .line 2149
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$AddOrDeleteLikeTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnPause:Z
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$8300(Lcom/htc/store/activity/detail/DetailInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2150
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$AddOrDeleteLikeTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #calls: Lcom/htc/store/activity/detail/DetailInfo;->showCommonErrorDialog()V
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$8400(Lcom/htc/store/activity/detail/DetailInfo;)V

    .line 2151
    :cond_1
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$AddOrDeleteLikeTask;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #calls: Lcom/htc/store/activity/detail/DetailInfo;->hideHeaderProgressBar()V
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$4800(Lcom/htc/store/activity/detail/DetailInfo;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2122
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/detail/DetailInfo$AddOrDeleteLikeTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
