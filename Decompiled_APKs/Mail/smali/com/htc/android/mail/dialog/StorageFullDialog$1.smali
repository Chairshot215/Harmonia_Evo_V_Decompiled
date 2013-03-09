.class Lcom/htc/android/mail/dialog/StorageFullDialog$1;
.super Ljava/lang/Object;
.source "StorageFullDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/dialog/StorageFullDialog;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/dialog/StorageFullDialog;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/dialog/StorageFullDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/htc/android/mail/dialog/StorageFullDialog$1;->this$0:Lcom/htc/android/mail/dialog/StorageFullDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/android/mail/dialog/StorageFullDialog$1;->this$0:Lcom/htc/android/mail/dialog/StorageFullDialog;

    invoke-virtual {v0}, Lcom/htc/android/mail/dialog/StorageFullDialog;->finish()V

    .line 53
    return-void
.end method
