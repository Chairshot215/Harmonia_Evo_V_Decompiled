.class Lcom/muvee/video/trimer/MainActivity$7;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    iput-object p1, p0, Lcom/muvee/video/trimer/MainActivity$7;->this$0:Lcom/muvee/video/trimer/MainActivity;

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 269
    const-string v0, "com.muvee.video.trimer.MainActivity"

    const-string v1, "Cancel YES/NO resume trimming"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity$7;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #getter for: Lcom/muvee/video/trimer/MainActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/muvee/video/trimer/MainActivity;->access$19(Lcom/muvee/video/trimer/MainActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity$7;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #getter for: Lcom/muvee/video/trimer/MainActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/muvee/video/trimer/MainActivity;->access$19(Lcom/muvee/video/trimer/MainActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity$7;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #getter for: Lcom/muvee/video/trimer/MainActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/muvee/video/trimer/MainActivity;->access$19(Lcom/muvee/video/trimer/MainActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 272
    :cond_0
    return-void
.end method
