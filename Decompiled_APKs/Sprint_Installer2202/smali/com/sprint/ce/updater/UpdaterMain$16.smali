.class Lcom/sprint/ce/updater/UpdaterMain$16;
.super Ljava/lang/Thread;
.source "UpdaterMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/ce/updater/UpdaterMain;->downloadAndInstallUpdatesAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/ce/updater/UpdaterMain;


# direct methods
.method constructor <init>(Lcom/sprint/ce/updater/UpdaterMain;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/ce/updater/UpdaterMain$16;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    .line 865
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 868
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$16;->this$0:Lcom/sprint/ce/updater/UpdaterMain;

    invoke-virtual {v0}, Lcom/sprint/ce/updater/UpdaterMain;->downloadAndInstallUpdates()V

    .line 869
    return-void
.end method
