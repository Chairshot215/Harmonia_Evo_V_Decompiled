.class Lcom/google/android/apps/uploader/clients/SettingsActivity$7;
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
    .line 259
    iput-object p1, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity$7;->this$0:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCanceled()V
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity$7;->this$0:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->finish()V

    .line 273
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 2
    .parameter

    .prologue
    .line 266
    const-string v0, "MediaUploader"

    const-string v1, "Failed to add account"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 267
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity$7;->this$0:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    #calls: Lcom/google/android/apps/uploader/clients/SettingsActivity;->showAccountErrorToast()V
    invoke-static {v0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->access$800(Lcom/google/android/apps/uploader/clients/SettingsActivity;)V

    .line 268
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity$7;->this$0:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->finish()V

    .line 269
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 259
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/clients/SettingsActivity$7;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 262
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity$7;->this$0:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, -0x1

    #calls: Lcom/google/android/apps/uploader/clients/SettingsActivity;->initAccountsSpinner([Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->access$700(Lcom/google/android/apps/uploader/clients/SettingsActivity;[Ljava/lang/String;I)V

    .line 263
    return-void
.end method
