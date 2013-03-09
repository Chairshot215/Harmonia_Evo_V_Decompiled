.class Lcom/muvee/video/trimer/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/video/trimer/MainActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/muvee/video/trimer/MainActivity;


# direct methods
.method constructor <init>(Lcom/muvee/video/trimer/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/muvee/video/trimer/MainActivity$3;->this$0:Lcom/muvee/video/trimer/MainActivity;

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity$3;->this$0:Lcom/muvee/video/trimer/MainActivity;

    const/4 v1, 0x0

    #setter for: Lcom/muvee/video/trimer/MainActivity;->mProgressDialogPreLoading:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0, v1}, Lcom/muvee/video/trimer/MainActivity;->access$26(Lcom/muvee/video/trimer/MainActivity;Lcom/htc/app/HtcProgressDialog;)V

    .line 196
    return-void
.end method
