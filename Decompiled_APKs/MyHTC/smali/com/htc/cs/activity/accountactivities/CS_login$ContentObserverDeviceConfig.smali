.class Lcom/htc/cs/activity/accountactivities/CS_login$ContentObserverDeviceConfig;
.super Landroid/database/ContentObserver;
.source "CS_login.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cs/activity/accountactivities/CS_login;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentObserverDeviceConfig"
.end annotation


# instance fields
.field private logger:Lcom/htc/cs/util/Logger;

.field final synthetic this$0:Lcom/htc/cs/activity/accountactivities/CS_login;


# direct methods
.method public constructor <init>(Lcom/htc/cs/activity/accountactivities/CS_login;)V
    .locals 1
    .parameter

    .prologue
    .line 344
    iput-object p1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$ContentObserverDeviceConfig;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    .line 345
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 342
    invoke-static {p0}, Lcom/htc/cs/util/Logger;->getLogger(Ljava/lang/Object;)Lcom/htc/cs/util/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$ContentObserverDeviceConfig;->logger:Lcom/htc/cs/util/Logger;

    .line 347
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 351
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$ContentObserverDeviceConfig;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v0}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 352
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$ContentObserverDeviceConfig;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cs/activity/accountactivities/CS_login;->provisioningUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$402(Lcom/htc/cs/activity/accountactivities/CS_login;Z)Z

    .line 353
    return-void
.end method
