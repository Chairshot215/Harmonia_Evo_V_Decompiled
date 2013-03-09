.class Lcom/muvee/video/trimer/MainActivity$5;
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

.field private final synthetic val$args:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/muvee/video/trimer/MainActivity;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/muvee/video/trimer/MainActivity$5;->this$0:Lcom/muvee/video/trimer/MainActivity;

    iput-object p2, p0, Lcom/muvee/video/trimer/MainActivity$5;->val$args:Landroid/os/Bundle;

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v5, 0x0

    .line 220
    const-string v2, "com.muvee.video.trimer.MainActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "discard last instance and start with new file"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/muvee/video/trimer/MainActivity$5;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #getter for: Lcom/muvee/video/trimer/MainActivity;->mNotification:Landroid/app/Notification;
    invoke-static {v4}, Lcom/muvee/video/trimer/MainActivity;->access$21(Lcom/muvee/video/trimer/MainActivity;)Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v2, p0, Lcom/muvee/video/trimer/MainActivity$5;->this$0:Lcom/muvee/video/trimer/MainActivity;

    iget-object v3, p0, Lcom/muvee/video/trimer/MainActivity$5;->val$args:Landroid/os/Bundle;

    const-string v4, "new.file"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/muvee/video/trimer/MainActivity;->mSData:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/muvee/video/trimer/MainActivity;->access$31(Lcom/muvee/video/trimer/MainActivity;Ljava/lang/String;)V

    .line 223
    iget-object v2, p0, Lcom/muvee/video/trimer/MainActivity$5;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #calls: Lcom/muvee/video/trimer/MainActivity;->resetTrim()V
    invoke-static {v2}, Lcom/muvee/video/trimer/MainActivity;->access$32(Lcom/muvee/video/trimer/MainActivity;)V

    .line 224
    iget-object v2, p0, Lcom/muvee/video/trimer/MainActivity$5;->this$0:Lcom/muvee/video/trimer/MainActivity;

    iget-object v3, p0, Lcom/muvee/video/trimer/MainActivity$5;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #calls: Lcom/muvee/video/trimer/MainActivity;->parseFile()Ljava/lang/String;
    invoke-static {v3}, Lcom/muvee/video/trimer/MainActivity;->access$27(Lcom/muvee/video/trimer/MainActivity;)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/muvee/video/trimer/MainActivity;->mVideoFile:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/muvee/video/trimer/MainActivity;->access$28(Lcom/muvee/video/trimer/MainActivity;Ljava/lang/String;)V

    .line 225
    iget-object v2, p0, Lcom/muvee/video/trimer/MainActivity$5;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #getter for: Lcom/muvee/video/trimer/MainActivity;->mVideoFile:Ljava/lang/String;
    invoke-static {v2}, Lcom/muvee/video/trimer/MainActivity;->access$10(Lcom/muvee/video/trimer/MainActivity;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 226
    iget-object v2, p0, Lcom/muvee/video/trimer/MainActivity$5;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #calls: Lcom/muvee/video/trimer/MainActivity;->onFileNotFound()V
    invoke-static {v2}, Lcom/muvee/video/trimer/MainActivity;->access$29(Lcom/muvee/video/trimer/MainActivity;)V

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    sget-object v2, Lcom/muvee/video/trimer/MainActivity;->THUMB_INTERFACE:Lcom/muvee/video/trimer/ThumbInterface;

    invoke-virtual {v2}, Lcom/muvee/video/trimer/ThumbInterface;->TrimClose()I

    .line 232
    iget-object v2, p0, Lcom/muvee/video/trimer/MainActivity$5;->this$0:Lcom/muvee/video/trimer/MainActivity;

    const-string v3, "com.muvee.video.trimer.preference"

    invoke-virtual {v2, v3, v5}, Lcom/muvee/video/trimer/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 233
    .local v1, mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 234
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "com.muvee.video.trimer.TRIMING"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 235
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 237
    iget-object v2, p0, Lcom/muvee/video/trimer/MainActivity$5;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #calls: Lcom/muvee/video/trimer/MainActivity;->onFileChosen()Z
    invoke-static {v2}, Lcom/muvee/video/trimer/MainActivity;->access$30(Lcom/muvee/video/trimer/MainActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 238
    iget-object v2, p0, Lcom/muvee/video/trimer/MainActivity$5;->this$0:Lcom/muvee/video/trimer/MainActivity;

    #calls: Lcom/muvee/video/trimer/MainActivity;->preLoadBitmap()V
    invoke-static {v2}, Lcom/muvee/video/trimer/MainActivity;->access$33(Lcom/muvee/video/trimer/MainActivity;)V

    goto :goto_0
.end method
