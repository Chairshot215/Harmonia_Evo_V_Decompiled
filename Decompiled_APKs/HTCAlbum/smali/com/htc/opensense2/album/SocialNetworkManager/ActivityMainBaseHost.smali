.class public abstract Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost;
.super Landroid/app/Activity;
.source "ActivityMainBaseHost.java"

# interfaces
.implements Lcom/htc/opensense2/album/SocialNetworkManager/NotifyBaseUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mHandlerUI:Landroid/os/Handler;

.field protected mItemRequest:Ljava/lang/Object;

.field protected mListView:Lcom/htc/opensense2/album/ViewTemplateBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/opensense2/album/ViewTemplateBase",
            "<",
            "Lcom/htc/widget/HtcListView;",
            ">;"
        }
    .end annotation
.end field

.field protected mLoadingText:Ljava/lang/String;

.field protected mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;

.field protected mUIState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;

    .line 35
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost;->mItemRequest:Ljava/lang/Object;

    .line 36
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost;->mListView:Lcom/htc/opensense2/album/ViewTemplateBase;

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost;->mUIState:I

    .line 38
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost;->mLoadingText:Ljava/lang/String;

    .line 187
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$1;

    invoke-direct {v0, p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$1;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost;)V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost;->mHandlerUI:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public abstract RelayoutPageView(I)V
.end method

.method public getServiceInfo()Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$ServiceInfo;

    return-object v0
.end method

.method public getUIHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost;->mHandlerUI:Landroid/os/Handler;

    return-object v0
.end method

.method public abstract initPageComponents()V
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost;->syncExternalRequest()V

    .line 62
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost;->initPageComponents()V

    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost;->RelayoutPageView(I)V

    .line 64
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "nID"

    .prologue
    .line 167
    const/4 v0, 0x0

    .line 168
    .local v0, dialog:Landroid/app/Dialog;
    sparse-switch p1, :sswitch_data_0

    .line 180
    :goto_0
    return-object v0

    .line 171
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost;->showProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 172
    goto :goto_0

    .line 174
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost;->showDialogErrorCommunication()Landroid/app/Dialog;

    move-result-object v0

    .line 175
    goto :goto_0

    .line 177
    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost;->showDialogNoConnection()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 168
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
    .line 85
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 87
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost;->setUIHandler(Landroid/os/Handler;)V

    .line 88
    return-void
.end method

.method public onMessageHandler(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x272c

    const/16 v3, 0x272b

    const/16 v2, 0x2724

    const/4 v1, 0x0

    .line 121
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 160
    :goto_0
    return-void

    .line 124
    :sswitch_0
    invoke-virtual {p0, v3, v5, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 127
    :sswitch_1
    invoke-virtual {p0, v4, v5, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 132
    :sswitch_2
    invoke-virtual {p0, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost;->showDialog(I)V

    goto :goto_0

    .line 136
    :sswitch_3
    invoke-virtual {p0, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost;->removeDialog(I)V

    goto :goto_0

    .line 140
    :sswitch_4
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost;->mListView:Lcom/htc/opensense2/album/ViewTemplateBase;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/ViewTemplateBase;->getMainView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 141
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost;->mListView:Lcom/htc/opensense2/album/ViewTemplateBase;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/ViewTemplateBase;->getMainView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    goto :goto_0

    .line 146
    :sswitch_5
    sget-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ActivityMainBaseHost][onMessageHandler]: SHOW_ALERTDLG_NO_ACTIVEUSER"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost;->showDialog(I)V

    goto :goto_0

    .line 152
    :sswitch_6
    sget-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ActivityMainBaseHost][onMessageHandler]: SHOW_ALERTDLG_NO_CONNECTION"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost;->showDialog(I)V

    goto :goto_0

    .line 157
    :sswitch_7
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost;->finish()V

    goto :goto_0

    .line 121
    :sswitch_data_0
    .sparse-switch
        0x2724 -> :sswitch_2
        0x2728 -> :sswitch_3
        0x272b -> :sswitch_5
        0x272c -> :sswitch_6
        0x272d -> :sswitch_4
        0x2738 -> :sswitch_7
        0x274c -> :sswitch_1
        0x2767 -> :sswitch_0
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, bResult:Z
    return v0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 77
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 78
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 92
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 71
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 72
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isNetworkConnectionActive(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    const/16 v0, 0x274c

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 74
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 67
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 68
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 81
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 82
    return-void
.end method

.method public onUIUpdateNotify(ILjava/lang/Object;I)V
    .locals 4
    .parameter "nMessageID"
    .parameter "obj"
    .parameter "delayMillis"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost;->mHandlerUI:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost;->mHandlerUI:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost;->mHandlerUI:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 210
    :cond_0
    return-void
.end method

.method public abstract setActivityTitle()V
.end method

.method public setUIHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "hHandler"

    .prologue
    .line 215
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost;->mHandlerUI:Landroid/os/Handler;

    .line 216
    return-void
.end method

.method protected abstract showDialogErrorCommunication()Landroid/app/Dialog;
.end method

.method protected abstract showDialogNoConnection()Landroid/app/Dialog;
.end method

.method protected showProgressDialog()Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 219
    const/4 v0, 0x0

    .line 220
    .local v0, dialog:Lcom/htc/app/HtcProgressDialog;
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    .end local v0           #dialog:Lcom/htc/app/HtcProgressDialog;
    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 221
    .restart local v0       #dialog:Lcom/htc/app/HtcProgressDialog;
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost;->mLoadingText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 222
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 223
    new-instance v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$2;

    invoke-direct {v1, p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost$2;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainBaseHost;)V

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 237
    return-object v0
.end method

.method public abstract syncExternalRequest()V
.end method
