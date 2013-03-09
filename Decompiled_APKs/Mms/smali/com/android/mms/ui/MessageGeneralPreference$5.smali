.class Lcom/android/mms/ui/MessageGeneralPreference$5;
.super Ljava/lang/Object;
.source "MessageGeneralPreference.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageGeneralPreference;->initSignature()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageGeneralPreference;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageGeneralPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 398
    iput-object p1, p0, Lcom/android/mms/ui/MessageGeneralPreference$5;->this$0:Lcom/android/mms/ui/MessageGeneralPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "p"
    .parameter "newObjValue"

    .prologue
    const/4 v5, 0x1

    .line 401
    iget-object v3, p0, Lcom/android/mms/ui/MessageGeneralPreference$5;->this$0:Lcom/android/mms/ui/MessageGeneralPreference;

    const-string v4, "pref_key_signature_text"

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/MessageGeneralPreference;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .local v0, mSignatureTextPref:Lcom/htc/preference/HtcPreference;
    move-object v2, p2

    .line 402
    check-cast v2, Ljava/lang/String;

    .line 410
    .local v2, newValue:Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 411
    iget-object v3, p0, Lcom/android/mms/ui/MessageGeneralPreference$5;->this$0:Lcom/android/mms/ui/MessageGeneralPreference;

    #getter for: Lcom/android/mms/ui/MessageGeneralPreference;->mms_sp:Landroid/content/SharedPreferences;
    invoke-static {v3}, Lcom/android/mms/ui/MessageGeneralPreference;->access$500(Lcom/android/mms/ui/MessageGeneralPreference;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 412
    .local v1, mms_editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "pref_key_signature_text_by_user"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 413
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 414
    return v5
.end method
