.class Lcom/googlecode/android/wifi/tether/SetupActivity$8;
.super Ljava/lang/Object;
.source "SetupActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlecode/android/wifi/tether/SetupActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;


# direct methods
.method constructor <init>(Lcom/googlecode/android/wifi/tether/SetupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/googlecode/android/wifi/tether/SetupActivity$8;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 174
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, message:Ljava/lang/String;
    const-string v3, "kashutdown"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 176
    iget-object v2, p0, Lcom/googlecode/android/wifi/tether/SetupActivity$8;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    invoke-virtual {v2}, Lcom/googlecode/android/wifi/tether/SetupActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "keepalivecheckprefcheckintervalshutdownpref"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 184
    :goto_0
    return v1

    .line 178
    :cond_0
    const-string v3, "karetry"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 179
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/SetupActivity$8;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    invoke-virtual {v3}, Lcom/googlecode/android/wifi/tether/SetupActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "keepalivecheckprefcheckintervalshutdownpref"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 182
    :cond_1
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/SetupActivity$8;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    #getter for: Lcom/googlecode/android/wifi/tether/SetupActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v1}, Lcom/googlecode/android/wifi/tether/SetupActivity;->access$1(Lcom/googlecode/android/wifi/tether/SetupActivity;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/android/wifi/tether/TetherApplication;->displayToastMessage(Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/SetupActivity$8;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    invoke-virtual {v1}, Lcom/googlecode/android/wifi/tether/SetupActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v3, "keepalivecheckprefcheckintervalshutdownpref"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    move v1, v2

    .line 184
    goto :goto_0
.end method
