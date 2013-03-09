.class Lcom/google/android/apps/uploader/clients/SettingsActivity$8;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/uploader/clients/SettingsActivity;->upload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/uploader/clients/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/uploader/clients/SettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 334
    iput-object p1, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity$8;->this$0:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 336
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity$8;->this$0:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    #getter for: Lcom/google/android/apps/uploader/clients/SettingsActivity;->account:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->access$1000(Lcom/google/android/apps/uploader/clients/SettingsActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity$8;->this$0:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    #getter for: Lcom/google/android/apps/uploader/clients/SettingsActivity;->authToken:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->access$900(Lcom/google/android/apps/uploader/clients/SettingsActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 337
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity$8;->this$0:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 338
    const/4 v1, 0x0

    .line 339
    iget-object v2, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity$8;->this$0:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    #getter for: Lcom/google/android/apps/uploader/clients/SettingsActivity;->fileCount:I
    invoke-static {v2}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->access$400(Lcom/google/android/apps/uploader/clients/SettingsActivity;)I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    .line 340
    iget-object v2, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity$8;->this$0:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    #calls: Lcom/google/android/apps/uploader/clients/SettingsActivity;->getMultipleUploadsIntents(Landroid/content/Intent;)Ljava/util/ArrayList;
    invoke-static {v2, v0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->access$1100(Lcom/google/android/apps/uploader/clients/SettingsActivity;Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v0

    .line 341
    if-eqz v0, :cond_6

    .line 342
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 343
    iget-object v2, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity$8;->this$0:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    invoke-virtual {v2, v0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity$8;->this$0:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->getResourceId(I)I

    move-result v0

    .line 354
    :goto_1
    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity$8;->this$0:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    #getter for: Lcom/google/android/apps/uploader/clients/SettingsActivity;->needsWifi:Z
    invoke-static {v1}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->access$1300(Lcom/google/android/apps/uploader/clients/SettingsActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity$8;->this$0:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    #getter for: Lcom/google/android/apps/uploader/clients/SettingsActivity;->application:Lcom/google/android/apps/uploader/UploaderApplication;
    invoke-static {v1}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->access$1400(Lcom/google/android/apps/uploader/clients/SettingsActivity;)Lcom/google/android/apps/uploader/UploaderApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/UploaderApplication;->wifiConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 355
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity$8;->this$0:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    #getter for: Lcom/google/android/apps/uploader/clients/SettingsActivity;->application:Lcom/google/android/apps/uploader/UploaderApplication;
    invoke-static {v0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->access$1400(Lcom/google/android/apps/uploader/clients/SettingsActivity;)Lcom/google/android/apps/uploader/UploaderApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/UploaderApplication;->isUsingDefaultNonWifiLimit()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f060039

    .line 359
    :cond_1
    :goto_2
    if-eqz v0, :cond_2

    .line 360
    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity$8;->this$0:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    #calls: Lcom/google/android/apps/uploader/clients/SettingsActivity;->showToastOnUiThread(I)V
    invoke-static {v1, v0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->access$1500(Lcom/google/android/apps/uploader/clients/SettingsActivity;I)V

    .line 362
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity$8;->this$0:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->onUpload()V

    .line 363
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity$8;->this$0:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->setResult(I)V

    .line 370
    :goto_3
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity$8;->this$0:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    #getter for: Lcom/google/android/apps/uploader/clients/SettingsActivity;->uploadingSpinner:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->access$1600(Lcom/google/android/apps/uploader/clients/SettingsActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 371
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity$8;->this$0:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->finish()V

    .line 372
    return-void

    .line 348
    :cond_3
    iget-object v2, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity$8;->this$0:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    #calls: Lcom/google/android/apps/uploader/clients/SettingsActivity;->getSingleUploadIntent(Landroid/content/Intent;)Landroid/content/Intent;
    invoke-static {v2, v0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->access$1200(Lcom/google/android/apps/uploader/clients/SettingsActivity;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 349
    if-eqz v0, :cond_6

    .line 350
    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity$8;->this$0:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 351
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity$8;->this$0:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->getResourceId(I)I

    move-result v0

    goto :goto_1

    .line 355
    :cond_4
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity$8;->this$0:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->getResourceId(I)I

    move-result v0

    goto :goto_2

    .line 365
    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity$8;->this$0:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    #calls: Lcom/google/android/apps/uploader/clients/SettingsActivity;->showAccountErrorToast()V
    invoke-static {v0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->access$800(Lcom/google/android/apps/uploader/clients/SettingsActivity;)V

    .line 366
    const-string v0, "MediaUploader"

    const-string v1, "Upload clicked but no account information, bailing out."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    move v0, v1

    goto :goto_1
.end method
