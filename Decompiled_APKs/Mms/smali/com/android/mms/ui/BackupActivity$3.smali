.class Lcom/android/mms/ui/BackupActivity$3;
.super Ljava/lang/Object;
.source "BackupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/BackupActivity;->displayProgressDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/BackupActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/BackupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/mms/ui/BackupActivity$3;->this$0:Lcom/android/mms/ui/BackupActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 153
    const/16 v0, 0x68

    .line 154
    .local v0, what:I
    iget-object v1, p0, Lcom/android/mms/ui/BackupActivity$3;->this$0:Lcom/android/mms/ui/BackupActivity;

    iget-object v1, v1, Lcom/android/mms/ui/BackupActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/mms/ui/BackupActivity$3;->this$0:Lcom/android/mms/ui/BackupActivity;

    iget-object v2, v2, Lcom/android/mms/ui/BackupActivity;->mHandler:Landroid/os/Handler;

    invoke-static {v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 157
    return-void
.end method
