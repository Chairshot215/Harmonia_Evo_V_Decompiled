.class Lcom/htc/store/activity/DispatchActivity$3;
.super Ljava/lang/Object;
.source "DispatchActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/store/activity/DispatchActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/store/activity/DispatchActivity;


# direct methods
.method constructor <init>(Lcom/htc/store/activity/DispatchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/htc/store/activity/DispatchActivity$3;->this$0:Lcom/htc/store/activity/DispatchActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 154
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 155
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 156
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/htc/store/activity/DispatchActivity$3;->this$0:Lcom/htc/store/activity/DispatchActivity;

    invoke-virtual {v1}, Lcom/htc/store/activity/DispatchActivity;->getContext()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/htc/store/activity/EntryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 157
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "relaunch"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 158
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 159
    iget-object v1, p0, Lcom/htc/store/activity/DispatchActivity$3;->this$0:Lcom/htc/store/activity/DispatchActivity;

    invoke-virtual {v1}, Lcom/htc/store/activity/DispatchActivity;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 160
    return-void
.end method
