.class Lcom/android/settings/NetSharingEnabler$6;
.super Ljava/lang/Object;
.source "NetSharingEnabler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/NetSharingEnabler;->toggleMLState(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/NetSharingEnabler;

.field final synthetic val$isOn:Z


# direct methods
.method constructor <init>(Lcom/android/settings/NetSharingEnabler;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1108
    iput-object p1, p0, Lcom/android/settings/NetSharingEnabler$6;->this$0:Lcom/android/settings/NetSharingEnabler;

    iput-boolean p2, p0, Lcom/android/settings/NetSharingEnabler$6;->val$isOn:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1111
    iget-boolean v0, p0, Lcom/android/settings/NetSharingEnabler$6;->val$isOn:Z

    if-eqz v0, :cond_0

    .line 1114
    invoke-static {}, Lcom/android/settings/NetSharingEnabler;->access$100()Landroid/content/Context;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/settings/ModemLinkEnabler;->setDataConnection(ZLandroid/content/Context;)V

    .line 1115
    invoke-static {}, Lcom/android/settings/NetSharingEnabler;->access$100()Landroid/content/Context;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/settings/ModemLinkEnabler;->setDiagEnabled(ZLandroid/content/Context;)V

    .line 1116
    invoke-static {}, Lcom/android/settings/NetSharingEnabler;->access$100()Landroid/content/Context;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/settings/ModemLinkEnabler;->setMLEnabled(ZLandroid/content/Context;)V

    .line 1117
    invoke-static {}, Lcom/android/settings/NetSharingEnabler;->access$100()Landroid/content/Context;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/settings/ModemLinkEnabler;->GiveISNote(ZLandroid/content/Context;)V

    .line 1118
    iget-object v0, p0, Lcom/android/settings/NetSharingEnabler$6;->this$0:Lcom/android/settings/NetSharingEnabler;

    #getter for: Lcom/android/settings/NetSharingEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/NetSharingEnabler;->access$200(Lcom/android/settings/NetSharingEnabler;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/NetSharingEnabler$6;->this$0:Lcom/android/settings/NetSharingEnabler;

    #getter for: Lcom/android/settings/NetSharingEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/NetSharingEnabler;->access$200(Lcom/android/settings/NetSharingEnabler;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1129
    :goto_0
    return-void

    .line 1123
    :cond_0
    invoke-static {}, Lcom/android/settings/NetSharingEnabler;->access$100()Landroid/content/Context;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/settings/ModemLinkEnabler;->setMLEnabled(ZLandroid/content/Context;)V

    .line 1124
    invoke-static {}, Lcom/android/settings/NetSharingEnabler;->access$100()Landroid/content/Context;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/settings/ModemLinkEnabler;->setDataConnection(ZLandroid/content/Context;)V

    .line 1125
    invoke-static {}, Lcom/android/settings/NetSharingEnabler;->access$100()Landroid/content/Context;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/settings/ModemLinkEnabler;->setDiagEnabled(ZLandroid/content/Context;)V

    .line 1126
    invoke-static {}, Lcom/android/settings/NetSharingEnabler;->access$100()Landroid/content/Context;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/settings/ModemLinkEnabler;->GiveISNote(ZLandroid/content/Context;)V

    .line 1127
    iget-object v0, p0, Lcom/android/settings/NetSharingEnabler$6;->this$0:Lcom/android/settings/NetSharingEnabler;

    #getter for: Lcom/android/settings/NetSharingEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/NetSharingEnabler;->access$200(Lcom/android/settings/NetSharingEnabler;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/NetSharingEnabler$6;->this$0:Lcom/android/settings/NetSharingEnabler;

    #getter for: Lcom/android/settings/NetSharingEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/NetSharingEnabler;->access$200(Lcom/android/settings/NetSharingEnabler;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
