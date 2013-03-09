.class Lcom/android/mms/ui/CmasDialogActivity$1;
.super Ljava/lang/Object;
.source "CmasDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/CmasDialogActivity;->showCmasDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/CmasDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/CmasDialogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/mms/ui/CmasDialogActivity$1;->this$0:Lcom/android/mms/ui/CmasDialogActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 224
    const-string v0, "CmasDialogActivity"

    const-string v1, "press cancel so call doDismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v0, p0, Lcom/android/mms/ui/CmasDialogActivity$1;->this$0:Lcom/android/mms/ui/CmasDialogActivity;

    const/4 v1, 0x0

    #calls: Lcom/android/mms/ui/CmasDialogActivity;->doDismiss(Z)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/CmasDialogActivity;->access$100(Lcom/android/mms/ui/CmasDialogActivity;Z)V

    .line 226
    return-void
.end method
