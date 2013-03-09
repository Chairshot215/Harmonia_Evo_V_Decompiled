.class public Lcom/htc/music/browserlayer/DlnaBrowserActivity;
.super Lcom/htc/music/widget/MusicListActivity;
.source "DlnaBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/DlnaBrowserActivity$ServerInfo;,
        Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaListAdapter;,
        Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaNotifyStub;
    }
.end annotation


# static fields
.field private static final DIALOG_LOADING:I = 0x0

.field public static final DLNA_CALLER_ALBUM:I = 0x0

.field public static final DLNA_CALLER_MUSIC:I = 0x1

.field public static final INTENT_BROWSERLAYER:I = 0x0

.field public static final INTENT_UPPER:I = 0x1

.field public static final MENU_PLAYING:I = 0xd

.field public static final MENU_REFRESH:I = 0xa

.field public static final MENU_ROOT:I = 0xb

.field public static final MENU_UP:I = 0xc

.field private static final REFRESH:I = 0x0

.field private static final REMOVE_DIALOG:I = 0x1

.field private static final REMOVE_SPINNER:I = 0x3

.field public static final RESULT_FINISH:I = 0x0

.field public static final RESULT_ROOT:I = 0x1

.field public static final RESULT_SERVER:I = 0x3

.field public static final RESULT_UPPER:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DLNA"

.field private static final TIME_SHOWSPINNER:I = 0x7530

.field private static final WIFI_ERROR:I = 0x2


# instance fields
.field public BROWSE_TYPE:I

.field private mAdapter:Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaListAdapter;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field mCursorCols:[Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInitial:Z

.field private mListView:Lcom/htc/widget/HtcListView;

.field private mNotifyCallback:Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaNotifyStub;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mServerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/browserlayer/DlnaBrowserActivity$ServerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/htc/dlnainterface/IDLNAPluginService;

.field private mWifiListener:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/htc/music/widget/MusicListActivity;-><init>()V

    iput v3, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->BROWSE_TYPE:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaListAdapter;

    new-instance v0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$4;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity$4;-><init>(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mWifiListener:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$6;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity$6;-><init>(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$7;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity$7;-><init>(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaNotifyStub;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaNotifyStub;-><init>(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mNotifyCallback:Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaNotifyStub;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "content_id"

    aput-object v2, v0, v1

    const-string v1, "content_name"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "thumbnail_uri"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mCursorCols:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mServerList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaListAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mInitial:Z

    return v0
.end method

.method static synthetic access$202(Lcom/htc/music/browserlayer/DlnaBrowserActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mInitial:Z

    return p1
.end method

.method static synthetic access$300(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)Lcom/htc/dlnainterface/IDLNAPluginService;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/music/browserlayer/DlnaBrowserActivity;Lcom/htc/dlnainterface/IDLNAPluginService;)Lcom/htc/dlnainterface/IDLNAPluginService;
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    return-object p1
.end method

.method static synthetic access$400(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaNotifyStub;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mNotifyCallback:Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaNotifyStub;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method public clearData()V
    .locals 2

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mServerList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mServerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mListView:Lcom/htc/widget/HtcListView;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaListAdapter;

    invoke-direct {v0, p0, p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaListAdapter;-><init>(Lcom/htc/music/browserlayer/DlnaBrowserActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaListAdapter;

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaListAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/htc/music/widget/MusicListActivity;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p1, :cond_0

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->setVolumeControlStream(I)V

    const v0, 0x7f03002b

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->setContentView(I)V

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->setTitle(Ljava/lang/String;)V

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mInflater:Landroid/view/LayoutInflater;

    new-instance v0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaListAdapter;

    invoke-direct {v0, p0, p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaListAdapter;-><init>(Lcom/htc/music/browserlayer/DlnaBrowserActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaListAdapter;

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaListAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mServerList:Ljava/util/ArrayList;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->showLoading()V

    const v0, 0x7f0700bd

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->showEmptyView(I)V

    iput-object p0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mContext:Landroid/content/Context;

    const-string v0, "DLNA"

    invoke-virtual {p0, v0, v3}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;)Z

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mInitial:Z

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mListView:Lcom/htc/widget/HtcListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p0

    :cond_0
    packed-switch p1, :pswitch_data_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :pswitch_0
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x20c009e

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0700c5

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/htc/music/browserlayer/DlnaBrowserActivity$3;

    invoke-direct {v2, p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity$3;-><init>(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x20c0163

    new-instance v3, Lcom/htc/music/browserlayer/DlnaBrowserActivity$2;

    invoke-direct {v3, p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity$2;-><init>(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x20c013d

    new-instance v3, Lcom/htc/music/browserlayer/DlnaBrowserActivity$1;

    invoke-direct {v3, p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity$1;-><init>(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    const/16 v0, 0xd

    const v1, 0x7f07001b

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080a3f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v0, 0xa

    const v1, 0x20c0202

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x208033b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onDestroy()V

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaListAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 5

    iget-object v3, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mServerList:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/browserlayer/DlnaBrowserActivity$ServerInfo;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/DlnaBrowserActivity$ServerInfo;->GetId()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mServerList:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/browserlayer/DlnaBrowserActivity$ServerInfo;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/DlnaBrowserActivity$ServerInfo;->GetName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "ServerName"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "ServerID"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "ContainerID"

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "IconPath"

    iget-object v3, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mServerList:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/browserlayer/DlnaBrowserActivity$ServerInfo;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/DlnaBrowserActivity$ServerInfo;->GetImgPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "InnerActivityType"

    const/4 v4, 0x6

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-class v3, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    const/4 v3, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :cond_0
    :goto_1
    return v3

    :pswitch_1
    :try_start_0
    iget-object v4, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService;->reSearchDevices(I)V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->showLoading()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    :pswitch_2
    const-string v4, "DLNA"

    const-string v5, "Play all, check DLNA mode first"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-static {p0, v4, v5, v6}, Lcom/htc/music/util/MusicUtils;->CheckDLNAMode(Landroid/content/Context;[IIZ)I

    move-result v2

    const-string v4, "DLNA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DLNA mode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch v2, :pswitch_data_1

    goto :goto_0

    :pswitch_3
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.htc.music.PLAYBACK_VIEWER"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x400

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v4, -0x2

    invoke-virtual {p0, v1, v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onResume()V

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->setTitle(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/htc/music/util/DlnaUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->showDialog(I)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onStart()V

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mServerList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mServerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->showDialog(I)V

    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mWifiListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStop()V
    .locals 4

    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onStop()V

    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mNotifyCallback:Lcom/htc/music/browserlayer/DlnaBrowserActivity$DlnaNotifyStub;

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->unregisterCallback(ILcom/htc/dlnainterface/IDLNAPluginNotify;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mWifiListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method protected setCategoryRightBtn(Z)V
    .locals 5

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput v2, p0, Lcom/htc/music/widget/MusicMaActivity;->mEnableRightBtn:I

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->isResumed()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "DLNA"

    const-string v4, "activity is paused, do not set category right button status"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v1

    instance-of v3, v1, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v3, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryRightBtnVisible(Z)V

    goto :goto_0
.end method

.method public showLoading()V
    .locals 6

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->showSpinner(Z)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mServerList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->mServerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->clearData()V

    const v0, 0x7f0700bd

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->showEmptyView(I)V

    :cond_1
    new-instance v0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$5;

    const-wide/16 v2, 0x7530

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/music/browserlayer/DlnaBrowserActivity$5;-><init>(Lcom/htc/music/browserlayer/DlnaBrowserActivity;JJ)V

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity$5;->start()Landroid/os/CountDownTimer;

    return-void
.end method
