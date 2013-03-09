.class Lcom/android/mms/ui/BackupActivity$8;
.super Ljava/lang/Object;
.source "BackupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/BackupActivity;->displayConfirmDialog()V
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
    .line 500
    iput-object p1, p0, Lcom/android/mms/ui/BackupActivity$8;->this$0:Lcom/android/mms/ui/BackupActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/mms/ui/BackupActivity$8;->this$0:Lcom/android/mms/ui/BackupActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/BackupActivity;->displayProgressDialog()V

    .line 503
    return-void
.end method
