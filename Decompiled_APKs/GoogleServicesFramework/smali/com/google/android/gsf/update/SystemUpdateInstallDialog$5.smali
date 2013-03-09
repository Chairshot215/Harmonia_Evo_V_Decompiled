.class Lcom/google/android/gsf/update/SystemUpdateInstallDialog$5;
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
    .line 142
    iput-object p1, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog$5;->this$0:Lcom/google/android/gsf/update/SystemUpdateInstallDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 144
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog$5;->this$0:Lcom/google/android/gsf/update/SystemUpdateInstallDialog;

    #setter for: Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->mButtonClicked:Z
    invoke-static {v0, v2}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->access$302(Lcom/google/android/gsf/update/SystemUpdateInstallDialog;Z)Z

    .line 145
    const-string v0, "SystemUpdateInstallDialog"

    const-string v1, "OTA update dismissed by user"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const v0, 0x3112a

    const-string v1, "install-later"

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 147
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog$5;->this$0:Lcom/google/android/gsf/update/SystemUpdateInstallDialog;

    #calls: Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->reschedule(Z)V
    invoke-static {v0, v2}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->access$700(Lcom/google/android/gsf/update/SystemUpdateInstallDialog;Z)V

    .line 148
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog$5;->this$0:Lcom/google/android/gsf/update/SystemUpdateInstallDialog;

    invoke-virtual {v0}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->finish()V

    .line 149
    return-void
.end method
