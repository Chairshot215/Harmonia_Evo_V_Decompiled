.class Lcom/htc/lockscreen/idlescreen/IdleScreenService$IdleScreenServiceWrapper;
.super Lcom/htc/lockscreen/idlescreen/IIdleScreenService$Stub;
.source "IdleScreenService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/idlescreen/IdleScreenService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IdleScreenServiceWrapper"
.end annotation


# instance fields
.field private final mTarget:Lcom/htc/lockscreen/idlescreen/IdleScreenService;

.field final synthetic this$0:Lcom/htc/lockscreen/idlescreen/IdleScreenService;


# direct methods
.method public constructor <init>(Lcom/htc/lockscreen/idlescreen/IdleScreenService;Lcom/htc/lockscreen/idlescreen/IdleScreenService;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenService$IdleScreenServiceWrapper;->this$0:Lcom/htc/lockscreen/idlescreen/IdleScreenService;

    invoke-direct {p0}, Lcom/htc/lockscreen/idlescreen/IIdleScreenService$Stub;-><init>()V

    .line 131
    iput-object p2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenService$IdleScreenServiceWrapper;->mTarget:Lcom/htc/lockscreen/idlescreen/IdleScreenService;

    .line 132
    return-void
.end method


# virtual methods
.method public attach(Lcom/htc/lockscreen/idlescreen/IIdleScreenConnection;Landroid/os/IBinder;IIIIZII)V
    .locals 12
    .parameter "connection"
    .parameter "windowToken"
    .parameter "windowType"
    .parameter "windowAnimation"
    .parameter "windowFlag"
    .parameter "format"
    .parameter "isPreview"
    .parameter "reqWidth"
    .parameter "reqHeight"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 137
    new-instance v0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenService$IdleScreenServiceWrapper;->mTarget:Lcom/htc/lockscreen/idlescreen/IdleScreenService;

    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenService$IdleScreenServiceWrapper;->this$0:Lcom/htc/lockscreen/idlescreen/IdleScreenService;

    #getter for: Lcom/htc/lockscreen/idlescreen/IdleScreenService;->mCallbackLooper:Landroid/os/Looper;
    invoke-static {v2}, Lcom/htc/lockscreen/idlescreen/IdleScreenService;->access$000(Lcom/htc/lockscreen/idlescreen/IdleScreenService;)Landroid/os/Looper;

    move-result-object v11

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v11}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;-><init>(Lcom/htc/lockscreen/idlescreen/IdleScreenService;Lcom/htc/lockscreen/idlescreen/IIdleScreenConnection;Landroid/os/IBinder;IIIIZIILandroid/os/Looper;)V

    .line 140
    return-void
.end method
