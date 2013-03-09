.class Lcom/htc/omadm/libdo/system/Lawmo$2;
.super Landroid/content/BroadcastReceiver;
.source "Lawmo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/omadm/libdo/system/Lawmo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field getPincode:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/omadm/libdo/system/Lawmo;


# direct methods
.method constructor <init>(Lcom/htc/omadm/libdo/system/Lawmo;)V
    .locals 0
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/htc/omadm/libdo/system/Lawmo$2;->this$0:Lcom/htc/omadm/libdo/system/Lawmo;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 190
    const-string v0, "Lawmo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.htc.android.omadm.pin.check"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    const-string v0, "Lawmo"

    const-string v1, "receive pin intent"

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "dm.lawmo.pin"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/omadm/libdo/system/Lawmo$2;->getPincode:Ljava/lang/String;

    .line 194
    const-string v0, "Lawmo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "input pin code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/omadm/libdo/system/Lawmo$2;->getPincode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/htc/omadm/libdo/system/Lawmo$2;->this$0:Lcom/htc/omadm/libdo/system/Lawmo;

    iget-object v1, p0, Lcom/htc/omadm/libdo/system/Lawmo$2;->getPincode:Ljava/lang/String;

    #calls: Lcom/htc/omadm/libdo/system/Lawmo;->Checkpincodeunlock(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/omadm/libdo/system/Lawmo;->access$100(Lcom/htc/omadm/libdo/system/Lawmo;Ljava/lang/String;)V

    .line 198
    :cond_0
    return-void
.end method
