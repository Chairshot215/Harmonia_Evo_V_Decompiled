.class public abstract Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;
.super Landroid/app/Activity;
.source "ActivityMainBaseHostPlugin.java"

# interfaces
.implements Lcom/htc/opensense2/album/SocialNetworkManager/NotifyBaseUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin$requestUpdateAdapterInfo;,
        Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin$requestAdapterPlugin;,
        Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin$callbackActivityEvents;,
        Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin$ServiceInfo;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field protected mExteriorListAdapters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/plugin/ExteriorListAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mHandlerUI:Landroid/os/Handler;

.field protected mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

.field protected mItemClickListner:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field protected mItemSelected:Ljava/lang/Object;

.field protected mLoadingText:Ljava/lang/String;

.field protected mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

.field protected mScrollListner:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

.field protected mScrollState:Lcom/htc/opensense/plugin/HtcScrollState;

.field protected mServiceInfo:Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin$ServiceInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    iput-object v1, p0, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin$ServiceInfo;

    .line 45
    iput-object v1, p0, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->mItemSelected:Ljava/lang/Object;

    .line 46
    iput-object v1, p0, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->mExteriorListAdapters:Ljava/util/List;

    .line 49
    iput-object v1, p0, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    .line 50
    new-instance v0, Lcom/htc/opensense/plugin/HtcScrollState;

    invoke-direct {v0}, Lcom/htc/opensense/plugin/HtcScrollState;-><init>()V

    iput-object v0, p0, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->mScrollState:Lcom/htc/opensense/plugin/HtcScrollState;

    .line 51
    iput-object v1, p0, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->mLoadingText:Ljava/lang/String;

    .line 209
    new-instance v0, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin$1;

    invoke-direct {v0, p0}, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin$1;-><init>(Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->mItemClickListner:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 219
    new-instance v0, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin$2;

    invoke-direct {v0, p0}, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin$2;-><init>(Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->mScrollListner:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    .line 369
    new-instance v0, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin$3;

    invoke-direct {v0, p0}, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin$3;-><init>(Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->mHandlerUI:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->onLaunchSettings_Wireless()V

    return-void
.end method

.method private onLaunchSettings_Wireless()V
    .locals 2

    .prologue
    .line 459
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 460
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 461
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 462
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 463
    invoke-virtual {p0}, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 464
    return-void
.end method

.method private showDialogErrorCommunication()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 420
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0037

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0038

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 425
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x20c01d6

    new-instance v2, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin$5;

    invoke-direct {v2, p0}, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin$5;-><init>(Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 432
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private showDialogNoConnection()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 436
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x20c0162

    invoke-virtual {p0, v2}, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x20c0156

    invoke-virtual {p0, v2}, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 441
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x20c0200

    new-instance v2, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin$6;

    invoke-direct {v2, p0}, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin$6;-><init>(Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 448
    const v1, 0x20c01d6

    new-instance v2, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin$7;

    invoke-direct {v2, p0}, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin$7;-><init>(Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 455
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private showProgressDialog()Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 399
    const/4 v0, 0x0

    .line 400
    .local v0, dialog:Lcom/htc/app/HtcProgressDialog;
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    .end local v0           #dialog:Lcom/htc/app/HtcProgressDialog;
    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 401
    .restart local v0       #dialog:Lcom/htc/app/HtcProgressDialog;
    iget-object v1, p0, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->mLoadingText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 402
    new-instance v1, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin$4;

    invoke-direct {v1, p0}, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin$4;-><init>(Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;)V

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 416
    return-object v0
.end method


# virtual methods
.method protected abstract RelayoutPageView(Z)V
.end method

.method protected deinitListAdapter()V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method protected abstract doGetAdapterPlugin()V
.end method

.method protected abstract doUpdateAdapterInfo()V
.end method

.method protected getServiceInfo()Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin$ServiceInfo;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin$ServiceInfo;

    return-object v0
.end method

.method public getUIHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->mHandlerUI:Landroid/os/Handler;

    return-object v0
.end method

.method protected abstract initListAdapter()V
.end method

.method protected abstract initPageComponents()V
.end method

.method protected onCancelDialog(I)V
    .locals 1
    .parameter "nID"

    .prologue
    .line 298
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->removeDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :goto_0
    return-void

    .line 300
    :catch_0
    move-exception v0

    .line 302
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 147
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 71
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->syncExternalRequest()V

    .line 74
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    .line 75
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-direct {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;-><init>()V

    iput-object v0, p0, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    .line 76
    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->MAX_LISTVIEW_THUMB_BUFFER:[I

    invoke-static {}, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->getResolution()I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v0, v1, v4, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->Initialize(Landroid/content/Context;ZI)Z

    .line 80
    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->getUIHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setDataHandler(Landroid/os/Handler;)V

    .line 81
    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->changeLayoutType(I)V

    .line 82
    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x20800c2

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setDefaultImageResource(Landroid/content/Context;I)V

    .line 84
    invoke-virtual {p0}, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->initPageComponents()V

    .line 86
    invoke-virtual {p0}, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->initListAdapter()V

    .line 87
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 143
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 144
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "nID"

    .prologue
    .line 279
    const/4 v0, 0x0

    .line 280
    .local v0, dialog:Landroid/app/Dialog;
    sparse-switch p1, :sswitch_data_0

    .line 292
    :goto_0
    return-object v0

    .line 283
    :sswitch_0
    invoke-direct {p0}, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->showProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 284
    goto :goto_0

    .line 286
    :sswitch_1
    invoke-direct {p0}, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->showDialogErrorCommunication()Landroid/app/Dialog;

    move-result-object v0

    .line 287
    goto :goto_0

    .line 289
    :sswitch_2
    invoke-direct {p0}, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->showDialogNoConnection()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 280
    :sswitch_data_0
    .sparse-switch
        0x2724 -> :sswitch_0
        0x272b -> :sswitch_1
        0x272c -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 156
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 102
    invoke-virtual {p0}, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->deinitListAdapter()V

    .line 104
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 105
    invoke-virtual {p0, v4}, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->setUIHandler(Landroid/os/Handler;)V

    .line 110
    iget-object v2, p0, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->mExteriorListAdapters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/plugin/ExteriorListAdapter;

    .line 112
    .local v0, adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;
    invoke-virtual {v0}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->unloadData()V

    goto :goto_0

    .line 114
    .end local v0           #adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;
    :cond_0
    iget-object v2, p0, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v2, :cond_1

    .line 115
    iget-object v2, p0, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->onDestroy()V

    .line 116
    :cond_1
    iput-object v4, p0, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    .line 118
    iget-object v2, p0, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-eqz v2, :cond_2

    .line 119
    iget-object v2, p0, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->Uninitialize(Z)V

    .line 120
    :cond_2
    iput-object v4, p0, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    .line 121
    return-void
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 152
    return-void
.end method

.method protected onListScrollFling()V
    .locals 3

    .prologue
    .line 160
    iget-object v2, p0, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->mExteriorListAdapters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/plugin/ExteriorListAdapter;

    .line 162
    .local v0, adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;
    iget-object v2, p0, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->mScrollState:Lcom/htc/opensense/plugin/HtcScrollState;

    invoke-virtual {v0, v2}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->setScrollState(Lcom/htc/opensense/plugin/HtcScrollState;)V

    goto :goto_0

    .line 166
    .end local v0           #adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;
    :cond_0
    return-void
.end method

.method protected onListScrollIdle()V
    .locals 3

    .prologue
    .line 170
    iget-object v2, p0, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->mExteriorListAdapters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/plugin/ExteriorListAdapter;

    .line 172
    .local v0, adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;
    iget-object v2, p0, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->mScrollState:Lcom/htc/opensense/plugin/HtcScrollState;

    invoke-virtual {v0, v2}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->setScrollState(Lcom/htc/opensense/plugin/HtcScrollState;)V

    goto :goto_0

    .line 176
    .end local v0           #adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;
    :cond_0
    return-void
.end method

.method protected onListScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "nScrollState"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->mScrollState:Lcom/htc/opensense/plugin/HtcScrollState;

    invoke-virtual {v0}, Lcom/htc/opensense/plugin/HtcScrollState;->getState()I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 208
    :goto_0
    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->mScrollState:Lcom/htc/opensense/plugin/HtcScrollState;

    invoke-virtual {v0, p2}, Lcom/htc/opensense/plugin/HtcScrollState;->setState(I)V

    .line 196
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 202
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->onListScrollIdle()V

    goto :goto_0

    .line 199
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->onListScrollFling()V

    goto :goto_0

    .line 205
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->onListScrollTouch()V

    goto :goto_0

    .line 196
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onListScrollTouch()V
    .locals 3

    .prologue
    .line 180
    iget-object v2, p0, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->mExteriorListAdapters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/plugin/ExteriorListAdapter;

    .line 182
    .local v0, adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;
    iget-object v2, p0, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->mScrollState:Lcom/htc/opensense/plugin/HtcScrollState;

    invoke-virtual {v0, v2}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->setScrollState(Lcom/htc/opensense/plugin/HtcScrollState;)V

    goto :goto_0

    .line 186
    .end local v0           #adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;
    :cond_0
    return-void
.end method

.method protected onMessageHandler(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x272c

    const/16 v3, 0x272b

    const/16 v2, 0x2724

    const/4 v1, 0x0

    .line 341
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 362
    :goto_0
    return-void

    .line 344
    :sswitch_0
    invoke-virtual {p0, v3, v5, v1}, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 347
    :sswitch_1
    invoke-virtual {p0, v4, v5, v1}, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 350
    :sswitch_2
    invoke-virtual {p0, v2}, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->showDialog(I)V

    goto :goto_0

    .line 353
    :sswitch_3
    invoke-virtual {p0, v2}, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->removeDialog(I)V

    goto :goto_0

    .line 356
    :sswitch_4
    invoke-virtual {p0, v3}, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->showDialog(I)V

    goto :goto_0

    .line 359
    :sswitch_5
    invoke-virtual {p0, v4}, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->showDialog(I)V

    goto :goto_0

    .line 341
    :sswitch_data_0
    .sparse-switch
        0x2724 -> :sswitch_2
        0x2728 -> :sswitch_3
        0x272b -> :sswitch_4
        0x272c -> :sswitch_5
        0x274c -> :sswitch_1
        0x2767 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 98
    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->onPause()V

    .line 99
    return-void
.end method

.method protected onRequestAdapterPlugin()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 323
    new-instance v0, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin$requestAdapterPlugin;

    invoke-direct {v0, p0}, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin$requestAdapterPlugin;-><init>(Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin$requestAdapterPlugin;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 324
    return-void
.end method

.method protected onRequestUpdateAdapterInfo()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 328
    new-instance v0, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin$requestUpdateAdapterInfo;

    invoke-direct {v0, p0}, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin$requestUpdateAdapterInfo;-><init>(Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin$requestUpdateAdapterInfo;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 329
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 90
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 91
    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->onResume()V

    .line 92
    invoke-virtual {p0}, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isNetworkConnectionActive(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    const/16 v0, 0x274c

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 94
    :cond_0
    return-void
.end method

.method public onUIUpdateNotify(ILjava/lang/Object;I)V
    .locals 4
    .parameter "nMessageID"
    .parameter "obj"
    .parameter "delayMillis"

    .prologue
    .line 386
    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->mHandlerUI:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->mHandlerUI:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->mHandlerUI:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 390
    :cond_0
    return-void
.end method

.method protected abstract setActivityTitle()V
.end method

.method public setUIHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "hHandler"

    .prologue
    .line 395
    iput-object p1, p0, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->mHandlerUI:Landroid/os/Handler;

    .line 396
    return-void
.end method

.method protected abstract syncBackgroundService()V
.end method

.method protected abstract syncExternalRequest()V
.end method
