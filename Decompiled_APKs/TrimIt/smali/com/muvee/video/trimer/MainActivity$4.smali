.class Lcom/muvee/video/trimer/MainActivity$4;
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
    iput-object p1, p0, Lcom/muvee/video/trimer/MainActivity$4;->this$0:Lcom/muvee/video/trimer/MainActivity;

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 206
    const-string v0, "com.muvee.video.trimer.MainActivity"

    const-string v1, "continue last instance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity$4;->this$0:Lcom/muvee/video/trimer/MainActivity;

    iget-object v1, p0, Lcom/muvee/video/trimer/MainActivity$4;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #calls: Lcom/muvee/video/trimer/MainActivity;->parseFile()Ljava/lang/String;
    invoke-static {v1}, Lcom/muvee/video/trimer/MainActivity;->access$27(Lcom/muvee/video/trimer/MainActivity;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/muvee/video/trimer/MainActivity;->mVideoFile:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/muvee/video/trimer/MainActivity;->access$28(Lcom/muvee/video/trimer/MainActivity;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity$4;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #getter for: Lcom/muvee/video/trimer/MainActivity;->mVideoFile:Ljava/lang/String;
    invoke-static {v0}, Lcom/muvee/video/trimer/MainActivity;->access$10(Lcom/muvee/video/trimer/MainActivity;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity$4;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #calls: Lcom/muvee/video/trimer/MainActivity;->onFileNotFound()V
    invoke-static {v0}, Lcom/muvee/video/trimer/MainActivity;->access$29(Lcom/muvee/video/trimer/MainActivity;)V

    .line 216
    :goto_0
    return-void

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity$4;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #calls: Lcom/muvee/video/trimer/MainActivity;->doSave()V
    invoke-static {v0}, Lcom/muvee/video/trimer/MainActivity;->access$3(Lcom/muvee/video/trimer/MainActivity;)V

    .line 215
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity$4;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #calls: Lcom/muvee/video/trimer/MainActivity;->onFileChosen()Z
    invoke-static {v0}, Lcom/muvee/video/trimer/MainActivity;->access$30(Lcom/muvee/video/trimer/MainActivity;)Z

    goto :goto_0
.end method
