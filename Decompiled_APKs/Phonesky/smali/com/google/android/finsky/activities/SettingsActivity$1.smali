.class Lcom/google/android/finsky/activities/SettingsActivity$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/SettingsActivity;->processAdSettingChange(Landroid/preference/CheckBoxPreference;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/SettingsActivity;

.field final synthetic val$isChecked:Z

.field final synthetic val$preference:Landroid/preference/CheckBoxPreference;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/SettingsActivity;ZLandroid/preference/CheckBoxPreference;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 362
    iput-object p1, p0, Lcom/google/android/finsky/activities/SettingsActivity$1;->this$0:Lcom/google/android/finsky/activities/SettingsActivity;

    iput-boolean p2, p0, Lcom/google/android/finsky/activities/SettingsActivity$1;->val$isChecked:Z

    iput-object p3, p0, Lcom/google/android/finsky/activities/SettingsActivity$1;->val$preference:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 365
    sget-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->INTEREST_BASED_ADS_ENABLED:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    iget-boolean v1, p0, Lcom/google/android/finsky/activities/SettingsActivity$1;->val$isChecked:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 366
    iget-object v0, p0, Lcom/google/android/finsky/activities/SettingsActivity$1;->this$0:Lcom/google/android/finsky/activities/SettingsActivity;

    iget-object v1, p0, Lcom/google/android/finsky/activities/SettingsActivity$1;->val$preference:Landroid/preference/CheckBoxPreference;

    iget-boolean v2, p0, Lcom/google/android/finsky/activities/SettingsActivity$1;->val$isChecked:Z

    #calls: Lcom/google/android/finsky/activities/SettingsActivity;->setInterestBasedAds(Landroid/preference/CheckBoxPreference;Z)V
    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/activities/SettingsActivity;->access$000(Lcom/google/android/finsky/activities/SettingsActivity;Landroid/preference/CheckBoxPreference;Z)V

    .line 367
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 362
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/SettingsActivity$1;->onResponse(Ljava/lang/Boolean;)V

    return-void
.end method
