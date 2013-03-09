.class Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$1;
.super Landroid/os/Handler;
.source "AdapterBaseSocialNetworkPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->loadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;


# direct methods
.method constructor <init>(Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$1;->this$0:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$1;->this$0:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;

    invoke-virtual {v0, p1}, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->onMessageHandler(Landroid/os/Message;)V

    .line 77
    return-void
.end method
