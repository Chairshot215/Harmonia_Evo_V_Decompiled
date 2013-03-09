.class Lcom/google/android/gsf/update/SystemUpdateInstallDialog$4;
.super Ljava/lang/Object;
.source "SystemUpdateInstallDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 128
    iput-object p1, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog$4;->this$0:Lcom/google/android/gsf/update/SystemUpdateInstallDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog$4;->this$0:Lcom/google/android/gsf/update/SystemUpdateInstallDialog;

    const/4 v1, 0x0

    #calls: Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->refreshStatus(Z)V
    invoke-static {v0, v1}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->access$600(Lcom/google/android/gsf/update/SystemUpdateInstallDialog;Z)V

    .line 131
    return-void
.end method
