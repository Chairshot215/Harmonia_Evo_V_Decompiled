.class Lcom/googlecode/android/wifi/tether/TetherApplication$5;
.super Ljava/lang/Object;
.source "TetherApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlecode/android/wifi/tether/TetherApplication;->downloadUpdate(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/googlecode/android/wifi/tether/TetherApplication;

.field private final synthetic val$downloadFileUrl:Ljava/lang/String;

.field private final synthetic val$fileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/googlecode/android/wifi/tether/TetherApplication;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/googlecode/android/wifi/tether/TetherApplication$5;->this$0:Lcom/googlecode/android/wifi/tether/TetherApplication;

    iput-object p2, p0, Lcom/googlecode/android/wifi/tether/TetherApplication$5;->val$downloadFileUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/googlecode/android/wifi/tether/TetherApplication$5;->val$fileName:Ljava/lang/String;

    .line 742
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 744
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 745
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    .line 746
    const-string v2, "Downloading update..."

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 747
    sget-object v2, Lcom/googlecode/android/wifi/tether/MainActivity;->currentInstance:Lcom/googlecode/android/wifi/tether/MainActivity;

    iget-object v2, v2, Lcom/googlecode/android/wifi/tether/MainActivity;->viewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 748
    iget-object v2, p0, Lcom/googlecode/android/wifi/tether/TetherApplication$5;->this$0:Lcom/googlecode/android/wifi/tether/TetherApplication;

    iget-object v2, v2, Lcom/googlecode/android/wifi/tether/TetherApplication;->webserviceTask:Lcom/googlecode/android/wifi/tether/system/WebserviceTask;

    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherApplication$5;->val$downloadFileUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/googlecode/android/wifi/tether/TetherApplication$5;->val$fileName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/googlecode/android/wifi/tether/system/WebserviceTask;->downloadUpdateFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 749
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 750
    .local v0, intent:Landroid/content/Intent;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/sdcard/download/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/googlecode/android/wifi/tether/TetherApplication$5;->val$fileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 751
    sget-object v2, Lcom/googlecode/android/wifi/tether/MainActivity;->currentInstance:Lcom/googlecode/android/wifi/tether/MainActivity;

    invoke-virtual {v2, v0}, Lcom/googlecode/android/wifi/tether/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 752
    return-void
.end method
