.class Lcom/android/settings/ModemLinkEnabler$1;
.super Ljava/lang/Object;
.source "ModemLinkEnabler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ModemLinkEnabler;->toggleMLState(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ModemLinkEnabler;

.field final synthetic val$isOn:Z


# direct methods
.method constructor <init>(Lcom/android/settings/ModemLinkEnabler;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/settings/ModemLinkEnabler$1;->this$0:Lcom/android/settings/ModemLinkEnabler;

    iput-boolean p2, p0, Lcom/android/settings/ModemLinkEnabler$1;->val$isOn:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 238
    iget-boolean v0, p0, Lcom/android/settings/ModemLinkEnabler$1;->val$isOn:Z

    if-eqz v0, :cond_0

    .line 241
    invoke-static {}, Lcom/android/settings/ModemLinkEnabler;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/settings/ModemLinkEnabler;->setDataConnection(ZLandroid/content/Context;)V

    .line 242
    invoke-static {}, Lcom/android/settings/ModemLinkEnabler;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/settings/ModemLinkEnabler;->setDiagEnabled(ZLandroid/content/Context;)V

    .line 243
    invoke-static {}, Lcom/android/settings/ModemLinkEnabler;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/settings/ModemLinkEnabler;->setMLEnabled(ZLandroid/content/Context;)V

    .line 244
    invoke-static {}, Lcom/android/settings/ModemLinkEnabler;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/settings/ModemLinkEnabler;->GiveISNote(ZLandroid/content/Context;)V

    .line 245
    iget-object v0, p0, Lcom/android/settings/ModemLinkEnabler$1;->this$0:Lcom/android/settings/ModemLinkEnabler;

    #getter for: Lcom/android/settings/ModemLinkEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/ModemLinkEnabler;->access$100(Lcom/android/settings/ModemLinkEnabler;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ModemLinkEnabler$1;->this$0:Lcom/android/settings/ModemLinkEnabler;

    #getter for: Lcom/android/settings/ModemLinkEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/ModemLinkEnabler;->access$100(Lcom/android/settings/ModemLinkEnabler;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 256
    :goto_0
    return-void

    .line 250
    :cond_0
    invoke-static {}, Lcom/android/settings/ModemLinkEnabler;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/settings/ModemLinkEnabler;->setMLEnabled(ZLandroid/content/Context;)V

    .line 251
    invoke-static {}, Lcom/android/settings/ModemLinkEnabler;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/settings/ModemLinkEnabler;->setDataConnection(ZLandroid/content/Context;)V

    .line 252
    invoke-static {}, Lcom/android/settings/ModemLinkEnabler;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/settings/ModemLinkEnabler;->setDiagEnabled(ZLandroid/content/Context;)V

    .line 253
    invoke-static {}, Lcom/android/settings/ModemLinkEnabler;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/settings/ModemLinkEnabler;->GiveISNote(ZLandroid/content/Context;)V

    .line 254
    iget-object v0, p0, Lcom/android/settings/ModemLinkEnabler$1;->this$0:Lcom/android/settings/ModemLinkEnabler;

    #getter for: Lcom/android/settings/ModemLinkEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/ModemLinkEnabler;->access$100(Lcom/android/settings/ModemLinkEnabler;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ModemLinkEnabler$1;->this$0:Lcom/android/settings/ModemLinkEnabler;

    #getter for: Lcom/android/settings/ModemLinkEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/ModemLinkEnabler;->access$100(Lcom/android/settings/ModemLinkEnabler;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
