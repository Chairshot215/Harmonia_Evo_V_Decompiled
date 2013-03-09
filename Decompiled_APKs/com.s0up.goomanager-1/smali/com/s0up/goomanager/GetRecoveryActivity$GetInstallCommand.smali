.class Lcom/s0up/goomanager/GetRecoveryActivity$GetInstallCommand;
.super Landroid/os/AsyncTask;
.source "GetRecoveryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s0up/goomanager/GetRecoveryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetInstallCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/s0up/goomanager/GetRecoveryActivity;


# direct methods
.method private constructor <init>(Lcom/s0up/goomanager/GetRecoveryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/s0up/goomanager/GetRecoveryActivity$GetInstallCommand;->this$0:Lcom/s0up/goomanager/GetRecoveryActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/s0up/goomanager/GetRecoveryActivity;Lcom/s0up/goomanager/GetRecoveryActivity$GetInstallCommand;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 199
    invoke-direct {p0, p1}, Lcom/s0up/goomanager/GetRecoveryActivity$GetInstallCommand;-><init>(Lcom/s0up/goomanager/GetRecoveryActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/s0up/goomanager/GetRecoveryActivity$GetInstallCommand;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "params"

    .prologue
    .line 209
    invoke-static {}, Lcom/s0up/goomanager/RomUpdateBootReciever;->getBoardName()Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, board:Ljava/lang/String;
    new-instance v2, Lcom/s0up/goomanager/WebRequest;

    invoke-direct {v2}, Lcom/s0up/goomanager/WebRequest;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://goo.im/json2&action=get_install_command&ro_board="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/s0up/goomanager/WebRequest;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, result:Ljava/lang/String;
    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/s0up/goomanager/GetRecoveryActivity$GetInstallCommand;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 202
    if-eqz p1, :cond_0

    .line 203
    invoke-static {}, Lcom/s0up/goomanager/Singleton;->getInstance()Lcom/s0up/goomanager/Singleton;

    move-result-object v0

    const-string v1, "device_install_command"

    invoke-virtual {v0, v1, p1}, Lcom/s0up/goomanager/Singleton;->setExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :cond_0
    return-void
.end method
