.class Lcom/htc/sdm/activity/SDMStorageFullDialog$2;
.super Ljava/lang/Object;
.source "SDMStorageFullDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sdm/activity/SDMStorageFullDialog;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sdm/activity/SDMStorageFullDialog;


# direct methods
.method constructor <init>(Lcom/htc/sdm/activity/SDMStorageFullDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/htc/sdm/activity/SDMStorageFullDialog$2;->this$0:Lcom/htc/sdm/activity/SDMStorageFullDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 44
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 45
    .local v1, i:Landroid/content/Intent;
    iget-object v2, p0, Lcom/htc/sdm/activity/SDMStorageFullDialog$2;->this$0:Lcom/htc/sdm/activity/SDMStorageFullDialog;

    invoke-virtual {v2, v1}, Lcom/htc/sdm/activity/SDMStorageFullDialog;->startActivity(Landroid/content/Intent;)V

    .line 46
    iget-object v2, p0, Lcom/htc/sdm/activity/SDMStorageFullDialog$2;->this$0:Lcom/htc/sdm/activity/SDMStorageFullDialog;

    invoke-virtual {v2}, Lcom/htc/sdm/activity/SDMStorageFullDialog;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .end local v1           #i:Landroid/content/Intent;
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
