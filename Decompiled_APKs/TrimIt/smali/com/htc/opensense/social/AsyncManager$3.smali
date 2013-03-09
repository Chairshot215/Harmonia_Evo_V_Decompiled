.class Lcom/htc/opensense/social/AsyncManager$3;
.super Ljava/lang/Object;
.source "AsyncManager.java"

# interfaces
.implements Lcom/htc/opensense/social/AsyncManager$AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/social/AsyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/opensense/social/AsyncManager$AsyncTask",
        "<",
        "Lcom/htc/opensense/social/data/Person;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense/social/AsyncManager;


# direct methods
.method constructor <init>(Lcom/htc/opensense/social/AsyncManager;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/htc/opensense/social/AsyncManager$3;->this$0:Lcom/htc/opensense/social/AsyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asyncGetDataList(Ljava/lang/String;)V
    .locals 1
    .parameter "uid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/htc/opensense/social/AsyncManager$3;->this$0:Lcom/htc/opensense/social/AsyncManager;

    iget-object v0, v0, Lcom/htc/opensense/social/AsyncManager;->asyncService:Lcom/htc/opensense/social/IAsyncSocialService;

    invoke-interface {v0, p1}, Lcom/htc/opensense/social/IAsyncSocialService;->getFeeds(Ljava/lang/String;)V

    .line 159
    return-void
.end method
