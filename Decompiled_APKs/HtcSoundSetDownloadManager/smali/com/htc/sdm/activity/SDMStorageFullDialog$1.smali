.class Lcom/htc/sdm/activity/SDMStorageFullDialog$1;
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
    .line 52
    iput-object p1, p0, Lcom/htc/sdm/activity/SDMStorageFullDialog$1;->this$0:Lcom/htc/sdm/activity/SDMStorageFullDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/sdm/activity/SDMStorageFullDialog$1;->this$0:Lcom/htc/sdm/activity/SDMStorageFullDialog;

    invoke-virtual {v0}, Lcom/htc/sdm/activity/SDMStorageFullDialog;->finish()V

    .line 55
    return-void
.end method
