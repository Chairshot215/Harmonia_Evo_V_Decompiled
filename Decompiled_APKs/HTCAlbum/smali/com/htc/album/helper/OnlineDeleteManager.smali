.class public Lcom/htc/album/helper/OnlineDeleteManager;
.super Ljava/lang/Object;
.source "OnlineDeleteManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;,
        Lcom/htc/album/helper/OnlineDeleteManager$DeleteCallbackListener;
    }
.end annotation


# static fields
.field public static final DIALOG_DELETE_ALL:I = 0x120001

.field public static final DIALOG_DELETE_FILES:I = 0x120002

.field public static final DIALOG_DELETE_PROGRESS:I = 0x120000

.field public static final DIALOG_DELETE_SINGLE:I = 0x120003

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

.field private mConfirmDlg:Lcom/htc/widget/HtcAlertDialog;

.field private mDeleteCallback:Lcom/htc/album/helper/OnlineDeleteManager$DeleteCallbackListener;

.field private mDeleteThread:Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;

.field private mIsDeleteAll:Z

.field private mPickedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressDlg:Lcom/htc/app/HtcProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/htc/album/helper/OnlineDeleteManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/helper/OnlineDeleteManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/htc/album/SocialNetwork/LivePhotoAdapter;Lcom/htc/album/helper/OnlineDeleteManager$DeleteCallbackListener;)V
    .locals 1
    .parameter "activity"
    .parameter "adapter"
    .parameter "callback"

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;

    .line 31
    iput-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mDeleteThread:Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;

    .line 32
    iput-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mActivity:Landroid/app/Activity;

    .line 33
    iput-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mAdapter:Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    .line 34
    iput-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mDeleteCallback:Lcom/htc/album/helper/OnlineDeleteManager$DeleteCallbackListener;

    .line 36
    iput-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mPickedList:Ljava/util/ArrayList;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mIsDeleteAll:Z

    .line 55
    iput-object p1, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mActivity:Landroid/app/Activity;

    .line 56
    iput-object p2, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mAdapter:Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    .line 57
    iput-object p3, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mDeleteCallback:Lcom/htc/album/helper/OnlineDeleteManager$DeleteCallbackListener;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/helper/OnlineDeleteManager;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/album/helper/OnlineDeleteManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mIsDeleteAll:Z

    return p1
.end method

.method static synthetic access$200(Lcom/htc/album/helper/OnlineDeleteManager;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/album/helper/OnlineDeleteManager;)Lcom/htc/album/helper/OnlineDeleteManager$DeleteCallbackListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mDeleteCallback:Lcom/htc/album/helper/OnlineDeleteManager$DeleteCallbackListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/album/helper/OnlineDeleteManager;)Lcom/htc/album/SocialNetwork/LivePhotoAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mAdapter:Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/album/helper/OnlineDeleteManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/htc/album/helper/OnlineDeleteManager;->deleteMedias()V

    return-void
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/htc/album/helper/OnlineDeleteManager;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private deleteMedias()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mDeleteThread:Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mDeleteThread:Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;

    invoke-virtual {v0}, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mActivity:Landroid/app/Activity;

    const/high16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0
.end method


# virtual methods
.method public cancelDeleteMedias()V
    .locals 4

    .prologue
    .line 176
    iget-object v1, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mDeleteThread:Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mDeleteThread:Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;

    invoke-virtual {v1}, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mDeleteThread:Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;

    invoke-virtual {v1}, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->cancel()V

    .line 180
    :try_start_0
    sget-object v1, Lcom/htc/album/helper/OnlineDeleteManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[cancelDeleteMedias] Join delete thread start!!"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v1, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mDeleteThread:Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v2, v3}, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :goto_0
    iget-object v1, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mDeleteThread:Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;

    invoke-virtual {v1}, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    sget-object v1, Lcom/htc/album/helper/OnlineDeleteManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[cancelDeleteMedias] Join delete thread time out @ 2000!!"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mDeleteThread:Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;

    .line 191
    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 184
    .local v0, e:Ljava/lang/InterruptedException;
    sget-object v1, Lcom/htc/album/helper/OnlineDeleteManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "cancelDeleteMedias: join thread fail"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public deleteMultipleMedia(Ljava/util/ArrayList;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, pickedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;>;"
    const/4 v6, 0x0

    .line 84
    iget-object v2, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mActivity:Landroid/app/Activity;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mAdapter:Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    if-nez v2, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    iget-object v2, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mDeleteThread:Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mDeleteThread:Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;

    invoke-virtual {v2}, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->isAlive()Z

    move-result v2

    if-nez v2, :cond_0

    .line 87
    :cond_2
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 88
    iput-object p1, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mPickedList:Ljava/util/ArrayList;

    .line 89
    iget-object v2, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mPickedList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 90
    .local v1, pickerCount:I
    iget-object v2, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mAdapter:Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getCount()I

    move-result v0

    .line 91
    .local v0, listCount:I
    if-ne v1, v0, :cond_3

    .line 92
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v3, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x20c01d4

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b000e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mAdapter:Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v5, v6}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getSourceName(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x20c01fc

    new-instance v4, Lcom/htc/album/helper/OnlineDeleteManager$3;

    invoke-direct {v4, p0}, Lcom/htc/album/helper/OnlineDeleteManager$3;-><init>(Lcom/htc/album/helper/OnlineDeleteManager;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x20c01d6

    new-instance v4, Lcom/htc/album/helper/OnlineDeleteManager$2;

    invoke-direct {v4, p0}, Lcom/htc/album/helper/OnlineDeleteManager$2;-><init>(Lcom/htc/album/helper/OnlineDeleteManager;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mConfirmDlg:Lcom/htc/widget/HtcAlertDialog;

    .line 111
    iget-object v2, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mConfirmDlg:Lcom/htc/widget/HtcAlertDialog;

    new-instance v3, Lcom/htc/album/helper/OnlineDeleteManager$4;

    invoke-direct {v3, p0}, Lcom/htc/album/helper/OnlineDeleteManager$4;-><init>(Lcom/htc/album/helper/OnlineDeleteManager;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 118
    iget-object v2, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mConfirmDlg:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto/16 :goto_0

    .line 120
    :cond_3
    iput-boolean v6, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mIsDeleteAll:Z

    .line 121
    invoke-direct {p0}, Lcom/htc/album/helper/OnlineDeleteManager;->deleteMedias()V

    goto/16 :goto_0

    .line 124
    .end local v0           #listCount:I
    .end local v1           #pickerCount:I
    :cond_4
    sget-object v2, Lcom/htc/album/helper/OnlineDeleteManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Picker list is null or 0"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public deleteSingleMedia(I)V
    .locals 5
    .parameter "position"

    .prologue
    .line 130
    iget-object v2, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mActivity:Landroid/app/Activity;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mAdapter:Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    if-nez v2, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-object v2, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mDeleteThread:Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mDeleteThread:Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;

    invoke-virtual {v2}, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->isAlive()Z

    move-result v2

    if-nez v2, :cond_0

    .line 133
    :cond_2
    iget-object v2, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mAdapter:Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v2, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    .line 134
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    if-nez v0, :cond_3

    .line 135
    sget-object v2, Lcom/htc/album/helper/OnlineDeleteManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[deleteSingleMedia] wrapperPhoto is null"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mPickedList:Ljava/util/ArrayList;

    .line 139
    iget-object v2, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mPickedList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v2, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 142
    .local v1, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v2, 0x1080027

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x20c01fc

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b000f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/htc/album/helper/OnlineDeleteManager$6;

    invoke-direct {v4, p0}, Lcom/htc/album/helper/OnlineDeleteManager$6;-><init>(Lcom/htc/album/helper/OnlineDeleteManager;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x20c01d6

    new-instance v4, Lcom/htc/album/helper/OnlineDeleteManager$5;

    invoke-direct {v4, p0}, Lcom/htc/album/helper/OnlineDeleteManager$5;-><init>(Lcom/htc/album/helper/OnlineDeleteManager;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 164
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mConfirmDlg:Lcom/htc/widget/HtcAlertDialog;

    .line 165
    iget-object v2, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mConfirmDlg:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto :goto_0
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .parameter "id"
    .parameter "args"

    .prologue
    .line 62
    packed-switch p1, :pswitch_data_0

    .line 80
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 65
    :pswitch_0
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    iget-object v1, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;

    .line 66
    iget-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;

    iget-object v1, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0b0010

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 68
    iget-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 69
    iget-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;

    new-instance v1, Lcom/htc/album/helper/OnlineDeleteManager$1;

    invoke-direct {v1, p0}, Lcom/htc/album/helper/OnlineDeleteManager$1;-><init>(Lcom/htc/album/helper/OnlineDeleteManager;)V

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 76
    new-instance v0, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;

    iget-object v2, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mAdapter:Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    iget-object v4, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mDeleteCallback:Lcom/htc/album/helper/OnlineDeleteManager$DeleteCallbackListener;

    iget-object v5, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mPickedList:Ljava/util/ArrayList;

    iget-boolean v6, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mIsDeleteAll:Z

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;-><init>(Lcom/htc/album/helper/OnlineDeleteManager;Landroid/app/Activity;Lcom/htc/album/SocialNetwork/LivePhotoAdapter;Lcom/htc/album/helper/OnlineDeleteManager$DeleteCallbackListener;Ljava/util/ArrayList;Z)V

    iput-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mDeleteThread:Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;

    .line 77
    iget-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mDeleteThread:Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;

    invoke-virtual {v0}, Lcom/htc/album/helper/OnlineDeleteManager$DeleteThread;->start()V

    .line 78
    iget-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;

    goto :goto_0

    .line 62
    :pswitch_data_0
    .packed-switch 0x120000
        :pswitch_0
    .end packed-switch
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 195
    iget-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mConfirmDlg:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mConfirmDlg:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mConfirmDlg:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 199
    :cond_0
    iput-object v1, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mConfirmDlg:Lcom/htc/widget/HtcAlertDialog;

    .line 200
    iput-object v1, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mActivity:Landroid/app/Activity;

    .line 201
    iput-object v1, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mAdapter:Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    .line 202
    iput-object v1, p0, Lcom/htc/album/helper/OnlineDeleteManager;->mDeleteCallback:Lcom/htc/album/helper/OnlineDeleteManager$DeleteCallbackListener;

    .line 203
    return-void
.end method
