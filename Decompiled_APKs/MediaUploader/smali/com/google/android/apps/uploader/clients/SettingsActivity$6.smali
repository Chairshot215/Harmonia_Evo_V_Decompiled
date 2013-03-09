.class Lcom/google/android/apps/uploader/clients/SettingsActivity$6;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Lcom/google/android/apps/uploader/Authorizer$AuthorizationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/uploader/clients/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/uploader/Authorizer$AuthorizationListener",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/uploader/clients/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/uploader/clients/SettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity$6;->this$0:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCanceled()V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity$6;->this$0:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->finish()V

    .line 255
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 2
    .parameter

    .prologue
    .line 248
    const-string v0, "MediaUploader"

    const-string v1, "Failed to get authToken"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 249
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity$6;->this$0:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    #calls: Lcom/google/android/apps/uploader/clients/SettingsActivity;->showAccountErrorToast()V
    invoke-static {v0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->access$800(Lcom/google/android/apps/uploader/clients/SettingsActivity;)V

    .line 250
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity$6;->this$0:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->finish()V

    .line 251
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 237
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/clients/SettingsActivity$6;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity$6;->this$0:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    #setter for: Lcom/google/android/apps/uploader/clients/SettingsActivity;->authToken:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->access$902(Lcom/google/android/apps/uploader/clients/SettingsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 241
    const-string v0, "MediaUploader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Account changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity$6;->this$0:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    #getter for: Lcom/google/android/apps/uploader/clients/SettingsActivity;->account:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->access$1000(Lcom/google/android/apps/uploader/clients/SettingsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity$6;->this$0:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->onAccountChanged()V

    .line 243
    return-void
.end method
