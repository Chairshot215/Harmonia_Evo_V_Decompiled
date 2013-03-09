.class Lcom/htc/android/psclient/RestoreUsbSettings$1$1;
.super Ljava/lang/Object;
.source "RestoreUsbSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/psclient/RestoreUsbSettings$1;->onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/psclient/RestoreUsbSettings$1;


# direct methods
.method constructor <init>(Lcom/htc/android/psclient/RestoreUsbSettings$1;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/htc/android/psclient/RestoreUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/RestoreUsbSettings$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 99
    iget-object v1, p0, Lcom/htc/android/psclient/RestoreUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/RestoreUsbSettings$1;

    iget-object v1, v1, Lcom/htc/android/psclient/RestoreUsbSettings$1;->this$0:Lcom/htc/android/psclient/RestoreUsbSettings;

    #getter for: Lcom/htc/android/psclient/RestoreUsbSettings;->itemlist:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/android/psclient/RestoreUsbSettings;->access$300(Lcom/htc/android/psclient/RestoreUsbSettings;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/psclient/RestoreUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/RestoreUsbSettings$1;

    iget-object v2, v2, Lcom/htc/android/psclient/RestoreUsbSettings$1;->this$0:Lcom/htc/android/psclient/RestoreUsbSettings;

    #getter for: Lcom/htc/android/psclient/RestoreUsbSettings;->button_id:I
    invoke-static {v2}, Lcom/htc/android/psclient/RestoreUsbSettings;->access$000(Lcom/htc/android/psclient/RestoreUsbSettings;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 100
    .local v0, selected:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/android/psclient/RestoreUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/RestoreUsbSettings$1;

    iget-object v1, v1, Lcom/htc/android/psclient/RestoreUsbSettings$1;->this$0:Lcom/htc/android/psclient/RestoreUsbSettings;

    #getter for: Lcom/htc/android/psclient/RestoreUsbSettings;->map:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/htc/android/psclient/RestoreUsbSettings;->access$200(Lcom/htc/android/psclient/RestoreUsbSettings;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "Charge Only"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/htc/android/psclient/RestoreUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/RestoreUsbSettings$1;

    iget-object v1, v1, Lcom/htc/android/psclient/RestoreUsbSettings$1;->this$0:Lcom/htc/android/psclient/RestoreUsbSettings;

    #calls: Lcom/htc/android/psclient/RestoreUsbSettings;->setChargeOnly()V
    invoke-static {v1}, Lcom/htc/android/psclient/RestoreUsbSettings;->access$400(Lcom/htc/android/psclient/RestoreUsbSettings;)V

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/htc/android/psclient/RestoreUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/RestoreUsbSettings$1;

    iget-object v1, v1, Lcom/htc/android/psclient/RestoreUsbSettings$1;->this$0:Lcom/htc/android/psclient/RestoreUsbSettings;

    #getter for: Lcom/htc/android/psclient/RestoreUsbSettings;->map:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/htc/android/psclient/RestoreUsbSettings;->access$200(Lcom/htc/android/psclient/RestoreUsbSettings;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "HTC Sync"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    iget-object v1, p0, Lcom/htc/android/psclient/RestoreUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/RestoreUsbSettings$1;

    iget-object v1, v1, Lcom/htc/android/psclient/RestoreUsbSettings$1;->this$0:Lcom/htc/android/psclient/RestoreUsbSettings;

    #calls: Lcom/htc/android/psclient/RestoreUsbSettings;->setHtcSync()V
    invoke-static {v1}, Lcom/htc/android/psclient/RestoreUsbSettings;->access$500(Lcom/htc/android/psclient/RestoreUsbSettings;)V

    .line 108
    :cond_1
    iget-object v1, p0, Lcom/htc/android/psclient/RestoreUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/RestoreUsbSettings$1;

    iget-object v1, v1, Lcom/htc/android/psclient/RestoreUsbSettings$1;->this$0:Lcom/htc/android/psclient/RestoreUsbSettings;

    #getter for: Lcom/htc/android/psclient/RestoreUsbSettings;->map:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/htc/android/psclient/RestoreUsbSettings;->access$200(Lcom/htc/android/psclient/RestoreUsbSettings;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "Disk Drive"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 109
    iget-object v1, p0, Lcom/htc/android/psclient/RestoreUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/RestoreUsbSettings$1;

    iget-object v1, v1, Lcom/htc/android/psclient/RestoreUsbSettings$1;->this$0:Lcom/htc/android/psclient/RestoreUsbSettings;

    #calls: Lcom/htc/android/psclient/RestoreUsbSettings;->setDiskDrive()V
    invoke-static {v1}, Lcom/htc/android/psclient/RestoreUsbSettings;->access$600(Lcom/htc/android/psclient/RestoreUsbSettings;)V

    .line 112
    :cond_2
    iget-object v1, p0, Lcom/htc/android/psclient/RestoreUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/RestoreUsbSettings$1;

    iget-object v1, v1, Lcom/htc/android/psclient/RestoreUsbSettings$1;->this$0:Lcom/htc/android/psclient/RestoreUsbSettings;

    #getter for: Lcom/htc/android/psclient/RestoreUsbSettings;->map:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/htc/android/psclient/RestoreUsbSettings;->access$200(Lcom/htc/android/psclient/RestoreUsbSettings;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "Internet Sharing"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 113
    iget-object v1, p0, Lcom/htc/android/psclient/RestoreUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/RestoreUsbSettings$1;

    iget-object v1, v1, Lcom/htc/android/psclient/RestoreUsbSettings$1;->this$0:Lcom/htc/android/psclient/RestoreUsbSettings;

    #calls: Lcom/htc/android/psclient/RestoreUsbSettings;->setInternetSharing()V
    invoke-static {v1}, Lcom/htc/android/psclient/RestoreUsbSettings;->access$700(Lcom/htc/android/psclient/RestoreUsbSettings;)V

    .line 116
    :cond_3
    iget-object v1, p0, Lcom/htc/android/psclient/RestoreUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/RestoreUsbSettings$1;

    iget-object v1, v1, Lcom/htc/android/psclient/RestoreUsbSettings$1;->this$0:Lcom/htc/android/psclient/RestoreUsbSettings;

    #getter for: Lcom/htc/android/psclient/RestoreUsbSettings;->map:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/htc/android/psclient/RestoreUsbSettings;->access$200(Lcom/htc/android/psclient/RestoreUsbSettings;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "Modem link"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 117
    iget-object v1, p0, Lcom/htc/android/psclient/RestoreUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/RestoreUsbSettings$1;

    iget-object v1, v1, Lcom/htc/android/psclient/RestoreUsbSettings$1;->this$0:Lcom/htc/android/psclient/RestoreUsbSettings;

    #calls: Lcom/htc/android/psclient/RestoreUsbSettings;->setModemLink()V
    invoke-static {v1}, Lcom/htc/android/psclient/RestoreUsbSettings;->access$800(Lcom/htc/android/psclient/RestoreUsbSettings;)V

    .line 120
    :cond_4
    iget-object v1, p0, Lcom/htc/android/psclient/RestoreUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/RestoreUsbSettings$1;

    iget-object v1, v1, Lcom/htc/android/psclient/RestoreUsbSettings$1;->this$0:Lcom/htc/android/psclient/RestoreUsbSettings;

    #getter for: Lcom/htc/android/psclient/RestoreUsbSettings;->map:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/htc/android/psclient/RestoreUsbSettings;->access$200(Lcom/htc/android/psclient/RestoreUsbSettings;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "Media Sync"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 121
    iget-object v1, p0, Lcom/htc/android/psclient/RestoreUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/RestoreUsbSettings$1;

    iget-object v1, v1, Lcom/htc/android/psclient/RestoreUsbSettings$1;->this$0:Lcom/htc/android/psclient/RestoreUsbSettings;

    #calls: Lcom/htc/android/psclient/RestoreUsbSettings;->setMediaSync()V
    invoke-static {v1}, Lcom/htc/android/psclient/RestoreUsbSettings;->access$900(Lcom/htc/android/psclient/RestoreUsbSettings;)V

    .line 124
    :cond_5
    iget-object v1, p0, Lcom/htc/android/psclient/RestoreUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/RestoreUsbSettings$1;

    iget-object v1, v1, Lcom/htc/android/psclient/RestoreUsbSettings$1;->this$0:Lcom/htc/android/psclient/RestoreUsbSettings;

    #getter for: Lcom/htc/android/psclient/RestoreUsbSettings;->map:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/htc/android/psclient/RestoreUsbSettings;->access$200(Lcom/htc/android/psclient/RestoreUsbSettings;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "Internet Pass Through"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 125
    iget-object v1, p0, Lcom/htc/android/psclient/RestoreUsbSettings$1$1;->this$1:Lcom/htc/android/psclient/RestoreUsbSettings$1;

    iget-object v1, v1, Lcom/htc/android/psclient/RestoreUsbSettings$1;->this$0:Lcom/htc/android/psclient/RestoreUsbSettings;

    #calls: Lcom/htc/android/psclient/RestoreUsbSettings;->setInternetPassThrough()V
    invoke-static {v1}, Lcom/htc/android/psclient/RestoreUsbSettings;->access$1000(Lcom/htc/android/psclient/RestoreUsbSettings;)V

    .line 127
    :cond_6
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 128
    return-void
.end method
