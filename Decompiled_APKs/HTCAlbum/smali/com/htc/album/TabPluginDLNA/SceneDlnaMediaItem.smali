.class public abstract Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;
.super Lcom/htc/sunny2/scene/GalleryBaseScene;
.source "SceneDlnaMediaItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem$LaunchSettings_WirelessOnClickListener;,
        Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem$FinishActivityOnClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VIEW:",
        "Lcom/htc/sunny2/view/SView;",
        "ADAPTER:",
        "Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;",
        ">",
        "Lcom/htc/sunny2/scene/GalleryBaseScene",
        "<TVIEW;TADAPTER;>;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field protected mErrorReason:Ljava/lang/String;

.field protected mErrorTitle:Ljava/lang/String;

.field private mProgressLoad:Lcom/htc/app/HtcProgressDialog;

.field protected mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem<TVIEW;TADAPTER;>;"
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Lcom/htc/sunny2/scene/GalleryBaseScene;-><init>()V

    .line 29
    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mErrorTitle:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mErrorReason:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mProgressLoad:Lcom/htc/app/HtcProgressDialog;

    .line 24
    return-void
.end method

.method private onServerRemoved(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 249
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem<TVIEW;TADAPTER;>;"
    return-void
.end method


# virtual methods
.method public enablePageProgressLoading(Z)V
    .locals 4
    .parameter "bShow"

    .prologue
    .line 87
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem<TVIEW;TADAPTER;>;"
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v1, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 92
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 95
    if-eqz p1, :cond_3

    .line 97
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mProgressLoad:Lcom/htc/app/HtcProgressDialog;

    if-nez v1, :cond_2

    .line 99
    new-instance v1, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v1, v0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mProgressLoad:Lcom/htc/app/HtcProgressDialog;

    .line 100
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mProgressLoad:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00b5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 103
    :cond_2
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mProgressLoad:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mProgressLoad:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->show()V

    goto :goto_0

    .line 108
    :cond_3
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mProgressLoad:Lcom/htc/app/HtcProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mProgressLoad:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mProgressLoad:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    goto :goto_0
.end method

.method public onBroadcastMediaConnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 38
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastMediaDisconnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 44
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastReceive(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 50
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .parameter "id"
    .parameter "extras"

    .prologue
    .line 146
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    .line 148
    .local v0, dialog:Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    .line 158
    :goto_0
    return-object v0

    .line 151
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->showDialogErrorCommunication()Landroid/app/Dialog;

    move-result-object v0

    .line 152
    goto :goto_0

    .line 154
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->showDialogNoConnection()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x272b
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onErrorCommunication(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 115
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem<TVIEW;TADAPTER;>;"
    if-nez p1, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->enablePageProgressLoading(Z)V

    .line 119
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 120
    .local v1, bundle:Landroid/os/Bundle;
    if-eqz v1, :cond_2

    .line 122
    const/4 v2, 0x0

    .line 123
    .local v2, nErrorID:I
    const-string v3, "error_id"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 126
    .end local v2           #nErrorID:I
    :cond_2
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 128
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isWifiActive(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 133
    const/16 v3, 0x272c

    invoke-virtual {v0, v3}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 137
    :cond_3
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0037

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mErrorTitle:Ljava/lang/String;

    .line 138
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00c3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mErrorReason:Ljava/lang/String;

    .line 139
    const/16 v3, 0x272b

    invoke-virtual {v0, v3}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "message"

    .prologue
    .line 58
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    .line 59
    .local v0, bResult:Z
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityLifeCycle()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 76
    .end local v0           #bResult:Z
    :cond_0
    :goto_0
    return v0

    .line 62
    .restart local v0       #bResult:Z
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 76
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 65
    :sswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 66
    .local v1, nScrollState:I
    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->onScrollStateChanged(I)V

    goto :goto_1

    .line 69
    .end local v1           #nScrollState:I
    :sswitch_1
    sget-object v2, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][SceneDlnaMediaItem][onMessage]..."

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->onErrorCommunication(Landroid/os/Message;)V

    goto :goto_1

    .line 73
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->onServerRemoved(Landroid/os/Message;)V

    goto :goto_1

    .line 62
    nop

    :sswitch_data_0
    .sparse-switch
        0x2767 -> :sswitch_1
        0x4e9a -> :sswitch_2
        0x4f4f -> :sswitch_0
    .end sparse-switch
.end method

.method protected abstract onScrollStateChanged(I)V
.end method

.method protected sendIDLEScrollState(I)V
    .locals 2
    .parameter "delayMillis"

    .prologue
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem<TVIEW;TADAPTER;>;"
    const/16 v1, 0x4f4f

    .line 81
    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->onRemoveMessage(I)V

    .line 82
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->onPostMessage(ILjava/lang/Object;I)V

    .line 83
    return-void
.end method

.method protected showDialogErrorCommunication()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 163
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem<TVIEW;TADAPTER;>;"
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 164
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 165
    const/4 v2, 0x0

    .line 180
    :goto_0
    return-object v2

    .line 167
    :cond_0
    new-instance v2, Lcom/htc/dialog/HtcAlertDialog$Builder;

    invoke-direct {v2, v0}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mErrorTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mErrorReason:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    .line 172
    .local v1, builder:Lcom/htc/dialog/HtcAlertDialog$Builder;
    const v2, 0x20c015f

    new-instance v3, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem$1;

    invoke-direct {v3, p0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem$1;-><init>(Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 180
    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v2

    goto :goto_0
.end method

.method protected showDialogNoConnection()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 217
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem<TVIEW;TADAPTER;>;"
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 219
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 220
    const/4 v2, 0x0

    .line 229
    :goto_0
    return-object v2

    .line 222
    :cond_0
    new-instance v2, Lcom/htc/dialog/HtcAlertDialog$Builder;

    invoke-direct {v2, v0}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b00be

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b00f9

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v1

    .line 227
    .local v1, builder:Lcom/htc/dialog/HtcAlertDialog$Builder;
    const v2, 0x20c0200

    new-instance v3, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem$LaunchSettings_WirelessOnClickListener;

    invoke-direct {v3, p0, v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem$LaunchSettings_WirelessOnClickListener;-><init>(Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;Landroid/app/Activity;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 228
    const v2, 0x20c01d6

    new-instance v3, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem$FinishActivityOnClickListener;

    invoke-direct {v3, p0, v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem$FinishActivityOnClickListener;-><init>(Lcom/htc/album/TabPluginDLNA/SceneDlnaMediaItem;Landroid/app/Activity;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 229
    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v2

    goto :goto_0
.end method
