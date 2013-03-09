.class Lcom/android/mms/ui/MessagingPreferenceActivity$11;
.super Ljava/lang/Object;
.source "MessagingPreferenceActivity.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessagingPreferenceActivity;->initPreference()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1969
    iput-object p1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$11;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "p"
    .parameter "newObjValue"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1971
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$11;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    const-string v2, "com.android.mms.ngm_pref"

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1972
    .local v0, ngm_sp:Landroid/content/SharedPreferences;
    const-string v1, "ngm_pref_setting_shown"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1973
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1974
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$11;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090088

    invoke-static {v1, v2}, Lcom/android/mms/ui/MessageUtils;->getNGMGroupHelpDialog(Landroid/content/Context;I)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 1977
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "ngm_pref_setting_shown"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1979
    :cond_0
    return v4

    .line 1976
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$11;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090089

    invoke-static {v1, v2}, Lcom/android/mms/ui/MessageUtils;->getNGMGroupHelpDialog(Landroid/content/Context;I)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto :goto_0
.end method
