.class Lcom/google/android/gsf/update/SystemUpdateInstallDialog$6;
.super Ljava/lang/Object;
.source "SystemUpdateInstallDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/update/SystemUpdateInstallDialog;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/update/SystemUpdateInstallDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog$6;->this$0:Lcom/google/android/gsf/update/SystemUpdateInstallDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog$6;->this$0:Lcom/google/android/gsf/update/SystemUpdateInstallDialog;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mButtonClicked:Z
    invoke-static {v0, v1}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->access$302(Lcom/google/android/gsf/update/SystemUpdateInstallDialog;Z)Z

    .line 157
    const v0, 0x3112a

    const-string v1, "more-info"

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 158
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog$6;->this$0:Lcom/google/android/gsf/update/SystemUpdateInstallDialog;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog$6;->this$0:Lcom/google/android/gsf/update/SystemUpdateInstallDialog;

    const-class v3, Lcom/google/android/gsf/update/SystemUpdateActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->startActivity(Landroid/content/Intent;)V

    .line 160
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog$6;->this$0:Lcom/google/android/gsf/update/SystemUpdateInstallDialog;

    const/4 v1, 0x0

    #calls: Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->reschedule(Z)V
    invoke-static {v0, v1}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->access$700(Lcom/google/android/gsf/update/SystemUpdateInstallDialog;Z)V

    .line 161
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog$6;->this$0:Lcom/google/android/gsf/update/SystemUpdateInstallDialog;

    invoke-virtual {v0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->finish()V

    .line 162
    return-void
.end method
