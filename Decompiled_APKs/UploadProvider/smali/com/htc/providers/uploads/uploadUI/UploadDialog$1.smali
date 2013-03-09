.class Lcom/htc/providers/uploads/uploadUI/UploadDialog$1;
.super Ljava/lang/Object;
.source "UploadDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/providers/uploads/uploadUI/UploadDialog;->getLoginBuilder(Ljava/lang/String;)Lcom/htc/widget/HtcAlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/providers/uploads/uploadUI/UploadDialog;


# direct methods
.method constructor <init>(Lcom/htc/providers/uploads/uploadUI/UploadDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/htc/providers/uploads/uploadUI/UploadDialog$1;->this$0:Lcom/htc/providers/uploads/uploadUI/UploadDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/providers/uploads/uploadUI/UploadDialog$1;->this$0:Lcom/htc/providers/uploads/uploadUI/UploadDialog;

    iget-object v0, v0, Lcom/htc/providers/uploads/uploadUI/UploadDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 83
    return-void
.end method
