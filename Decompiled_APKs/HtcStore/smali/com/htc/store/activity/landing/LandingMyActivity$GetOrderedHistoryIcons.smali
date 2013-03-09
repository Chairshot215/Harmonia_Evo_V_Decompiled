.class Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;
.super Landroid/os/AsyncTask;
.source "LandingMyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/landing/LandingMyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetOrderedHistoryIcons"
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
.field private mDownloading:Z

.field private mIconURLsToDownload:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIconWidthHeight:I

.field private mImageTTL:J

.field final synthetic this$0:Lcom/htc/store/activity/landing/LandingMyActivity;


# direct methods
.method public constructor <init>(Lcom/htc/store/activity/landing/LandingMyActivity;)V
    .locals 2
    .parameter

    .prologue
    .line 1117
    iput-object p1, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1118
    invoke-virtual {p1}, Lcom/htc/store/activity/landing/LandingMyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;->mIconWidthHeight:I

    .line 1119
    #getter for: Lcom/htc/store/activity/BaseActivity;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;
    invoke-static {p1}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$5000(Lcom/htc/store/activity/landing/LandingMyActivity;)Lcom/htc/store/module/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/store/module/PreferenceManager;->getImageTTL()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;->mImageTTL:J

    .line 1120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;->mIconURLsToDownload:Ljava/util/ArrayList;

    .line 1121
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 12
    .parameter "params"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1130
    invoke-static {}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$000()Ljava/lang/String;

    move-result-object v6

    new-array v7, v11, [Ljava/lang/Object;

    const-string v8, "doInBackground: GetOrderedHistoryItemsIconsTask"

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1131
    aget-object v6, p1, v10

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1132
    .local v2, forceUpdateImage:Z
    if-eqz v2, :cond_0

    .line 1133
    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #getter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static {v6}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$1500(Lcom/htc/store/activity/landing/LandingMyActivity;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/store/provider/AccessHelper;->getMyActivityItemsByPurchased()Ljava/util/ArrayList;

    move-result-object v1

    .line 1134
    .local v1, allImageUrls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    invoke-virtual {p0, v1}, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;->insert(Ljava/util/ArrayList;)V

    .line 1136
    .end local v1           #allImageUrls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    :cond_0
    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;->mIconURLsToDownload:Ljava/util/ArrayList;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;->mIconURLsToDownload:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    .line 1137
    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;->mIconURLsToDownload:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1138
    .local v4, remainedCount:I
    invoke-static {}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$000()Ljava/lang/String;

    move-result-object v6

    new-array v7, v11, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "doInBackground: GetOrderedHistoryItemsIconsTask - originally remainedCount is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1139
    :goto_0
    if-lez v4, :cond_4

    .line 1140
    invoke-static {}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$000()Ljava/lang/String;

    move-result-object v6

    new-array v7, v11, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "doInBackground: GetOrderedHistoryItemsIconsTask - remainedCount is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1141
    const/4 v5, 0x0

    .line 1142
    .local v5, url:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;->mIconURLsToDownload:Ljava/util/ArrayList;

    monitor-enter v7

    .line 1143
    :try_start_0
    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;->mIconURLsToDownload:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1144
    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;->mIconURLsToDownload:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 1145
    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;->mIconURLsToDownload:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1147
    :cond_1
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1148
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 1149
    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    iget v7, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;->mIconWidthHeight:I

    iget-wide v8, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;->mImageTTL:J

    #calls: Lcom/htc/store/activity/landing/LandingMyActivity;->downloadIcon(Ljava/lang/String;IJ)Z
    invoke-static {v6, v5, v7, v8, v9}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$3300(Lcom/htc/store/activity/landing/LandingMyActivity;Ljava/lang/String;IJ)Z

    move-result v3

    .line 1150
    .local v3, publishProgress:Z
    if-eqz v3, :cond_2

    .line 1151
    new-array v6, v10, [Ljava/lang/Object;

    invoke-virtual {p0, v6}, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;->publishProgress([Ljava/lang/Object;)V

    .line 1153
    :cond_2
    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnPause:Z
    invoke-static {v6}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$5100(Lcom/htc/store/activity/landing/LandingMyActivity;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p0}, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1154
    :cond_3
    iput-boolean v10, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;->mDownloading:Z

    .line 1155
    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    invoke-static {v6, v11}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$2676(Lcom/htc/store/activity/landing/LandingMyActivity;I)I

    .line 1172
    .end local v3           #publishProgress:Z
    .end local v4           #remainedCount:I
    .end local v5           #url:Ljava/lang/String;
    :cond_4
    :goto_1
    const/4 v6, 0x0

    return-object v6

    .line 1147
    .restart local v4       #remainedCount:I
    .restart local v5       #url:Ljava/lang/String;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 1159
    :cond_5
    invoke-static {}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$000()Ljava/lang/String;

    move-result-object v6

    new-array v7, v11, [Ljava/lang/Object;

    const-string v8, "doInBackground: url is empty"

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1161
    :cond_6
    iget-object v7, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;->mIconURLsToDownload:Ljava/util/ArrayList;

    monitor-enter v7

    .line 1162
    :try_start_2
    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;->mIconURLsToDownload:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1163
    monitor-exit v7

    goto/16 :goto_0

    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6

    .line 1166
    .end local v4           #remainedCount:I
    .end local v5           #url:Ljava/lang/String;
    :cond_7
    iget-object v6, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;->mIconURLsToDownload:Ljava/util/ArrayList;

    if-eqz v6, :cond_8

    .line 1167
    invoke-static {}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$000()Ljava/lang/String;

    move-result-object v6

    new-array v7, v11, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mIconURLsToDownload.size() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;->mIconURLsToDownload:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 1169
    :cond_8
    invoke-static {}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$000()Ljava/lang/String;

    move-result-object v6

    new-array v7, v11, [Ljava/lang/Object;

    const-string v8, "mIconURLsToDownload is null"

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1110
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;->doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public insert(Ljava/util/ArrayList;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/vo/MyActivityItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 1206
    invoke-static {}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$000()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insert to downloading image task, items count "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1207
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1208
    iget-object v4, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;->mIconURLsToDownload:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1209
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/store/module/vo/MyActivityItem;

    .line 1210
    .local v1, item:Lcom/htc/store/module/vo/MyActivityItem;
    if-eqz v1, :cond_0

    .line 1211
    invoke-virtual {v1}, Lcom/htc/store/module/vo/MyActivityItem;->getItemIconUrl()Ljava/lang/String;

    move-result-object v2

    .line 1212
    .local v2, url:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;->mIconURLsToDownload:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1213
    iget-object v3, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;->mIconURLsToDownload:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1214
    invoke-static {}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$000()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "insert url is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/htc/store/module/vo/MyActivityItem;->getItemIconUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1220
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #item:Lcom/htc/store/module/vo/MyActivityItem;
    .end local v2           #url:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1216
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #item:Lcom/htc/store/module/vo/MyActivityItem;
    .restart local v2       #url:Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$000()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "url is empty"

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1220
    .end local v1           #item:Lcom/htc/store/module/vo/MyActivityItem;
    .end local v2           #url:Ljava/lang/String;
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1222
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method public isDownloading()Z
    .locals 1

    .prologue
    .line 1202
    iget-boolean v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;->mDownloading:Z

    return v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 5
    .parameter "result"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1190
    invoke-static {}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "onPostExecute: GetOrderedHistoryItemsIconsTask"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1191
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnBackPressed:Z
    invoke-static {v0}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$5500(Lcom/htc/store/activity/landing/LandingMyActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnDestroy:Z
    invoke-static {v0}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$5600(Lcom/htc/store/activity/landing/LandingMyActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1192
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnPause:Z
    invoke-static {v0}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$5700(Lcom/htc/store/activity/landing/LandingMyActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1193
    iput-boolean v3, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;->mDownloading:Z

    .line 1194
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #calls: Lcom/htc/store/activity/landing/LandingMyActivity;->updateProgress()V
    invoke-static {v0}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$2700(Lcom/htc/store/activity/landing/LandingMyActivity;)V

    .line 1199
    :cond_0
    :goto_0
    return-void

    .line 1196
    :cond_1
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    invoke-static {v0, v4}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$2676(Lcom/htc/store/activity/landing/LandingMyActivity;I)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1110
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 1125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;->mDownloading:Z

    .line 1126
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 1177
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnBackPressed:Z
    invoke-static {v0}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$5200(Lcom/htc/store/activity/landing/LandingMyActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnDestroy:Z
    invoke-static {v0}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$5300(Lcom/htc/store/activity/landing/LandingMyActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1178
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnPause:Z
    invoke-static {v0}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$5400(Lcom/htc/store/activity/landing/LandingMyActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1179
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #getter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mAdapter:Lcom/htc/store/module/adapter/MyActivityAdapter;
    invoke-static {v0}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$2300(Lcom/htc/store/activity/landing/LandingMyActivity;)Lcom/htc/store/module/adapter/MyActivityAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1180
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #getter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mAdapter:Lcom/htc/store/module/adapter/MyActivityAdapter;
    invoke-static {v0}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$2300(Lcom/htc/store/activity/landing/LandingMyActivity;)Lcom/htc/store/module/adapter/MyActivityAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/store/module/adapter/MyActivityAdapter;->notifyDataSetChanged()V

    .line 1186
    :cond_0
    :goto_0
    return-void

    .line 1183
    :cond_1
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetOrderedHistoryIcons;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$2676(Lcom/htc/store/activity/landing/LandingMyActivity;I)I

    goto :goto_0
.end method
