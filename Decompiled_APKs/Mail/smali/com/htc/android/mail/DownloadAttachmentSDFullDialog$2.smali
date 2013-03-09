.class Lcom/htc/android/mail/DownloadAttachmentSDFullDialog$2;
.super Ljava/lang/Object;
.source "DownloadAttachmentSDFullDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/DownloadAttachmentSDFullDialog;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/DownloadAttachmentSDFullDialog;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/DownloadAttachmentSDFullDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/htc/android/mail/DownloadAttachmentSDFullDialog$2;->this$0:Lcom/htc/android/mail/DownloadAttachmentSDFullDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 67
    invoke-static {}, Lcom/htc/android/mail/DownloadAttachmentSDFullDialog;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DownloadAttachmentSDFullDialog"

    const-string v1, "press negative button"

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/DownloadAttachmentSDFullDialog$2;->this$0:Lcom/htc/android/mail/DownloadAttachmentSDFullDialog;

    invoke-virtual {v0}, Lcom/htc/android/mail/DownloadAttachmentSDFullDialog;->finish()V

    .line 69
    return-void
.end method
