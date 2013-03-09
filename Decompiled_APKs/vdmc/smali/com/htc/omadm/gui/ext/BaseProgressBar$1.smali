.class Lcom/htc/omadm/gui/ext/BaseProgressBar$1;
.super Landroid/content/BroadcastReceiver;
.source "BaseProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/omadm/gui/ext/BaseProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/omadm/gui/ext/BaseProgressBar;


# direct methods
.method constructor <init>(Lcom/htc/omadm/gui/ext/BaseProgressBar;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar$1;->this$0:Lcom/htc/omadm/gui/ext/BaseProgressBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar$1;->this$0:Lcom/htc/omadm/gui/ext/BaseProgressBar;

    iget-boolean v0, v0, Lcom/htc/omadm/gui/ext/BaseProgressBar;->DBG:Z

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar$1;->this$0:Lcom/htc/omadm/gui/ext/BaseProgressBar;

    #getter for: Lcom/htc/omadm/gui/ext/BaseProgressBar;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/omadm/gui/ext/BaseProgressBar;->access$000(Lcom/htc/omadm/gui/ext/BaseProgressBar;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar$1;->this$0:Lcom/htc/omadm/gui/ext/BaseProgressBar;

    #getter for: Lcom/htc/omadm/gui/ext/BaseProgressBar;->mOption:I
    invoke-static {v2}, Lcom/htc/omadm/gui/ext/BaseProgressBar;->access$100(Lcom/htc/omadm/gui/ext/BaseProgressBar;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar$1;->this$0:Lcom/htc/omadm/gui/ext/BaseProgressBar;

    #getter for: Lcom/htc/omadm/gui/ext/BaseProgressBar;->mStatus:I
    invoke-static {v2}, Lcom/htc/omadm/gui/ext/BaseProgressBar;->access$200(Lcom/htc/omadm/gui/ext/BaseProgressBar;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " BaseProgressBar onReceive -> Intent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/gui/ext/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.htc.andorid.omadm.progressbar.callexit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 64
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x91

    if-eq v0, v1, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x93

    if-ne v0, v1, :cond_2

    .line 66
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/omadm/prop/PropertyState;->UI_PROGRESS_BAR_ENABLE:Z

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar$1;->this$0:Lcom/htc/omadm/gui/ext/BaseProgressBar;

    const-string v1, "com.htc.andorid.omadm.progressbar.exit"

    #calls: Lcom/htc/omadm/gui/ext/BaseProgressBar;->callCallback(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/omadm/gui/ext/BaseProgressBar;->access$300(Lcom/htc/omadm/gui/ext/BaseProgressBar;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseProgressBar$1;->this$0:Lcom/htc/omadm/gui/ext/BaseProgressBar;

    #calls: Lcom/htc/omadm/gui/ext/BaseProgressBar;->callDismissFinish()V
    invoke-static {v0}, Lcom/htc/omadm/gui/ext/BaseProgressBar;->access$400(Lcom/htc/omadm/gui/ext/BaseProgressBar;)V

    .line 72
    :cond_3
    return-void
.end method
