.class Lcom/htc/dlnamediaserver/ShareFolder$2;
.super Ljava/lang/Object;
.source "ShareFolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/dlnamediaserver/ShareFolder;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dlnamediaserver/ShareFolder;


# direct methods
.method constructor <init>(Lcom/htc/dlnamediaserver/ShareFolder;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/htc/dlnamediaserver/ShareFolder$2;->this$0:Lcom/htc/dlnamediaserver/ShareFolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 158
    iget-object v4, p0, Lcom/htc/dlnamediaserver/ShareFolder$2;->this$0:Lcom/htc/dlnamediaserver/ShareFolder;

    #getter for: Lcom/htc/dlnamediaserver/ShareFolder;->mServiceCommunication:Lcom/htc/dlnamediaserver/ServiceCommunication;
    invoke-static {v4}, Lcom/htc/dlnamediaserver/ShareFolder;->access$100(Lcom/htc/dlnamediaserver/ShareFolder;)Lcom/htc/dlnamediaserver/ServiceCommunication;

    move-result-object v4

    if-nez v4, :cond_1

    .line 160
    iget-object v4, p0, Lcom/htc/dlnamediaserver/ShareFolder$2;->this$0:Lcom/htc/dlnamediaserver/ShareFolder;

    invoke-virtual {v4}, Lcom/htc/dlnamediaserver/ShareFolder;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/dlnamediaserver/ShareFolder$2;->this$0:Lcom/htc/dlnamediaserver/ShareFolder;

    const v6, 0x7f050015

    invoke-virtual {v5, v6}, Lcom/htc/dlnamediaserver/ShareFolder;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 197
    :cond_0
    iget-object v4, p0, Lcom/htc/dlnamediaserver/ShareFolder$2;->this$0:Lcom/htc/dlnamediaserver/ShareFolder;

    invoke-virtual {v4}, Lcom/htc/dlnamediaserver/ShareFolder;->finish()V

    .line 198
    return-void

    .line 165
    :cond_1
    const/4 v2, 0x0

    .local v2, k:I
    :goto_0
    iget-object v4, p0, Lcom/htc/dlnamediaserver/ShareFolder$2;->this$0:Lcom/htc/dlnamediaserver/ShareFolder;

    #getter for: Lcom/htc/dlnamediaserver/ShareFolder;->mAdapter:Lcom/htc/dlnamediaserver/ShareFolderAdapter;
    invoke-static {v4}, Lcom/htc/dlnamediaserver/ShareFolder;->access$200(Lcom/htc/dlnamediaserver/ShareFolder;)Lcom/htc/dlnamediaserver/ShareFolderAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/dlnamediaserver/ShareFolderAdapter;->getCount()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 167
    iget-object v4, p0, Lcom/htc/dlnamediaserver/ShareFolder$2;->this$0:Lcom/htc/dlnamediaserver/ShareFolder;

    #getter for: Lcom/htc/dlnamediaserver/ShareFolder;->mAdapter:Lcom/htc/dlnamediaserver/ShareFolderAdapter;
    invoke-static {v4}, Lcom/htc/dlnamediaserver/ShareFolder;->access$200(Lcom/htc/dlnamediaserver/ShareFolder;)Lcom/htc/dlnamediaserver/ShareFolderAdapter;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/htc/dlnamediaserver/ShareFolderAdapter;->getItem(I)Lcom/htc/dlnamediaserver/ShareFolderItem;

    move-result-object v4

    iget-boolean v4, v4, Lcom/htc/dlnamediaserver/ShareFolderItem;->mChecked:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 169
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/htc/dlnamediaserver/ShareFolder$2;->this$0:Lcom/htc/dlnamediaserver/ShareFolder;

    #getter for: Lcom/htc/dlnamediaserver/ShareFolder;->mRootPath:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/dlnamediaserver/ShareFolder;->access$300(Lcom/htc/dlnamediaserver/ShareFolder;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/dlnamediaserver/ShareFolder$2;->this$0:Lcom/htc/dlnamediaserver/ShareFolder;

    #getter for: Lcom/htc/dlnamediaserver/ShareFolder;->mAdapter:Lcom/htc/dlnamediaserver/ShareFolderAdapter;
    invoke-static {v5}, Lcom/htc/dlnamediaserver/ShareFolder;->access$200(Lcom/htc/dlnamediaserver/ShareFolder;)Lcom/htc/dlnamediaserver/ShareFolderAdapter;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/htc/dlnamediaserver/ShareFolderAdapter;->getItem(I)Lcom/htc/dlnamediaserver/ShareFolderItem;

    move-result-object v5

    iget-object v5, v5, Lcom/htc/dlnamediaserver/ShareFolderItem;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 171
    .local v3, theFullPath:Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/htc/dlnamediaserver/ShareFolder$2;->this$0:Lcom/htc/dlnamediaserver/ShareFolder;

    #getter for: Lcom/htc/dlnamediaserver/ShareFolder;->mServiceCommunication:Lcom/htc/dlnamediaserver/ServiceCommunication;
    invoke-static {v4}, Lcom/htc/dlnamediaserver/ShareFolder;->access$100(Lcom/htc/dlnamediaserver/ShareFolder;)Lcom/htc/dlnamediaserver/ServiceCommunication;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/htc/dlnamediaserver/ServiceCommunication;->AddSharedFolder(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .end local v3           #theFullPath:Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 172
    .restart local v3       #theFullPath:Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v0, v4

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 177
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v3           #theFullPath:Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    :goto_2
    iget-object v4, p0, Lcom/htc/dlnamediaserver/ShareFolder$2;->this$0:Lcom/htc/dlnamediaserver/ShareFolder;

    #getter for: Lcom/htc/dlnamediaserver/ShareFolder;->mAdapter:Lcom/htc/dlnamediaserver/ShareFolderAdapter;
    invoke-static {v4}, Lcom/htc/dlnamediaserver/ShareFolder;->access$200(Lcom/htc/dlnamediaserver/ShareFolder;)Lcom/htc/dlnamediaserver/ShareFolderAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/dlnamediaserver/ShareFolderAdapter;->getCount()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 179
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/htc/dlnamediaserver/ShareFolder$2;->this$0:Lcom/htc/dlnamediaserver/ShareFolder;

    #getter for: Lcom/htc/dlnamediaserver/ShareFolder;->mRootPath:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/dlnamediaserver/ShareFolder;->access$300(Lcom/htc/dlnamediaserver/ShareFolder;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/dlnamediaserver/ShareFolder$2;->this$0:Lcom/htc/dlnamediaserver/ShareFolder;

    #getter for: Lcom/htc/dlnamediaserver/ShareFolder;->mAdapter:Lcom/htc/dlnamediaserver/ShareFolderAdapter;
    invoke-static {v5}, Lcom/htc/dlnamediaserver/ShareFolder;->access$200(Lcom/htc/dlnamediaserver/ShareFolder;)Lcom/htc/dlnamediaserver/ShareFolderAdapter;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/htc/dlnamediaserver/ShareFolderAdapter;->getItem(I)Lcom/htc/dlnamediaserver/ShareFolderItem;

    move-result-object v5

    iget-object v5, v5, Lcom/htc/dlnamediaserver/ShareFolderItem;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 181
    .restart local v3       #theFullPath:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    iget-object v4, p0, Lcom/htc/dlnamediaserver/ShareFolder$2;->this$0:Lcom/htc/dlnamediaserver/ShareFolder;

    #getter for: Lcom/htc/dlnamediaserver/ShareFolder;->mDirectoryList:[Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/dlnamediaserver/ShareFolder;->access$400(Lcom/htc/dlnamediaserver/ShareFolder;)[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-ge v1, v4, :cond_4

    .line 183
    iget-object v4, p0, Lcom/htc/dlnamediaserver/ShareFolder$2;->this$0:Lcom/htc/dlnamediaserver/ShareFolder;

    #getter for: Lcom/htc/dlnamediaserver/ShareFolder;->mDirectoryList:[Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/dlnamediaserver/ShareFolder;->access$400(Lcom/htc/dlnamediaserver/ShareFolder;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 185
    iget-object v4, p0, Lcom/htc/dlnamediaserver/ShareFolder$2;->this$0:Lcom/htc/dlnamediaserver/ShareFolder;

    #getter for: Lcom/htc/dlnamediaserver/ShareFolder;->mAdapter:Lcom/htc/dlnamediaserver/ShareFolderAdapter;
    invoke-static {v4}, Lcom/htc/dlnamediaserver/ShareFolder;->access$200(Lcom/htc/dlnamediaserver/ShareFolder;)Lcom/htc/dlnamediaserver/ShareFolderAdapter;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/htc/dlnamediaserver/ShareFolderAdapter;->getItem(I)Lcom/htc/dlnamediaserver/ShareFolderItem;

    move-result-object v4

    iget-boolean v4, v4, Lcom/htc/dlnamediaserver/ShareFolderItem;->mChecked:Z

    if-nez v4, :cond_5

    .line 188
    :try_start_1
    iget-object v4, p0, Lcom/htc/dlnamediaserver/ShareFolder$2;->this$0:Lcom/htc/dlnamediaserver/ShareFolder;

    #getter for: Lcom/htc/dlnamediaserver/ShareFolder;->mServiceCommunication:Lcom/htc/dlnamediaserver/ServiceCommunication;
    invoke-static {v4}, Lcom/htc/dlnamediaserver/ShareFolder;->access$100(Lcom/htc/dlnamediaserver/ShareFolder;)Lcom/htc/dlnamediaserver/ServiceCommunication;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/htc/dlnamediaserver/ServiceCommunication;->RemoveSharedFolder(Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 177
    :cond_4
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 189
    :catch_1
    move-exception v4

    move-object v0, v4

    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4

    .line 181
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method
