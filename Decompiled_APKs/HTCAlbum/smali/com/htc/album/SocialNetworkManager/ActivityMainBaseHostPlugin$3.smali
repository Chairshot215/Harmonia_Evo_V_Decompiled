.class Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin$3;
.super Landroid/os/Handler;
.source "ActivityMainBaseHostPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;


# direct methods
.method constructor <init>(Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;)V
    .locals 0
    .parameter

    .prologue
    .line 370
    iput-object p1, p0, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin$3;->this$0:Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 374
    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin$3;->this$0:Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;

    invoke-virtual {v0, p1}, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->onMessageHandler(Landroid/os/Message;)V

    .line 375
    return-void
.end method
