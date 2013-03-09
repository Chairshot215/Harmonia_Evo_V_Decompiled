.class Lcom/htc/clock/util/social/SocialNetworkCtrl$BGHandler;
.super Landroid/os/Handler;
.source "SocialNetworkCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/clock/util/social/SocialNetworkCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BGHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/clock/util/social/SocialNetworkCtrl;


# direct methods
.method constructor <init>(Lcom/htc/clock/util/social/SocialNetworkCtrl;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/htc/clock/util/social/SocialNetworkCtrl$BGHandler;->this$0:Lcom/htc/clock/util/social/SocialNetworkCtrl;

    .line 48
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 49
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/clock/util/social/SocialNetworkCtrl$BGHandler;->this$0:Lcom/htc/clock/util/social/SocialNetworkCtrl;

    iget-object v1, p0, Lcom/htc/clock/util/social/SocialNetworkCtrl$BGHandler;->this$0:Lcom/htc/clock/util/social/SocialNetworkCtrl;

    iget-object v1, v1, Lcom/htc/clock/util/social/SocialNetworkCtrl;->mContext:Landroid/content/Context;

    #calls: Lcom/htc/clock/util/social/SocialNetworkCtrl;->update(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/htc/clock/util/social/SocialNetworkCtrl;->access$000(Lcom/htc/clock/util/social/SocialNetworkCtrl;Landroid/content/Context;)V

    .line 53
    return-void
.end method
