.class Lcom/htc/launcher/InstallShortcutReceiver$InstallShortcutHandler;
.super Landroid/os/Handler;
.source "InstallShortcutReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/InstallShortcutReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstallShortcutHandler"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .parameter "looper"

    .prologue
    .line 175
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 176
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 180
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 181
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x64

    if-ne v3, v4, :cond_0

    .line 182
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/htc/launcher/InstallShortcutReceiver$InstallShortcutInfo;

    move-object v2, v3

    check-cast v2, Lcom/htc/launcher/InstallShortcutReceiver$InstallShortcutInfo;

    .line 184
    .local v2, info:Lcom/htc/launcher/InstallShortcutReceiver$InstallShortcutInfo;
    #getter for: Lcom/htc/launcher/InstallShortcutReceiver$InstallShortcutInfo;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/launcher/InstallShortcutReceiver$InstallShortcutInfo;->access$000(Lcom/htc/launcher/InstallShortcutReceiver$InstallShortcutInfo;)Landroid/content/Context;

    move-result-object v0

    .line 185
    .local v0, context:Landroid/content/Context;
    #getter for: Lcom/htc/launcher/InstallShortcutReceiver$InstallShortcutInfo;->mIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/htc/launcher/InstallShortcutReceiver$InstallShortcutInfo;->access$100(Lcom/htc/launcher/InstallShortcutReceiver$InstallShortcutInfo;)Landroid/content/Intent;

    move-result-object v1

    .line 187
    .local v1, data:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 188
    #calls: Lcom/htc/launcher/InstallShortcutReceiver;->installShortcut(Landroid/content/Context;Landroid/content/Intent;)Z
    invoke-static {v0, v1}, Lcom/htc/launcher/InstallShortcutReceiver;->access$200(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 190
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #data:Landroid/content/Intent;
    .end local v2           #info:Lcom/htc/launcher/InstallShortcutReceiver$InstallShortcutInfo;
    :cond_0
    return-void
.end method
