.class Lcom/android/updater/UpdaterReceiver$GetCheckinStatusThread;
.super Ljava/lang/Thread;
.source "UpdaterReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/updater/UpdaterReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetCheckinStatusThread"
.end annotation


# instance fields
.field private mGetContext:Landroid/content/Context;

.field private mGetIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/android/updater/UpdaterReceiver;


# direct methods
.method public constructor <init>(Lcom/android/updater/UpdaterReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 854
    iput-object p1, p0, Lcom/android/updater/UpdaterReceiver$GetCheckinStatusThread;->this$0:Lcom/android/updater/UpdaterReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 855
    iput-object p2, p0, Lcom/android/updater/UpdaterReceiver$GetCheckinStatusThread;->mGetContext:Landroid/content/Context;

    .line 856
    iput-object p3, p0, Lcom/android/updater/UpdaterReceiver$GetCheckinStatusThread;->mGetIntent:Landroid/content/Intent;

    .line 857
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 861
    iget-object v0, p0, Lcom/android/updater/UpdaterReceiver$GetCheckinStatusThread;->this$0:Lcom/android/updater/UpdaterReceiver;

    iget-object v1, p0, Lcom/android/updater/UpdaterReceiver$GetCheckinStatusThread;->mGetContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/updater/UpdaterReceiver$GetCheckinStatusThread;->mGetIntent:Landroid/content/Intent;

    #calls: Lcom/android/updater/UpdaterReceiver;->checkCheckinStatus(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v0, v1, v2}, Lcom/android/updater/UpdaterReceiver;->access$000(Lcom/android/updater/UpdaterReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    .line 862
    return-void
.end method
