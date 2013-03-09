.class Lcom/htc/android/psclient/RestoreUsbSettings$2;
.super Ljava/lang/Object;
.source "RestoreUsbSettings.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/psclient/RestoreUsbSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/psclient/RestoreUsbSettings;


# direct methods
.method constructor <init>(Lcom/htc/android/psclient/RestoreUsbSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/htc/android/psclient/RestoreUsbSettings$2;->this$0:Lcom/htc/android/psclient/RestoreUsbSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 4
    .parameter "preference"

    .prologue
    const/4 v3, 0x0

    .line 147
    iget-object v0, p0, Lcom/htc/android/psclient/RestoreUsbSettings$2;->this$0:Lcom/htc/android/psclient/RestoreUsbSettings;

    #getter for: Lcom/htc/android/psclient/RestoreUsbSettings;->askAgain:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v0}, Lcom/htc/android/psclient/RestoreUsbSettings;->access$1200(Lcom/htc/android/psclient/RestoreUsbSettings;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/htc/android/psclient/RestoreUsbSettings$2;->this$0:Lcom/htc/android/psclient/RestoreUsbSettings;

    iget-object v0, v0, Lcom/htc/android/psclient/RestoreUsbSettings;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "usb_dont_ask"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 149
    iget-object v0, p0, Lcom/htc/android/psclient/RestoreUsbSettings$2;->this$0:Lcom/htc/android/psclient/RestoreUsbSettings;

    iget-object v0, v0, Lcom/htc/android/psclient/RestoreUsbSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 154
    :goto_0
    return v3

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/htc/android/psclient/RestoreUsbSettings$2;->this$0:Lcom/htc/android/psclient/RestoreUsbSettings;

    iget-object v0, v0, Lcom/htc/android/psclient/RestoreUsbSettings;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "usb_dont_ask"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 152
    iget-object v0, p0, Lcom/htc/android/psclient/RestoreUsbSettings$2;->this$0:Lcom/htc/android/psclient/RestoreUsbSettings;

    iget-object v0, v0, Lcom/htc/android/psclient/RestoreUsbSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method
