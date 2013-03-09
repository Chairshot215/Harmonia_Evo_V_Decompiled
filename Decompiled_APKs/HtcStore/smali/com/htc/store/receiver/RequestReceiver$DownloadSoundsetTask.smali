.class Lcom/htc/store/receiver/RequestReceiver$DownloadSoundsetTask;
.super Landroid/os/AsyncTask;
.source "RequestReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/receiver/RequestReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadSoundsetTask"
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
.field private mContext:Landroid/content/Context;

.field private mIsForUpdate:Z

.field private mIsMakingNoise:Z

.field private mOnlineId:Ljava/lang/String;

.field private mSoundsetItem:Lcom/htc/store/module/vo/SoundsetItem;

.field final synthetic this$0:Lcom/htc/store/receiver/RequestReceiver;


# direct methods
.method public constructor <init>(Lcom/htc/store/receiver/RequestReceiver;Landroid/content/Context;Ljava/lang/String;ZZ)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "onlineId"
    .parameter "isMakingNoise"
    .parameter "isForUpdate"

    .prologue
    .line 195
    iput-object p1, p0, Lcom/htc/store/receiver/RequestReceiver$DownloadSoundsetTask;->this$0:Lcom/htc/store/receiver/RequestReceiver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 196
    iput-object p2, p0, Lcom/htc/store/receiver/RequestReceiver$DownloadSoundsetTask;->mContext:Landroid/content/Context;

    .line 197
    iput-object p3, p0, Lcom/htc/store/receiver/RequestReceiver$DownloadSoundsetTask;->mOnlineId:Ljava/lang/String;

    .line 198
    iput-boolean p4, p0, Lcom/htc/store/receiver/RequestReceiver$DownloadSoundsetTask;->mIsMakingNoise:Z

    .line 199
    iput-boolean p5, p0, Lcom/htc/store/receiver/RequestReceiver$DownloadSoundsetTask;->mIsForUpdate:Z

    .line 200
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "arg0"

    .prologue
    .line 204
    invoke-static {}, Lcom/htc/store/receiver/RequestReceiver;->access$000()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "DownloadSoundsetTask : doInBackground"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    new-instance v0, Lcom/htc/store/provider/AccessHelper;

    iget-object v1, p0, Lcom/htc/store/receiver/RequestReceiver$DownloadSoundsetTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/store/provider/AccessHelper;-><init>(Landroid/content/Context;)V

    .line 206
    .local v0, accessHelper:Lcom/htc/store/provider/AccessHelper;
    iget-object v1, p0, Lcom/htc/store/receiver/RequestReceiver$DownloadSoundsetTask;->mOnlineId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/store/provider/AccessHelper;->getSoundsetItemByOnlineId(Ljava/lang/String;)Lcom/htc/store/module/vo/SoundsetItem;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/store/receiver/RequestReceiver$DownloadSoundsetTask;->mSoundsetItem:Lcom/htc/store/module/vo/SoundsetItem;

    .line 207
    const/4 v1, 0x0

    return-object v1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 212
    invoke-static {}, Lcom/htc/store/receiver/RequestReceiver;->access$000()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "DownloadSoundsetTask : onPostExecute"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    iget-boolean v0, p0, Lcom/htc/store/receiver/RequestReceiver$DownloadSoundsetTask;->mIsMakingNoise:Z

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/htc/store/receiver/RequestReceiver$DownloadSoundsetTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/store/receiver/RequestReceiver$DownloadSoundsetTask;->mSoundsetItem:Lcom/htc/store/module/vo/SoundsetItem;

    iget-boolean v2, p0, Lcom/htc/store/receiver/RequestReceiver$DownloadSoundsetTask;->mIsForUpdate:Z

    invoke-static {v0, v1, v2}, Lcom/htc/store/util/DownloadUtils;->downloadSoundsetMakeNoise(Landroid/content/Context;Lcom/htc/store/module/vo/SoundsetItem;Z)V

    .line 218
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/store/receiver/RequestReceiver$DownloadSoundsetTask;->mContext:Landroid/content/Context;

    .line 219
    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/htc/store/receiver/RequestReceiver$DownloadSoundsetTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/store/receiver/RequestReceiver$DownloadSoundsetTask;->mSoundsetItem:Lcom/htc/store/module/vo/SoundsetItem;

    iget-boolean v2, p0, Lcom/htc/store/receiver/RequestReceiver$DownloadSoundsetTask;->mIsForUpdate:Z

    invoke-static {v0, v1, v2}, Lcom/htc/store/util/DownloadUtils;->downloadSoundset(Landroid/content/Context;Lcom/htc/store/module/vo/SoundsetItem;Z)V

    goto :goto_0
.end method
