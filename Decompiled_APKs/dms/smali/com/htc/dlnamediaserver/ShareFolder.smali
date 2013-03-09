.class public Lcom/htc/dlnamediaserver/ShareFolder;
.super Landroid/app/Activity;
.source "ShareFolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/dlnamediaserver/ShareFolder$ActionHandler;,
        Lcom/htc/dlnamediaserver/ShareFolder$RemoteServiceConnection;
    }
.end annotation


# instance fields
.field private mActionHandler:Lcom/htc/dlnamediaserver/ShareFolder$ActionHandler;

.field private mAdapter:Lcom/htc/dlnamediaserver/ShareFolderAdapter;

.field private mDirectoryList:[Ljava/lang/String;

.field private mListView:Landroid/widget/ListView;

.field private mLoadingDialog:Landroid/app/ProgressDialog;

.field private mRootPath:Ljava/lang/String;

.field private mService:Landroid/content/Intent;

.field private mServiceCommunication:Lcom/htc/dlnamediaserver/ServiceCommunication;

.field private mServiceConnection:Lcom/htc/dlnamediaserver/ShareFolder$RemoteServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/htc/dlnamediaserver/ShareFolder;->mListView:Landroid/widget/ListView;

    .line 29
    iput-object v0, p0, Lcom/htc/dlnamediaserver/ShareFolder;->mAdapter:Lcom/htc/dlnamediaserver/ShareFolderAdapter;

    .line 30
    iput-object v0, p0, Lcom/htc/dlnamediaserver/ShareFolder;->mService:Landroid/content/Intent;

    .line 31
    iput-object v0, p0, Lcom/htc/dlnamediaserver/ShareFolder;->mServiceCommunication:Lcom/htc/dlnamediaserver/ServiceCommunication;

    .line 32
    iput-object v0, p0, Lcom/htc/dlnamediaserver/ShareFolder;->mServiceConnection:Lcom/htc/dlnamediaserver/ShareFolder$RemoteServiceConnection;

    .line 33
    iput-object v0, p0, Lcom/htc/dlnamediaserver/ShareFolder;->mLoadingDialog:Landroid/app/ProgressDialog;

    .line 36
    iput-object v0, p0, Lcom/htc/dlnamediaserver/ShareFolder;->mActionHandler:Lcom/htc/dlnamediaserver/ShareFolder$ActionHandler;

    .line 326
    return-void
.end method

.method private SelectAll(Z)V
    .locals 2
    .parameter "afSelected"

    .prologue
    .line 292
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    iget-object v1, p0, Lcom/htc/dlnamediaserver/ShareFolder;->mAdapter:Lcom/htc/dlnamediaserver/ShareFolderAdapter;

    invoke-virtual {v1}, Lcom/htc/dlnamediaserver/ShareFolderAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 293
    iget-object v1, p0, Lcom/htc/dlnamediaserver/ShareFolder;->mAdapter:Lcom/htc/dlnamediaserver/ShareFolderAdapter;

    invoke-virtual {v1, v0}, Lcom/htc/dlnamediaserver/ShareFolderAdapter;->getItem(I)Lcom/htc/dlnamediaserver/ShareFolderItem;

    move-result-object v1

    iput-boolean p1, v1, Lcom/htc/dlnamediaserver/ShareFolderItem;->mChecked:Z

    .line 292
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 295
    :cond_0
    invoke-virtual {p0}, Lcom/htc/dlnamediaserver/ShareFolder;->RefreshView()V

    .line 296
    return-void
.end method

.method static synthetic access$100(Lcom/htc/dlnamediaserver/ShareFolder;)Lcom/htc/dlnamediaserver/ServiceCommunication;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/dlnamediaserver/ShareFolder;->mServiceCommunication:Lcom/htc/dlnamediaserver/ServiceCommunication;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/dlnamediaserver/ShareFolder;Lcom/htc/dlnamediaserver/ServiceCommunication;)Lcom/htc/dlnamediaserver/ServiceCommunication;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/htc/dlnamediaserver/ShareFolder;->mServiceCommunication:Lcom/htc/dlnamediaserver/ServiceCommunication;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/dlnamediaserver/ShareFolder;)Lcom/htc/dlnamediaserver/ShareFolderAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/dlnamediaserver/ShareFolder;->mAdapter:Lcom/htc/dlnamediaserver/ShareFolderAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/dlnamediaserver/ShareFolder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/dlnamediaserver/ShareFolder;->mRootPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/dlnamediaserver/ShareFolder;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/dlnamediaserver/ShareFolder;->mDirectoryList:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/dlnamediaserver/ShareFolder;)Lcom/htc/dlnamediaserver/ShareFolder$ActionHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/dlnamediaserver/ShareFolder;->mActionHandler:Lcom/htc/dlnamediaserver/ShareFolder$ActionHandler;

    return-object v0
.end method


# virtual methods
.method protected Browse(Ljava/io/File;)V
    .locals 10
    .parameter "aDirectory"

    .prologue
    const/4 v9, 0x0

    .line 97
    if-nez p1, :cond_0

    .line 129
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v5, p0, Lcom/htc/dlnamediaserver/ShareFolder;->mAdapter:Lcom/htc/dlnamediaserver/ShareFolderAdapter;

    invoke-virtual {v5}, Lcom/htc/dlnamediaserver/ShareFolderAdapter;->clear()V

    .line 102
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 103
    .local v4, theFiles:[Ljava/io/File;
    if-eqz v4, :cond_1

    array-length v5, v4

    if-nez v5, :cond_2

    .line 128
    :cond_1
    invoke-virtual {p0}, Lcom/htc/dlnamediaserver/ShareFolder;->RefreshView()V

    goto :goto_0

    .line 109
    :cond_2
    move-object v0, v4

    .local v0, arr$:[Ljava/io/File;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 111
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 113
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 115
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "dcim"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_4

    .line 116
    iget-object v5, p0, Lcom/htc/dlnamediaserver/ShareFolder;->mAdapter:Lcom/htc/dlnamediaserver/ShareFolderAdapter;

    new-instance v6, Lcom/htc/dlnamediaserver/ShareFolderItem;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f05001b

    invoke-virtual {p0, v8}, Lcom/htc/dlnamediaserver/ShareFolder;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8, v9}, Lcom/htc/dlnamediaserver/ShareFolderItem;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v5, v6}, Lcom/htc/dlnamediaserver/ShareFolderAdapter;->add(Lcom/htc/dlnamediaserver/ShareFolderItem;)V

    .line 109
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 118
    :cond_4
    iget-object v5, p0, Lcom/htc/dlnamediaserver/ShareFolder;->mAdapter:Lcom/htc/dlnamediaserver/ShareFolderAdapter;

    new-instance v6, Lcom/htc/dlnamediaserver/ShareFolderItem;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8, v9}, Lcom/htc/dlnamediaserver/ShareFolderItem;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v5, v6}, Lcom/htc/dlnamediaserver/ShareFolderAdapter;->add(Lcom/htc/dlnamediaserver/ShareFolderItem;)V

    goto :goto_2
.end method

.method public GetListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/dlnamediaserver/ShareFolder;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method protected ListRootDirectory()V
    .locals 2

    .prologue
    .line 80
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnamediaserver/ShareFolder;->mRootPath:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/htc/dlnamediaserver/ShareFolder;->mRootPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    .local v0, theRootDirectory:Ljava/io/File;
    invoke-virtual {p0, v0}, Lcom/htc/dlnamediaserver/ShareFolder;->Browse(Ljava/io/File;)V

    .line 83
    return-void
.end method

.method protected RefreshView()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/dlnamediaserver/ShareFolder;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 90
    iget-object v0, p0, Lcom/htc/dlnamediaserver/ShareFolder;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestLayout()V

    .line 91
    return-void
.end method

.method protected declared-synchronized StartLoadingPopup(Ljava/lang/String;)V
    .locals 2
    .parameter "aMsg"

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnamediaserver/ShareFolder;->mLoadingDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/dlnamediaserver/ShareFolder;->mLoadingDialog:Landroid/app/ProgressDialog;

    .line 63
    iget-object v0, p0, Lcom/htc/dlnamediaserver/ShareFolder;->mLoadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, p0, Lcom/htc/dlnamediaserver/ShareFolder;->mLoadingDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 65
    iget-object v0, p0, Lcom/htc/dlnamediaserver/ShareFolder;->mLoadingDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/htc/dlnamediaserver/ShareFolder$1;

    invoke-direct {v1, p0}, Lcom/htc/dlnamediaserver/ShareFolder$1;-><init>(Lcom/htc/dlnamediaserver/ShareFolder;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 72
    iget-object v0, p0, Lcom/htc/dlnamediaserver/ShareFolder;->mLoadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :cond_0
    monitor-exit p0

    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized StopLoadingPopup()V
    .locals 1

    .prologue
    .line 49
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnamediaserver/ShareFolder;->mLoadingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/htc/dlnamediaserver/ShareFolder;->mLoadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/dlnamediaserver/ShareFolder;->mLoadingDialog:Landroid/app/ProgressDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :cond_0
    monitor-exit p0

    return-void

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public UpdateCheckedShared()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 211
    iget-object v4, p0, Lcom/htc/dlnamediaserver/ShareFolder;->mServiceCommunication:Lcom/htc/dlnamediaserver/ServiceCommunication;

    if-nez v4, :cond_0

    .line 213
    const-string v4, "DLNAMediaServer"

    const-string v5, "Shared folder: mServiceCommunication == null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :goto_0
    return-void

    .line 217
    :cond_0
    iget-object v4, p0, Lcom/htc/dlnamediaserver/ShareFolder;->mServiceCommunication:Lcom/htc/dlnamediaserver/ServiceCommunication;

    invoke-interface {v4}, Lcom/htc/dlnamediaserver/ServiceCommunication;->IsRunning()Z

    move-result v4

    if-nez v4, :cond_1

    .line 219
    const-string v4, "DLNAMediaServer"

    const-string v5, "Shared folder: mServiceCommunication  is not running"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v4, p0, Lcom/htc/dlnamediaserver/ShareFolder;->mActionHandler:Lcom/htc/dlnamediaserver/ShareFolder$ActionHandler;

    const/4 v5, 0x0

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v5, v6, v7}, Lcom/htc/dlnamediaserver/ShareFolder$ActionHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 224
    :cond_1
    iget-object v4, p0, Lcom/htc/dlnamediaserver/ShareFolder;->mServiceCommunication:Lcom/htc/dlnamediaserver/ServiceCommunication;

    invoke-interface {v4}, Lcom/htc/dlnamediaserver/ServiceCommunication;->GetSharedFolder()Ljava/lang/String;

    move-result-object v3

    .line 226
    .local v3, theSharedFolder:Ljava/lang/String;
    const-string v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/dlnamediaserver/ShareFolder;->mDirectoryList:[Ljava/lang/String;

    .line 228
    const/4 v1, 0x0

    .local v1, k:I
    :goto_1
    iget-object v4, p0, Lcom/htc/dlnamediaserver/ShareFolder;->mAdapter:Lcom/htc/dlnamediaserver/ShareFolderAdapter;

    invoke-virtual {v4}, Lcom/htc/dlnamediaserver/ShareFolderAdapter;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 230
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/htc/dlnamediaserver/ShareFolder;->mRootPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/dlnamediaserver/ShareFolder;->mAdapter:Lcom/htc/dlnamediaserver/ShareFolderAdapter;

    invoke-virtual {v5, v1}, Lcom/htc/dlnamediaserver/ShareFolderAdapter;->getItem(I)Lcom/htc/dlnamediaserver/ShareFolderItem;

    move-result-object v5

    iget-object v5, v5, Lcom/htc/dlnamediaserver/ShareFolderItem;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 232
    .local v2, theFullPath:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v4, p0, Lcom/htc/dlnamediaserver/ShareFolder;->mDirectoryList:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_2

    .line 234
    iget-object v4, p0, Lcom/htc/dlnamediaserver/ShareFolder;->mDirectoryList:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 236
    iget-object v4, p0, Lcom/htc/dlnamediaserver/ShareFolder;->mAdapter:Lcom/htc/dlnamediaserver/ShareFolderAdapter;

    invoke-virtual {v4, v1}, Lcom/htc/dlnamediaserver/ShareFolderAdapter;->getItem(I)Lcom/htc/dlnamediaserver/ShareFolderItem;

    move-result-object v4

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/htc/dlnamediaserver/ShareFolderItem;->mChecked:Z

    .line 228
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 232
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 242
    .end local v0           #i:I
    .end local v2           #theFullPath:Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lcom/htc/dlnamediaserver/ShareFolder;->StopLoadingPopup()V

    .line 243
    invoke-virtual {p0}, Lcom/htc/dlnamediaserver/ShareFolder;->RefreshView()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/high16 v2, 0x7f07

    .line 134
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 135
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/htc/dlnamediaserver/ShareFolder;->setContentView(I)V

    .line 137
    const v0, 0x7f05001a

    invoke-virtual {p0, v0}, Lcom/htc/dlnamediaserver/ShareFolder;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/dlnamediaserver/ShareFolder;->StartLoadingPopup(Ljava/lang/String;)V

    .line 139
    new-instance v0, Lcom/htc/dlnamediaserver/ShareFolder$ActionHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/dlnamediaserver/ShareFolder$ActionHandler;-><init>(Lcom/htc/dlnamediaserver/ShareFolder;Lcom/htc/dlnamediaserver/ShareFolder$1;)V

    iput-object v0, p0, Lcom/htc/dlnamediaserver/ShareFolder;->mActionHandler:Lcom/htc/dlnamediaserver/ShareFolder$ActionHandler;

    .line 141
    new-instance v0, Lcom/htc/dlnamediaserver/ShareFolder$RemoteServiceConnection;

    invoke-direct {v0, p0}, Lcom/htc/dlnamediaserver/ShareFolder$RemoteServiceConnection;-><init>(Lcom/htc/dlnamediaserver/ShareFolder;)V

    iput-object v0, p0, Lcom/htc/dlnamediaserver/ShareFolder;->mServiceConnection:Lcom/htc/dlnamediaserver/ShareFolder$RemoteServiceConnection;

    .line 142
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/htc/dlnamediaserver/DLNAMediaServerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/htc/dlnamediaserver/ShareFolder;->mService:Landroid/content/Intent;

    .line 144
    const v0, 0x7f07000f

    invoke-virtual {p0, v0}, Lcom/htc/dlnamediaserver/ShareFolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/htc/dlnamediaserver/ShareFolder;->mListView:Landroid/widget/ListView;

    .line 146
    new-instance v0, Lcom/htc/dlnamediaserver/ShareFolderAdapter;

    invoke-direct {v0, p0}, Lcom/htc/dlnamediaserver/ShareFolderAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/dlnamediaserver/ShareFolder;->mAdapter:Lcom/htc/dlnamediaserver/ShareFolderAdapter;

    .line 147
    iget-object v0, p0, Lcom/htc/dlnamediaserver/ShareFolder;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/htc/dlnamediaserver/ShareFolder;->mAdapter:Lcom/htc/dlnamediaserver/ShareFolderAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 149
    invoke-virtual {p0, v2}, Lcom/htc/dlnamediaserver/ShareFolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f050011

    invoke-virtual {p0, v1}, Lcom/htc/dlnamediaserver/ShareFolder;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 152
    invoke-virtual {p0, v2}, Lcom/htc/dlnamediaserver/ShareFolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/htc/dlnamediaserver/ShareFolder$2;

    invoke-direct {v1, p0}, Lcom/htc/dlnamediaserver/ShareFolder$2;-><init>(Lcom/htc/dlnamediaserver/ShareFolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    invoke-virtual {p0}, Lcom/htc/dlnamediaserver/ShareFolder;->ListRootDirectory()V

    .line 204
    iget-object v0, p0, Lcom/htc/dlnamediaserver/ShareFolder;->mService:Landroid/content/Intent;

    iget-object v1, p0, Lcom/htc/dlnamediaserver/ShareFolder;->mServiceConnection:Lcom/htc/dlnamediaserver/ShareFolder$RemoteServiceConnection;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/dlnamediaserver/ShareFolder;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 205
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/htc/dlnamediaserver/ShareFolder;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 284
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f060001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 285
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 270
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 271
    iget-object v0, p0, Lcom/htc/dlnamediaserver/ShareFolder;->mServiceConnection:Lcom/htc/dlnamediaserver/ShareFolder$RemoteServiceConnection;

    invoke-virtual {p0, v0}, Lcom/htc/dlnamediaserver/ShareFolder;->unbindService(Landroid/content/ServiceConnection;)V

    .line 272
    invoke-virtual {p0}, Lcom/htc/dlnamediaserver/ShareFolder;->StopLoadingPopup()V

    .line 273
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 302
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v2

    .line 313
    :goto_0
    return v0

    .line 305
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/htc/dlnamediaserver/ShareFolder;->SelectAll(Z)V

    move v0, v1

    .line 306
    goto :goto_0

    .line 309
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/htc/dlnamediaserver/ShareFolder;->SelectAll(Z)V

    move v0, v1

    .line 310
    goto :goto_0

    .line 302
    nop

    :pswitch_data_0
    .packed-switch 0x7f070016
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
