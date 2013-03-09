.class Lcom/htc/android/mail/dialog/StorageFullDialog$2;
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
    .line 39
    iput-object p1, p0, Lcom/htc/android/mail/dialog/StorageFullDialog$2;->this$0:Lcom/htc/android/mail/dialog/StorageFullDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 42
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 43
    .local v1, i:Landroid/content/Intent;
    iget-object v2, p0, Lcom/htc/android/mail/dialog/StorageFullDialog$2;->this$0:Lcom/htc/android/mail/dialog/StorageFullDialog;

    invoke-virtual {v2, v1}, Lcom/htc/android/mail/dialog/StorageFullDialog;->startActivity(Landroid/content/Intent;)V

    .line 44
    iget-object v2, p0, Lcom/htc/android/mail/dialog/StorageFullDialog$2;->this$0:Lcom/htc/android/mail/dialog/StorageFullDialog;

    invoke-virtual {v2}, Lcom/htc/android/mail/dialog/StorageFullDialog;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v1           #i:Landroid/content/Intent;
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
