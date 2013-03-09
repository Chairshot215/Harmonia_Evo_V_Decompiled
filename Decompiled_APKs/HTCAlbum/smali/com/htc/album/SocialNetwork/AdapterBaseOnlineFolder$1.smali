.class Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$1;
.super Landroid/os/Handler;
.source "AdapterBaseOnlineFolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->onLoadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;


# direct methods
.method constructor <init>(Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$1;->this$0:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$1;->this$0:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;

    invoke-virtual {v0, p1}, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->onMessageHandler(Landroid/os/Message;)V

    .line 79
    return-void
.end method
