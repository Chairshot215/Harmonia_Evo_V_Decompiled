.class Lcom/android/mms/ui/BackupActivity$4;
.super Ljava/lang/Object;
.source "BackupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/BackupActivity;->displayResultDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/BackupActivity;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/android/mms/ui/BackupActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/mms/ui/BackupActivity$4;->this$0:Lcom/android/mms/ui/BackupActivity;

    iput-boolean p2, p0, Lcom/android/mms/ui/BackupActivity$4;->val$success:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/android/mms/ui/BackupActivity$4;->val$success:Z

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/mms/ui/BackupActivity$4;->this$0:Lcom/android/mms/ui/BackupActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/BackupActivity;->finish()V

    .line 188
    :cond_0
    return-void
.end method
