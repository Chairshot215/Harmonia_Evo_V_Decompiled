.class Lcom/htc/socialnetwork/SocialNetworkClient$SocialNetworkContentObserver;
.super Landroid/database/ContentObserver;
.source "SocialNetworkClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/socialnetwork/SocialNetworkClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SocialNetworkContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/socialnetwork/SocialNetworkClient;


# direct methods
.method public constructor <init>(Lcom/htc/socialnetwork/SocialNetworkClient;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    .line 779
    iput-object p1, p0, Lcom/htc/socialnetwork/SocialNetworkClient$SocialNetworkContentObserver;->this$0:Lcom/htc/socialnetwork/SocialNetworkClient;

    .line 780
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 781
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 790
    :try_start_0
    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkClient$SocialNetworkContentObserver;->this$0:Lcom/htc/socialnetwork/SocialNetworkClient;

    invoke-virtual {v1}, Lcom/htc/socialnetwork/SocialNetworkClient;->refreshData()V
    :try_end_0
    .catch Lcom/htc/socialnetwork/SocialNetworkException; {:try_start_0 .. :try_end_0} :catch_0

    .line 794
    :goto_0
    return-void

    .line 791
    :catch_0
    move-exception v0

    .line 792
    .local v0, e:Lcom/htc/socialnetwork/SocialNetworkException;
    const-string v1, "SocialNetwork"

    invoke-virtual {v0}, Lcom/htc/socialnetwork/SocialNetworkException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
