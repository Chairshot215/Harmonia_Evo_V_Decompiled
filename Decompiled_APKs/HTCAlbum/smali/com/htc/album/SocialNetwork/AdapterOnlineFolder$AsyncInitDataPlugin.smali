.class Lcom/htc/album/SocialNetwork/AdapterOnlineFolder$AsyncInitDataPlugin;
.super Landroid/os/AsyncTask;
.source "AdapterOnlineFolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncInitDataPlugin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mCancelSign:Z

.field final synthetic this$0:Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;


# direct methods
.method private constructor <init>(Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;)V
    .locals 1
    .parameter

    .prologue
    .line 696
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder$AsyncInitDataPlugin;->this$0:Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 699
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder$AsyncInitDataPlugin;->mCancelSign:Z

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 7
    .parameter "arg0"

    .prologue
    .line 702
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder$AsyncInitDataPlugin;->this$0:Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    iget-object v4, v4, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mDataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder$AsyncInitDataPlugin;->this$0:Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    iget-object v4, v4, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v4, v4, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    if-nez v4, :cond_0

    .line 704
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder$AsyncInitDataPlugin;->this$0:Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    #getter for: Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->access$000(Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 705
    .local v1, accountMgr:Landroid/accounts/AccountManager;
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder$AsyncInitDataPlugin;->this$0:Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    iget-object v4, v4, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v4, v4, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mServiceURL:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 706
    .local v0, account:[Landroid/accounts/Account;
    if-eqz v0, :cond_0

    .line 708
    const/4 v3, 0x0

    .line 711
    .local v3, pdata:Lcom/htc/opensense/album/plugin/PersonData;
    :try_start_0
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder$AsyncInitDataPlugin;->this$0:Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    iget-object v4, v4, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mDataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    invoke-virtual {v4}, Lcom/htc/opensense/album/plugin/AlbumListPluginBase;->onInit()V

    .line 712
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder$AsyncInitDataPlugin;->this$0:Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    iget-object v4, v4, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mDataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    const/4 v5, 0x0

    aget-object v5, v0, v5

    invoke-virtual {v4, v5}, Lcom/htc/opensense/album/plugin/AlbumListPluginBase;->getActiveUser(Landroid/accounts/Account;)Lcom/htc/opensense/album/plugin/PersonData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 719
    :goto_0
    if-eqz v3, :cond_0

    .line 721
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder$AsyncInitDataPlugin;->this$0:Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    iget-object v4, v4, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    .line 722
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder$AsyncInitDataPlugin;->this$0:Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    iget-object v4, v4, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v4, v4, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    iget-object v5, v3, Lcom/htc/opensense/album/plugin/PersonData;->uid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 726
    .end local v0           #account:[Landroid/accounts/Account;
    .end local v1           #accountMgr:Landroid/accounts/AccountManager;
    .end local v3           #pdata:Lcom/htc/opensense/album/plugin/PersonData;
    :cond_0
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    return-object v4

    .line 714
    .restart local v0       #account:[Landroid/accounts/Account;
    .restart local v1       #accountMgr:Landroid/accounts/AccountManager;
    .restart local v3       #pdata:Lcom/htc/opensense/album/plugin/PersonData;
    :catch_0
    move-exception v2

    .line 716
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "AdapterOnlineFolder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][AdapterOnlineFolder][onLoadData]1: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 696
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder$AsyncInitDataPlugin;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 730
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 731
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder$AsyncInitDataPlugin;->mCancelSign:Z

    .line 732
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 735
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 736
    iget-boolean v0, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder$AsyncInitDataPlugin;->mCancelSign:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder$AsyncInitDataPlugin;->this$0:Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;

    const/16 v1, 0x4ea2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 737
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 696
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder$AsyncInitDataPlugin;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
