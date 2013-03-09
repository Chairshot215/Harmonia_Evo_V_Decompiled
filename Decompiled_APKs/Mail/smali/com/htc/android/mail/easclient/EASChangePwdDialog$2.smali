.class Lcom/htc/android/mail/easclient/EASChangePwdDialog$2;
.super Ljava/lang/Object;
.source "EASChangePwdDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/easclient/EASChangePwdDialog;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/easclient/EASChangePwdDialog;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/easclient/EASChangePwdDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/htc/android/mail/easclient/EASChangePwdDialog$2;->this$0:Lcom/htc/android/mail/easclient/EASChangePwdDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 56
    invoke-static {}, Lcom/htc/android/mail/easclient/EASChangePwdDialog;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "EASChangePwdDialog"

    const-string v1, "press negative button"

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASChangePwdDialog$2;->this$0:Lcom/htc/android/mail/easclient/EASChangePwdDialog;

    invoke-virtual {v0}, Lcom/htc/android/mail/easclient/EASChangePwdDialog;->finish()V

    .line 58
    return-void
.end method
