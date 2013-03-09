.class Lcom/htc/sdcardwizard/handler/ApplicationsHandler$1;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "ApplicationsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sdcardwizard/handler/ApplicationsHandler;->deleteItems(Lcom/htc/sdcardwizard/handler/SDCardItems;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sdcardwizard/handler/ApplicationsHandler;


# direct methods
.method constructor <init>(Lcom/htc/sdcardwizard/handler/ApplicationsHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/htc/sdcardwizard/handler/ApplicationsHandler$1;->this$0:Lcom/htc/sdcardwizard/handler/ApplicationsHandler;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 59
    const-string v0, "LSCW/ApplicationsHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package deleted: success="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    monitor-enter p0

    .line 61
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 62
    monitor-exit p0

    .line 63
    return-void

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
