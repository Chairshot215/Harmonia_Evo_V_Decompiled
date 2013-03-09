.class Lcom/google/android/finsky/activities/SimpleAlertDialog$1;
.super Ljava/lang/Object;
.source "SimpleAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/SimpleAlertDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/SimpleAlertDialog;

.field final synthetic val$extraArguments:Landroid/os/Bundle;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/SimpleAlertDialog;ILandroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/google/android/finsky/activities/SimpleAlertDialog$1;->this$0:Lcom/google/android/finsky/activities/SimpleAlertDialog;

    iput p2, p0, Lcom/google/android/finsky/activities/SimpleAlertDialog$1;->val$requestCode:I

    iput-object p3, p0, Lcom/google/android/finsky/activities/SimpleAlertDialog$1;->val$extraArguments:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 164
    iget-object v1, p0, Lcom/google/android/finsky/activities/SimpleAlertDialog$1;->this$0:Lcom/google/android/finsky/activities/SimpleAlertDialog;

    invoke-virtual {v1}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->dismiss()V

    .line 165
    iget-object v1, p0, Lcom/google/android/finsky/activities/SimpleAlertDialog$1;->this$0:Lcom/google/android/finsky/activities/SimpleAlertDialog;

    #calls: Lcom/google/android/finsky/activities/SimpleAlertDialog;->getListener()Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;
    invoke-static {v1}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->access$000(Lcom/google/android/finsky/activities/SimpleAlertDialog;)Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;

    move-result-object v0

    .line 166
    .local v0, l:Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;
    if-eqz v0, :cond_0

    .line 167
    iget v1, p0, Lcom/google/android/finsky/activities/SimpleAlertDialog$1;->val$requestCode:I

    iget-object v2, p0, Lcom/google/android/finsky/activities/SimpleAlertDialog$1;->val$extraArguments:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;->onPositiveClick(ILandroid/os/Bundle;)V

    .line 169
    :cond_0
    return-void
.end method
