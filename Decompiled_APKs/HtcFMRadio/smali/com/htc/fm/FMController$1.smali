.class Lcom/htc/fm/FMController$1;
.super Ljava/lang/Object;
.source "FMController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fm/FMController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fm/FMController;


# direct methods
.method constructor <init>(Lcom/htc/fm/FMController;)V
    .locals 0
    .parameter

    .prologue
    .line 579
    iput-object p1, p0, Lcom/htc/fm/FMController$1;->this$0:Lcom/htc/fm/FMController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "classname"
    .parameter "obj"

    .prologue
    .line 582
    const-string v0, "FMController"

    const-string v1, "[FMController][FMServiceBind] ServiceConnected() - start"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    iget-object v0, p0, Lcom/htc/fm/FMController$1;->this$0:Lcom/htc/fm/FMController;

    const/4 v1, 0x0

    #setter for: Lcom/htc/fm/FMController;->mIsOnBinding:Z
    invoke-static {v0, v1}, Lcom/htc/fm/FMController;->access$002(Lcom/htc/fm/FMController;Z)Z

    .line 584
    iget-object v0, p0, Lcom/htc/fm/FMController$1;->this$0:Lcom/htc/fm/FMController;

    invoke-static {p2}, Lcom/htc/fm/IFMRadioService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/fm/IFMRadioService;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    .line 585
    iget-object v0, p0, Lcom/htc/fm/FMController$1;->this$0:Lcom/htc/fm/FMController;

    const/4 v1, 0x1

    #calls: Lcom/htc/fm/FMController;->updateServiceState(I)V
    invoke-static {v0, v1}, Lcom/htc/fm/FMController;->access$100(Lcom/htc/fm/FMController;I)V

    .line 586
    const-string v0, "FMController"

    const-string v1, "[FMController][FMServiceBind] onServiceConnected() - end"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "classname"

    .prologue
    const/4 v2, 0x0

    .line 590
    const-string v0, "FMController"

    const-string v1, "[FMController][FMServiceBind] onServiceDisconnected()"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    iget-object v0, p0, Lcom/htc/fm/FMController$1;->this$0:Lcom/htc/fm/FMController;

    #setter for: Lcom/htc/fm/FMController;->mIsOnBinding:Z
    invoke-static {v0, v2}, Lcom/htc/fm/FMController;->access$002(Lcom/htc/fm/FMController;Z)Z

    .line 592
    iget-object v0, p0, Lcom/htc/fm/FMController$1;->this$0:Lcom/htc/fm/FMController;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/htc/fm/FMController;->mService:Lcom/htc/fm/IFMRadioService;

    .line 593
    iget-object v0, p0, Lcom/htc/fm/FMController$1;->this$0:Lcom/htc/fm/FMController;

    #calls: Lcom/htc/fm/FMController;->updateServiceState(I)V
    invoke-static {v0, v2}, Lcom/htc/fm/FMController;->access$100(Lcom/htc/fm/FMController;I)V

    .line 594
    return-void
.end method
