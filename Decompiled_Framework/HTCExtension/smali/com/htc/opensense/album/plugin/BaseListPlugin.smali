.class public abstract Lcom/htc/opensense/album/plugin/BaseListPlugin;
.super Ljava/lang/Object;
.source "BaseListPlugin.java"


# instance fields
.field mContext:Landroid/content/Context;

.field mUIHandler:Lcom/htc/opensense/album/plugin/IUIHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/opensense/album/plugin/IUIHandler;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/album/plugin/BaseListPlugin;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/htc/opensense/album/plugin/BaseListPlugin;->mUIHandler:Lcom/htc/opensense/album/plugin/IUIHandler;

    iput-object p1, p0, Lcom/htc/opensense/album/plugin/BaseListPlugin;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/htc/opensense/album/plugin/BaseListPlugin;->mUIHandler:Lcom/htc/opensense/album/plugin/IUIHandler;

    return-void
.end method


# virtual methods
.method public abstract getActiveUser(Landroid/accounts/Account;)Lcom/htc/opensense/album/plugin/PersonData;
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/plugin/BaseListPlugin;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getUIHandler()Lcom/htc/opensense/album/plugin/IUIHandler;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/plugin/BaseListPlugin;->mUIHandler:Lcom/htc/opensense/album/plugin/IUIHandler;

    return-object v0
.end method

.method public abstract onDeInit()V
.end method

.method public onEnableCacheList()Z
    .locals 1

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

    return-void
.end method

.method public onUIHandlerMessage(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public setUIHandler(Lcom/htc/opensense/album/plugin/IUIHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/album/plugin/BaseListPlugin;->mUIHandler:Lcom/htc/opensense/album/plugin/IUIHandler;

    return-void
.end method
