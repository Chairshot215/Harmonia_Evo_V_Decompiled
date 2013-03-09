.class Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController$2;
.super Ljava/lang/Object;
.source "GoogleAccountSettingsController.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/util/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/googlequicksearchbox/util/Consumer",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;)V
    .locals 0
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController$2;->this$0:Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic consume(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 201
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController$2;->consume(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public consume(Ljava/lang/String;)Z
    .locals 3
    .parameter "accountName"

    .prologue
    const/4 v1, 0x1

    .line 203
    if-eqz p1, :cond_1

    move v0, v1

    .line 204
    .local v0, created:Z
    :goto_0
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController$2;->this$0:Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;

    #getter for: Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->mSearchPersonalizationPreference:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->access$100(Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 205
    if-eqz v0, :cond_0

    .line 206
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController$2;->this$0:Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/google/android/googlequicksearchbox/SearchSettings;->setGoogleAccountToUse(Ljava/lang/String;)V

    .line 207
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController$2;->this$0:Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;

    #calls: Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->updateAccounts()V
    invoke-static {v2}, Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;->access$200(Lcom/google/android/googlequicksearchbox/preferences/GoogleAccountSettingsController;)V

    .line 209
    :cond_0
    return v1

    .line 203
    .end local v0           #created:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
