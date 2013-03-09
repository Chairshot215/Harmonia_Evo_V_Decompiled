.class public Lcom/htc/album/addons/AdaterTagPhotos;
.super Lcom/htc/opensense2/album/AdapterBase;
.source "AdaterTagPhotos.java"

# interfaces
.implements Lcom/htc/opensense2/album/SocialNetworkManager/NotifyBaseUI;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AdaterTagPhotos"


# instance fields
.field private mHandlerUI:Landroid/os/Handler;

.field private mIntent:Landroid/content/Intent;

.field private mTagPhotoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TagUtils/TagPhotoInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter "ctx"

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/AdapterBase;-><init>(Landroid/app/Activity;)V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/addons/AdaterTagPhotos;->mTagPhotoList:Ljava/util/ArrayList;

    .line 20
    iput-object v1, p0, Lcom/htc/album/addons/AdaterTagPhotos;->mIntent:Landroid/content/Intent;

    .line 21
    iput-object v1, p0, Lcom/htc/album/addons/AdaterTagPhotos;->mHandlerUI:Landroid/os/Handler;

    .line 26
    return-void
.end method


# virtual methods
.method public bindAdapter()V
    .locals 3

    .prologue
    .line 57
    iget-object v2, p0, Lcom/htc/album/addons/AdaterTagPhotos;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    .line 59
    iget-object v2, p0, Lcom/htc/album/addons/AdaterTagPhotos;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 60
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "photoList"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 61
    .local v1, tagPhotoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TagUtils/TagPhotoInfo;>;"
    iget-object v2, p0, Lcom/htc/album/addons/AdaterTagPhotos;->mTagPhotoList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 63
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #tagPhotoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TagUtils/TagPhotoInfo;>;"
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/album/addons/AdaterTagPhotos;->mTagPhotoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "nIndex"

    .prologue
    .line 36
    const/4 v0, 0x0

    .line 37
    .local v0, object:Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/htc/album/addons/AdaterTagPhotos;->getCount()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 38
    iget-object v1, p0, Lcom/htc/album/addons/AdaterTagPhotos;->mTagPhotoList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 40
    .end local v0           #object:Ljava/lang/Object;
    :cond_0
    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 45
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getUIHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public onUIUpdateNotify(ILjava/lang/Object;I)V
    .locals 4
    .parameter "nMessageID"
    .parameter "obj"
    .parameter "delayMillis"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/htc/album/addons/AdaterTagPhotos;->mHandlerUI:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/htc/album/addons/AdaterTagPhotos;->mHandlerUI:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/album/addons/AdaterTagPhotos;->mHandlerUI:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 87
    :cond_0
    return-void
.end method

.method public setForwardIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/htc/album/addons/AdaterTagPhotos;->mIntent:Landroid/content/Intent;

    .line 71
    return-void
.end method

.method public setUIHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "hHandler"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/htc/album/addons/AdaterTagPhotos;->mHandlerUI:Landroid/os/Handler;

    .line 76
    return-void
.end method

.method public unbindAdapter()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method
