.class public Lcom/htc/service/UserBehaviorLoggingManager;
.super Ljava/lang/Object;
.source "UserBehaviorLoggingManager.java"


# instance fields
.field private mUBLService:Lcom/htc/utils/ulog/IUserBehaviorLoggingService;


# direct methods
.method public constructor <init>(Lcom/htc/utils/ulog/IUserBehaviorLoggingService;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/htc/service/UserBehaviorLoggingManager;->mUBLService:Lcom/htc/utils/ulog/IUserBehaviorLoggingService;

    return-void
.end method


# virtual methods
.method public setPolicy(Landroid/os/Bundle;)Z
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/htc/service/UserBehaviorLoggingManager;->mUBLService:Lcom/htc/utils/ulog/IUserBehaviorLoggingService;

    invoke-interface {v2, p1}, Lcom/htc/utils/ulog/IUserBehaviorLoggingService;->setPolicy(Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
