.class Lcom/htc/clock/util/social/SocialNetworkCtrl$1;
.super Ljava/lang/Object;
.source "SocialNetworkCtrl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/clock/util/social/SocialNetworkCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/clock/util/social/SocialNetworkCtrl;


# direct methods
.method constructor <init>(Lcom/htc/clock/util/social/SocialNetworkCtrl;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/htc/clock/util/social/SocialNetworkCtrl$1;->this$0:Lcom/htc/clock/util/social/SocialNetworkCtrl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 77
    iget-object v1, p0, Lcom/htc/clock/util/social/SocialNetworkCtrl$1;->this$0:Lcom/htc/clock/util/social/SocialNetworkCtrl;

    #getter for: Lcom/htc/clock/util/social/SocialNetworkCtrl;->mListener:Lcom/htc/clock/util/social/SocialNetworkCtrl$OnUpdateListener;
    invoke-static {v1}, Lcom/htc/clock/util/social/SocialNetworkCtrl;->access$100(Lcom/htc/clock/util/social/SocialNetworkCtrl;)Lcom/htc/clock/util/social/SocialNetworkCtrl$OnUpdateListener;

    move-result-object v0

    .line 78
    .local v0, listener:Lcom/htc/clock/util/social/SocialNetworkCtrl$OnUpdateListener;
    if-eqz v0, :cond_0

    .line 79
    iget-object v1, p0, Lcom/htc/clock/util/social/SocialNetworkCtrl$1;->this$0:Lcom/htc/clock/util/social/SocialNetworkCtrl;

    invoke-virtual {v1}, Lcom/htc/clock/util/social/SocialNetworkCtrl;->getLastSocialData()Lcom/htc/clock/util/social/SocialData;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/htc/clock/util/social/SocialNetworkCtrl$OnUpdateListener;->onUpdate(Lcom/htc/clock/util/social/SocialData;)V

    .line 80
    :cond_0
    return-void
.end method
