.class Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog$1;
.super Ljava/lang/Object;
.source "EditCellBroadcastChannelActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->handleSave()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 262
    iput-object p1, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog$1;->this$1:Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog$1;->this$1:Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 265
    iget-object v0, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog$1;->this$1:Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;

    iget-object v0, v0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->this$0:Lcom/android/phone/EditCellBroadcastChannelActivity;

    new-instance v1, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;

    iget-object v2, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog$1;->this$1:Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;

    iget-object v2, v2, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->this$0:Lcom/android/phone/EditCellBroadcastChannelActivity;

    iget-object v3, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog$1;->this$1:Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;

    iget-object v3, v3, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->this$0:Lcom/android/phone/EditCellBroadcastChannelActivity;

    iget-object v4, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog$1;->this$1:Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;

    #getter for: Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->mIntent:Landroid/content/Intent;
    invoke-static {v4}, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->access$100(Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;)Landroid/content/Intent;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;-><init>(Lcom/android/phone/EditCellBroadcastChannelActivity;Landroid/content/Context;Landroid/content/Intent;)V

    #setter for: Lcom/android/phone/EditCellBroadcastChannelActivity;->mDialog:Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;
    invoke-static {v0, v1}, Lcom/android/phone/EditCellBroadcastChannelActivity;->access$002(Lcom/android/phone/EditCellBroadcastChannelActivity;Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;)Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;

    .line 266
    iget-object v0, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog$1;->this$1:Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;

    iget-object v0, v0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->this$0:Lcom/android/phone/EditCellBroadcastChannelActivity;

    #getter for: Lcom/android/phone/EditCellBroadcastChannelActivity;->mDialog:Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;
    invoke-static {v0}, Lcom/android/phone/EditCellBroadcastChannelActivity;->access$000(Lcom/android/phone/EditCellBroadcastChannelActivity;)Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog$1;->this$1:Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;

    iget-object v1, v1, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->this$0:Lcom/android/phone/EditCellBroadcastChannelActivity;

    invoke-virtual {v0, v1}, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 267
    iget-object v0, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog$1;->this$1:Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;

    iget-object v0, v0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->this$0:Lcom/android/phone/EditCellBroadcastChannelActivity;

    #getter for: Lcom/android/phone/EditCellBroadcastChannelActivity;->mDialog:Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;
    invoke-static {v0}, Lcom/android/phone/EditCellBroadcastChannelActivity;->access$000(Lcom/android/phone/EditCellBroadcastChannelActivity;)Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->show()V

    .line 268
    return-void
.end method
