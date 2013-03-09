.class Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$1;
.super Landroid/os/Handler;
.source "ActivityMainMaBaseHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;


# direct methods
.method constructor <init>(Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$1;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$1;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;

    invoke-virtual {v0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;->onMessageHandler(Landroid/os/Message;)V

    .line 189
    return-void
.end method
