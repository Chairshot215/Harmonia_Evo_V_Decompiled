.class Lcom/google/android/apps/uploader/clients/SettingsActivity$5;
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
        "<[",
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
    .line 199
    iput-object p1, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity$5;->this$0:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCanceled()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity$5;->this$0:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->finish()V

    .line 233
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 2
    .parameter

    .prologue
    .line 226
    const-string v0, "MediaUploader"

    const-string v1, "Failed to get accounts"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 227
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity$5;->this$0:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    #calls: Lcom/google/android/apps/uploader/clients/SettingsActivity;->showAccountErrorToast()V
    invoke-static {v0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->access$800(Lcom/google/android/apps/uploader/clients/SettingsActivity;)V

    .line 228
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity$5;->this$0:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->finish()V

    .line 229
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/clients/SettingsActivity$5;->onSuccess([Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess([Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 202
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity$5;->this$0:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    #getter for: Lcom/google/android/apps/uploader/clients/SettingsActivity;->authProvider:Lcom/google/android/apps/uploader/Authorizer;
    invoke-static {v0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->access$600(Lcom/google/android/apps/uploader/clients/SettingsActivity;)Lcom/google/android/apps/uploader/Authorizer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity$5;->this$0:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    iget-object v2, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity$5;->this$0:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    #getter for: Lcom/google/android/apps/uploader/clients/SettingsActivity;->addAccountListener:Lcom/google/android/apps/uploader/Authorizer$AuthorizationListener;
    invoke-static {v2}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->access$500(Lcom/google/android/apps/uploader/clients/SettingsActivity;)Lcom/google/android/apps/uploader/Authorizer$AuthorizationListener;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/uploader/Authorizer;->addAccount(Landroid/app/Activity;Lcom/google/android/apps/uploader/Authorizer$AuthorizationListener;)V

    .line 223
    :goto_0
    return-void

    .line 205
    :cond_1
    const/4 v0, -0x1

    .line 206
    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity$5;->this$0:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 207
    if-eqz v1, :cond_3

    .line 208
    const-string v2, "com.google.android.apps.uploader.extra.preferredAccount"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 210
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 211
    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity$5;->this$0:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    invoke-virtual {v1, v4}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "last_account"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    move v2, v4

    .line 214
    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_3

    .line 215
    aget-object v3, p1, v2

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v0, v2

    .line 221
    :cond_3
    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity$5;->this$0:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    #calls: Lcom/google/android/apps/uploader/clients/SettingsActivity;->initAccountsSpinner([Ljava/lang/String;I)V
    invoke-static {v1, p1, v0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->access$700(Lcom/google/android/apps/uploader/clients/SettingsActivity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 214
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
