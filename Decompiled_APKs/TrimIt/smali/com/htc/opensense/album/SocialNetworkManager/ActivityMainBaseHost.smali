.class public abstract Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost;
.super Lcom/htc/opensense/album/TemplateActivityBase;
.source "ActivityMainBaseHost.java"

# interfaces
.implements Lcom/htc/opensense/album/SocialNetworkManager/NotifyBaseUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/opensense/album/TemplateActivityBase",
        "<",
        "Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;",
        ">;",
        "Lcom/htc/opensense/album/SocialNetworkManager/NotifyBaseUI;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mHandlerUI:Landroid/os/Handler;

.field protected mItemRequest:Ljava/lang/Object;

.field protected mListView:Lcom/htc/opensense/album/ViewTemplateBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/opensense/album/ViewTemplateBase",
            "<",
            "Lcom/htc/widget/HtcListView;",
            ">;"
        }
    .end annotation
.end field

.field protected mLoadingText:Ljava/lang/String;

.field protected mServiceInfo:Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;

.field protected mUIState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Lcom/htc/opensense/album/TemplateActivityBase;-><init>()V

    .line 33
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost;->mServiceInfo:Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;

    .line 34
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost;->mItemRequest:Ljava/lang/Object;

    .line 35
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost;->mListView:Lcom/htc/opensense/album/ViewTemplateBase;

    .line 36
    const/16 v0, 0x4ee8

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost;->mUIState:I

    .line 37
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost;->mLoadingText:Ljava/lang/String;

    .line 197
    new-instance v0, Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost$1;

    invoke-direct {v0, p0}, Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost$1;-><init>(Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost;)V

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost;->mHandlerUI:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public abstract RelayoutPageView(I)V
.end method

.method public getServiceInfo()Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost;->mServiceInfo:Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;

    return-object v0
.end method

.method public getUIHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost;->mHandlerUI:Landroid/os/Handler;

    return-object v0
.end method

.method public abstract initPageComponents()V
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/htc/opensense/album/TemplateActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost;->syncExternalRequest()V

    .line 61
    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost;->initPageComponents()V

    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost;->RelayoutPageView(I)V

    .line 64
    const/16 v0, 0x4ee9

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost;->mUIState:I

    .line 65
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "nID"

    .prologue
    .line 177
    const/4 v0, 0x0

    .line 178
    .local v0, dialog:Landroid/app/Dialog;
    sparse-switch p1, :sswitch_data_0

    .line 190
    :goto_0
    return-object v0

    .line 181
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost;->showProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 182
    goto :goto_0

    .line 184
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost;->showDialogErrorCommunication()Landroid/app/Dialog;

    move-result-object v0

    .line 185
    goto :goto_0

    .line 187
    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost;->showDialogNoConnection()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 178
    :sswitch_data_0
    .sparse-switch
        0x2724 -> :sswitch_0
        0x272b -> :sswitch_1
        0x272c -> :sswitch_2
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Lcom/htc/opensense/album/TemplateActivityBase;->onDestroy()V

    .line 92
    const/16 v0, 0x4eea

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost;->mUIState:I

    .line 94
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost;->setUIHandler(Landroid/os/Handler;)V

    .line 95
    return-void
.end method

.method public onMessageHandler(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x272c

    const/16 v4, 0x272b

    const/16 v3, 0x2724

    const/4 v2, 0x0

    .line 128
    const/16 v0, 0x4eea

    iget v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost;->mUIState:I

    if-ne v0, v1, :cond_0

    .line 130
    sget-object v0, Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ActivityMainBaseHost][onMessageHandler]: activity destroyed..."

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :goto_0
    return-void

    .line 134
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 143
    :sswitch_0
    invoke-virtual {p0, v3}, Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost;->showDialog(I)V

    goto :goto_0

    .line 137
    :sswitch_1
    invoke-virtual {p0, v4, v6, v2}, Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 140
    :sswitch_2
    invoke-virtual {p0, v5, v6, v2}, Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 146
    :sswitch_3
    invoke-virtual {p0, v3}, Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost;->removeDialog(I)V

    goto :goto_0

    .line 150
    :sswitch_4
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost;->mListView:Lcom/htc/opensense/album/ViewTemplateBase;

    invoke-virtual {v0}, Lcom/htc/opensense/album/ViewTemplateBase;->getMainView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 151
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost;->mListView:Lcom/htc/opensense/album/ViewTemplateBase;

    invoke-virtual {v0}, Lcom/htc/opensense/album/ViewTemplateBase;->getMainView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    goto :goto_0

    .line 156
    :sswitch_5
    sget-object v0, Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ActivityMainBaseHost][onMessageHandler]: SHOW_ALERTDLG_NO_ACTIVEUSER"

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0, v4}, Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost;->showDialog(I)V

    goto :goto_0

    .line 162
    :sswitch_6
    sget-object v0, Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ActivityMainBaseHost][onMessageHandler]: SHOW_ALERTDLG_NO_CONNECTION"

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0, v5}, Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost;->showDialog(I)V

    goto :goto_0

    .line 167
    :sswitch_7
    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost;->finish()V

    goto :goto_0

    .line 134
    :sswitch_data_0
    .sparse-switch
        0x2724 -> :sswitch_0
        0x2728 -> :sswitch_3
        0x272b -> :sswitch_5
        0x272c -> :sswitch_6
        0x272d -> :sswitch_4
        0x2738 -> :sswitch_7
        0x274c -> :sswitch_2
        0x2767 -> :sswitch_1
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 104
    const/4 v0, 0x0

    .line 105
    .local v0, bResult:Z
    return v0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 83
    invoke-super {p0}, Lcom/htc/opensense/album/TemplateActivityBase;->onPause()V

    .line 84
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/htc/opensense/album/TemplateActivityBase;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 99
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 72
    invoke-super {p0}, Lcom/htc/opensense/album/TemplateActivityBase;->onResume()V

    .line 73
    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/opensense/album/AlbumCommon/Constants;->isNetworkConnectionActive(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    const/16 v0, 0x274c

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost;->mAdapter:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onResume()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 68
    invoke-super {p0}, Lcom/htc/opensense/album/TemplateActivityBase;->onStart()V

    .line 69
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 87
    invoke-super {p0}, Lcom/htc/opensense/album/TemplateActivityBase;->onStop()V

    .line 88
    return-void
.end method

.method public onUIUpdateNotify(ILjava/lang/Object;I)V
    .locals 4
    .parameter "nMessageID"
    .parameter "obj"
    .parameter "delayMillis"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost;->mHandlerUI:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost;->mHandlerUI:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost;->mHandlerUI:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 227
    :cond_0
    return-void
.end method

.method public abstract setActivityTitle()V
.end method

.method public setFullscreen(Z)V
    .locals 0
    .parameter "bFullscreen"

    .prologue
    .line 213
    return-void
.end method

.method public setUIHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "hHandler"

    .prologue
    .line 232
    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost;->mHandlerUI:Landroid/os/Handler;

    .line 233
    return-void
.end method

.method protected abstract showDialogErrorCommunication()Landroid/app/Dialog;
.end method

.method protected abstract showDialogNoConnection()Landroid/app/Dialog;
.end method

.method protected showProgressDialog()Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 236
    const/4 v0, 0x0

    .line 237
    .local v0, dialog:Lcom/htc/app/HtcProgressDialog;
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    .end local v0           #dialog:Lcom/htc/app/HtcProgressDialog;
    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 238
    .restart local v0       #dialog:Lcom/htc/app/HtcProgressDialog;
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost;->mLoadingText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 239
    new-instance v1, Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost$2;

    invoke-direct {v1, p0}, Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost$2;-><init>(Lcom/htc/opensense/album/SocialNetworkManager/ActivityMainBaseHost;)V

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 253
    return-object v0
.end method

.method public abstract syncExternalRequest()V
.end method
