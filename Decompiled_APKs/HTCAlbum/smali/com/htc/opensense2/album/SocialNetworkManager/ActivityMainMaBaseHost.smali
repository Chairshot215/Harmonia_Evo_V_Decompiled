.class public abstract Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;
.super Lcom/htc/opensense2/album/TemplateActivityBase;
.source "ActivityMainMaBaseHost.java"

# interfaces
.implements Lcom/htc/opensense2/album/SocialNetworkManager/NotifyBaseUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/opensense2/album/TemplateActivityBase",
        "<",
        "Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;",
        ">;",
        "Lcom/htc/opensense2/album/SocialNetworkManager/NotifyBaseUI;"
    }
.end annotation


# static fields
.field protected static final LAYOUT_TYPE_LIST:I = 0x1

.field protected static final LAYOUT_TYPE_LOADING:I = 0x2

.field protected static final LAYOUT_TYPE_LOGIN:I = 0x0

.field protected static final LAYOUT_TYPE_UNKNOWN:I = -0x1

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

.field protected mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;

.field protected mUIState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Lcom/htc/opensense2/album/TemplateActivityBase;-><init>()V

    .line 31
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;

    .line 32
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;->mItemRequest:Ljava/lang/Object;

    .line 33
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;->mListView:Lcom/htc/opensense2/album/ViewTemplateBase;

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;->mUIState:I

    .line 35
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;->mLoadingText:Ljava/lang/String;

    .line 183
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$1;

    invoke-direct {v0, p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$1;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;)V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;->mHandlerUI:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public abstract RelayoutPageView(I)V
.end method

.method public getServiceInfo()Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;

    return-object v0
.end method

.method public getUIHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;->mHandlerUI:Landroid/os/Handler;

    return-object v0
.end method

.method public abstract initPageComponents()V
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/TemplateActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;->syncExternalRequest()V

    .line 59
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;->initPageComponents()V

    .line 60
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;->RelayoutPageView(I)V

    .line 61
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "nID"

    .prologue
    .line 163
    const/4 v0, 0x0

    .line 164
    .local v0, dialog:Landroid/app/Dialog;
    sparse-switch p1, :sswitch_data_0

    .line 176
    :goto_0
    return-object v0

    .line 167
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;->showProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 168
    goto :goto_0

    .line 170
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;->showDialogErrorCommunication()Landroid/app/Dialog;

    move-result-object v0

    .line 171
    goto :goto_0

    .line 173
    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;->showDialogNoConnection()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 164
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
    .line 82
    invoke-super {p0}, Lcom/htc/opensense2/album/TemplateActivityBase;->onDestroy()V

    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;->setUIHandler(Landroid/os/Handler;)V

    .line 85
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

    .line 117
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 156
    :goto_0
    return-void

    .line 120
    :sswitch_0
    invoke-virtual {p0, v3, v5, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 123
    :sswitch_1
    invoke-virtual {p0, v4, v5, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 128
    :sswitch_2
    invoke-virtual {p0, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;->showDialog(I)V

    goto :goto_0

    .line 132
    :sswitch_3
    invoke-virtual {p0, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;->removeDialog(I)V

    goto :goto_0

    .line 136
    :sswitch_4
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;->mListView:Lcom/htc/opensense2/album/ViewTemplateBase;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/ViewTemplateBase;->getMainView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 137
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;->mListView:Lcom/htc/opensense2/album/ViewTemplateBase;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/ViewTemplateBase;->getMainView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    goto :goto_0

    .line 142
    :sswitch_5
    sget-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ActivityMainBaseHost][onMessageHandler]: SHOW_ALERTDLG_NO_ACTIVEUSER"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;->showDialog(I)V

    goto :goto_0

    .line 148
    :sswitch_6
    sget-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ActivityMainBaseHost][onMessageHandler]: SHOW_ALERTDLG_NO_CONNECTION"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;->showDialog(I)V

    goto :goto_0

    .line 153
    :sswitch_7
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;->finish()V

    goto :goto_0

    .line 117
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

.method protected onPause()V
    .locals 0

    .prologue
    .line 74
    invoke-super {p0}, Lcom/htc/opensense2/album/TemplateActivityBase;->onPause()V

    .line 75
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/TemplateActivityBase;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 68
    invoke-super {p0}, Lcom/htc/opensense2/album/TemplateActivityBase;->onResume()V

    .line 69
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isNetworkConnectionActive(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    const/16 v0, 0x274c

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 71
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 64
    invoke-super {p0}, Lcom/htc/opensense2/album/TemplateActivityBase;->onStart()V

    .line 65
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 78
    invoke-super {p0}, Lcom/htc/opensense2/album/TemplateActivityBase;->onStop()V

    .line 79
    return-void
.end method

.method public onUIUpdateNotify(ILjava/lang/Object;I)V
    .locals 4
    .parameter "nMessageID"
    .parameter "obj"
    .parameter "delayMillis"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;->mHandlerUI:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;->mHandlerUI:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;->mHandlerUI:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 213
    :cond_0
    return-void
.end method

.method public setFullscreen(Z)V
    .locals 0
    .parameter "bFullscreen"

    .prologue
    .line 199
    return-void
.end method

.method public setUIHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "hHandler"

    .prologue
    .line 218
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;->mHandlerUI:Landroid/os/Handler;

    .line 219
    return-void
.end method

.method protected abstract showDialogErrorCommunication()Landroid/app/Dialog;
.end method

.method protected abstract showDialogNoConnection()Landroid/app/Dialog;
.end method

.method protected showProgressDialog()Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 222
    const/4 v0, 0x0

    .line 223
    .local v0, dialog:Lcom/htc/app/HtcProgressDialog;
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    .end local v0           #dialog:Lcom/htc/app/HtcProgressDialog;
    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 224
    .restart local v0       #dialog:Lcom/htc/app/HtcProgressDialog;
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;->mLoadingText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 225
    new-instance v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$2;

    invoke-direct {v1, p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$2;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;)V

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 239
    return-object v0
.end method

.method public abstract syncExternalRequest()V
.end method
