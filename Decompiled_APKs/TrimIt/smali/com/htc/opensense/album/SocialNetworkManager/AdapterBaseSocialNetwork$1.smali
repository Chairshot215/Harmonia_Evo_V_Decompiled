.class Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$1;
.super Landroid/os/Handler;
.source "AdapterBaseSocialNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;


# direct methods
.method constructor <init>(Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;)V
    .locals 0
    .parameter

    .prologue
    .line 292
    .local p0, this:Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$1;,"Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork.1;"
    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$1;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 296
    .local p0, this:Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$1;,"Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork.1;"
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$1;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    invoke-virtual {v0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onMessageHandler(Landroid/os/Message;)V

    .line 297
    return-void
.end method
