.class Lcom/sprint/ce/updater/UpdaterService$1;
.super Ljava/util/TimerTask;
.source "UpdaterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/ce/updater/UpdaterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/ce/updater/UpdaterService;


# direct methods
.method constructor <init>(Lcom/sprint/ce/updater/UpdaterService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/ce/updater/UpdaterService$1;->this$0:Lcom/sprint/ce/updater/UpdaterService;

    .line 184
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterService$1;->this$0:Lcom/sprint/ce/updater/UpdaterService;

    #calls: Lcom/sprint/ce/updater/UpdaterService;->handleFailedAttempt()V
    invoke-static {v0}, Lcom/sprint/ce/updater/UpdaterService;->access$0(Lcom/sprint/ce/updater/UpdaterService;)V

    .line 196
    return-void
.end method
