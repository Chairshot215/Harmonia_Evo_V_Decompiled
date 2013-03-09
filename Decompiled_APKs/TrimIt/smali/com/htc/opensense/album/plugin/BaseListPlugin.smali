.class public abstract Lcom/htc/opensense/album/plugin/BaseListPlugin;
.super Ljava/lang/Object;
.source "BaseListPlugin.java"


# instance fields
.field mContext:Landroid/content/Context;

.field mUIHandler:Lcom/htc/opensense/album/plugin/IUIHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/opensense/album/plugin/IUIHandler;)V
    .locals 1
    .parameter "context"
    .parameter "uiHandler"

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/htc/opensense/album/plugin/BaseListPlugin;->mContext:Landroid/content/Context;

    .line 18
    iput-object v0, p0, Lcom/htc/opensense/album/plugin/BaseListPlugin;->mUIHandler:Lcom/htc/opensense/album/plugin/IUIHandler;

    .line 26
    iput-object p1, p0, Lcom/htc/opensense/album/plugin/BaseListPlugin;->mContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/htc/opensense/album/plugin/BaseListPlugin;->mUIHandler:Lcom/htc/opensense/album/plugin/IUIHandler;

    .line 28
    return-void
.end method


# virtual methods
.method public abstract getActiveUser(Landroid/accounts/Account;)Lcom/htc/opensense/album/plugin/PersonData;
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/htc/opensense/album/plugin/BaseListPlugin;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getUIHandler()Lcom/htc/opensense/album/plugin/IUIHandler;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/opensense/album/plugin/BaseListPlugin;->mUIHandler:Lcom/htc/opensense/album/plugin/IUIHandler;

    return-object v0
.end method

.method public abstract onDeInit()V
.end method

.method public onEnableCacheList()Z
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method public abstract onFetchUrlBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
.end method

.method public abstract onInit()V
.end method

.method public abstract onOptionsItemSelected(Landroid/view/MenuItem;ILjava/lang/String;)Z
.end method

.method public abstract onPrepareOptionsMenu(Landroid/view/Menu;ILjava/lang/String;)Z
.end method

.method public onUIActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 69
    return-void
.end method

.method public onUIHandlerMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 61
    return-void
.end method

.method public setUIHandler(Lcom/htc/opensense/album/plugin/IUIHandler;)V
    .locals 0
    .parameter "uiHandler"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/htc/opensense/album/plugin/BaseListPlugin;->mUIHandler:Lcom/htc/opensense/album/plugin/IUIHandler;

    .line 55
    return-void
.end method
