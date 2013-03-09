.class Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog$4;
.super Ljava/lang/Object;
.source "EditCellBroadcastChannelActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    .line 300
    iput-object p1, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog$4;->this$1:Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 302
    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    .line 303
    iget-object v1, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog$4;->this$1:Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;

    iget-object v1, v1, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->this$0:Lcom/android/phone/EditCellBroadcastChannelActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/phone/EditCellBroadcastChannelActivity;->setResult(ILandroid/content/Intent;)V

    .line 304
    iget-object v0, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog$4;->this$1:Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;

    iget-object v0, v0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->this$0:Lcom/android/phone/EditCellBroadcastChannelActivity;

    invoke-virtual {v0}, Lcom/android/phone/EditCellBroadcastChannelActivity;->finish()V

    .line 305
    const/4 v0, 0x1

    .line 307
    :cond_0
    return v0
.end method
