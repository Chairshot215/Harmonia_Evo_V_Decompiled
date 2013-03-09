.class public Lcom/htc/store/receiver/RequestReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RequestReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/store/receiver/RequestReceiver$QueryItemsTask;,
        Lcom/htc/store/receiver/RequestReceiver$GetMyActivityOnlineItemIdsBySDMTask;,
        Lcom/htc/store/receiver/RequestReceiver$DownloadSoundsetTask;
    }
.end annotation


# static fields
.field private static final CASE_ACTION_DOWNLOAD_ITEM:I = 0x65

.field private static final CASE_ACTION_DOWNLOAD_ITEM_BY_SDM:I = 0x2

.field private static final CASE_ACTION_DOWNLOAD_SOUNDSET:I = 0x66

.field private static final CASE_ACTION_GET_MY_ACTIVITY_ONLINE_ITEM_IDS_BY_SDM:I = 0x1

.field private static final CASE_ACTION_QUERY_ITEM_BY_SDM:I = 0x3

.field private static final HANDLER:Ljava/lang/String; = "request://"

.field private static final TAG:Ljava/lang/String;

.field private static sUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 30
    const-class v0, Lcom/htc/store/receiver/RequestReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/store/receiver/RequestReceiver;->TAG:Ljava/lang/String;

    .line 44
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/htc/store/receiver/RequestReceiver;->sUriMatcher:Landroid/content/UriMatcher;

    .line 46
    sget-object v0, Lcom/htc/store/receiver/RequestReceiver;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.store_sdm"

    const-string v2, "com.htc.store.action.GET_MY_ACTIVITY_ONLINE_ITEM_IDS"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 47
    sget-object v0, Lcom/htc/store/receiver/RequestReceiver;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.store_sdm"

    const-string v2, "com.htc.store.action.DOWNLOAD_ITEM"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 48
    sget-object v0, Lcom/htc/store/receiver/RequestReceiver;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.store_sdm"

    const-string v2, "com.htc.store.action.GET_ONLINE_ITEMS"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 51
    sget-object v0, Lcom/htc/store/receiver/RequestReceiver;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.store_store"

    const-string v2, "com.htc.store.action.DOWNLOAD_ITEM"

    const/16 v3, 0x65

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 52
    sget-object v0, Lcom/htc/store/receiver/RequestReceiver;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.store_store"

    const-string v2, "com.htc.store.action.DOWNLOAD_SOUNDSET"

    const/16 v3, 0x66

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 255
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/htc/store/receiver/RequestReceiver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private downloadItem(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 149
    const-string v0, "item_download_title"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 150
    .local v4, title:Ljava/lang/String;
    const-string v0, "online_item_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 151
    .local v5, onlineId:Ljava/lang/String;
    const-string v0, "online_item_version_name"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 152
    .local v6, version:Ljava/lang/String;
    const-string v0, "online_item_content_type"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 153
    .local v7, contentType:I
    const-string v0, "item_download_src"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 154
    .local v8, src:Ljava/lang/String;
    const-string v0, "item_make_noise"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 155
    .local v2, isMakingNoise:Z
    const-string v0, "item_download_for_update"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 159
    .local v9, isForUpdate:Z
    new-instance v10, Ljava/lang/Thread;

    new-instance v0, Lcom/htc/store/receiver/RequestReceiver$1;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v9}, Lcom/htc/store/receiver/RequestReceiver$1;-><init>(Lcom/htc/store/receiver/RequestReceiver;ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-direct {v10, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    .line 172
    return-void
.end method

.method private downloadItemBySDM(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 139
    sget-object v2, Lcom/htc/store/receiver/RequestReceiver;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "downloadItemBySDM"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    const-string v2, "online_item_id"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, onlineId:Ljava/lang/String;
    const-string v2, "online_item_content_type"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, onlineContentType:Ljava/lang/String;
    sget-object v2, Lcom/htc/store/receiver/RequestReceiver;->TAG:Ljava/lang/String;

    const-string v3, "not implemented"

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method private downloadSoundset(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    .line 175
    const-string v0, "soundset_parcelable"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/htc/store/module/vo/ItemItem;

    .line 176
    .local v6, item:Lcom/htc/store/module/vo/ItemItem;
    if-eqz v6, :cond_0

    .line 178
    const-string v0, "item_make_noise"

    invoke-virtual {p2, v0, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 179
    .local v4, isMakingNoise:Z
    const-string v0, "item_download_for_update"

    invoke-virtual {p2, v0, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 181
    .local v5, isForUpdate:Z
    new-instance v0, Lcom/htc/store/receiver/RequestReceiver$DownloadSoundsetTask;

    invoke-virtual {v6}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/htc/store/receiver/RequestReceiver$DownloadSoundsetTask;-><init>(Lcom/htc/store/receiver/RequestReceiver;Landroid/content/Context;Ljava/lang/String;ZZ)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/htc/store/receiver/RequestReceiver$DownloadSoundsetTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 185
    .end local v4           #isMakingNoise:Z
    .end local v5           #isForUpdate:Z
    :goto_0
    return-void

    .line 183
    :cond_0
    sget-object v0, Lcom/htc/store/receiver/RequestReceiver;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "item is empty"

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static getAuthorityUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "requester"
    .parameter "action"

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "request://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getMyActivityOnlineItemIdsBySDM(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 132
    sget-object v1, Lcom/htc/store/receiver/RequestReceiver;->TAG:Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "getMyActivityOnlineItemIdsBySDM"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    const-string v1, "online_item_content_type"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, onlineContentType:Ljava/lang/String;
    sget-object v1, Lcom/htc/store/receiver/RequestReceiver;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "get items in type "

    aput-object v3, v2, v4

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    new-instance v1, Lcom/htc/store/receiver/RequestReceiver$GetMyActivityOnlineItemIdsBySDMTask;

    invoke-direct {v1, p0, p1, v0}, Lcom/htc/store/receiver/RequestReceiver$GetMyActivityOnlineItemIdsBySDMTask;-><init>(Lcom/htc/store/receiver/RequestReceiver;Landroid/content/Context;Ljava/lang/String;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/htc/store/receiver/RequestReceiver$GetMyActivityOnlineItemIdsBySDMTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 136
    return-void
.end method

.method private queryItem(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 121
    const-string v2, "online_item_ids"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 122
    .local v1, onlineIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "online_item_content_type"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, contentType:Ljava/lang/String;
    new-instance v2, Lcom/htc/store/receiver/RequestReceiver$QueryItemsTask;

    invoke-direct {v2, p0, p1, v1, v0}, Lcom/htc/store/receiver/RequestReceiver$QueryItemsTask;-><init>(Lcom/htc/store/receiver/RequestReceiver;Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/htc/store/receiver/RequestReceiver$QueryItemsTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 124
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 57
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, action:Ljava/lang/String;
    const-string v3, "requester"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, requester:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 61
    sget-object v3, Lcom/htc/store/receiver/RequestReceiver;->TAG:Ljava/lang/String;

    new-array v4, v8, [Ljava/lang/Object;

    const-string v5, "requester is "

    aput-object v5, v4, v6

    aput-object v2, v4, v7

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    sget-object v3, Lcom/htc/store/receiver/RequestReceiver;->TAG:Ljava/lang/String;

    new-array v4, v8, [Ljava/lang/Object;

    const-string v5, "action is "

    aput-object v5, v4, v6

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    sget-object v3, Lcom/htc/store/receiver/RequestReceiver;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-static {v2, v0}, Lcom/htc/store/receiver/RequestReceiver;->getAuthorityUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 64
    .local v1, actionCase:I
    sparse-switch v1, :sswitch_data_0

    .line 88
    sget-object v3, Lcom/htc/store/receiver/RequestReceiver;->TAG:Ljava/lang/String;

    new-array v4, v8, [Ljava/lang/Object;

    const-string v5, "unknown action "

    aput-object v5, v4, v6

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    .end local v1           #actionCase:I
    :goto_0
    return-void

    .line 66
    .restart local v1       #actionCase:I
    :sswitch_0
    sget-object v3, Lcom/htc/store/receiver/RequestReceiver;->TAG:Ljava/lang/String;

    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, "CASE_ACTION_GET_MY_ACTIVITY_ONLINE_ITEM_IDS_BY_SDM"

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/htc/store/receiver/RequestReceiver;->getMyActivityOnlineItemIdsBySDM(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 70
    :sswitch_1
    sget-object v3, Lcom/htc/store/receiver/RequestReceiver;->TAG:Ljava/lang/String;

    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, "CASE_ACTION_DOWNLOAD_ITEM_BY_SDM"

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/htc/store/receiver/RequestReceiver;->downloadItemBySDM(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 74
    :sswitch_2
    sget-object v3, Lcom/htc/store/receiver/RequestReceiver;->TAG:Ljava/lang/String;

    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, "CASE_ACTION_QUERY_ITEM_BY_SDM"

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/htc/store/receiver/RequestReceiver;->queryItem(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 80
    :sswitch_3
    sget-object v3, Lcom/htc/store/receiver/RequestReceiver;->TAG:Ljava/lang/String;

    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, "CASE_ACTION_DOWNLOAD_ITEM"

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/htc/store/receiver/RequestReceiver;->downloadItem(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 84
    :sswitch_4
    sget-object v3, Lcom/htc/store/receiver/RequestReceiver;->TAG:Ljava/lang/String;

    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, "CASE_ACTION_DOWNLOAD_SOUNDSET"

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/htc/store/receiver/RequestReceiver;->downloadSoundset(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 92
    .end local v1           #actionCase:I
    :cond_0
    sget-object v3, Lcom/htc/store/receiver/RequestReceiver;->TAG:Ljava/lang/String;

    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, "unknown requester"

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 64
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x65 -> :sswitch_3
        0x66 -> :sswitch_4
    .end sparse-switch
.end method
