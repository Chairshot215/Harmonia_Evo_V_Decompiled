.class Lcom/android/inputmethodcommon/InputMethodSettingsImpl$1;
.super Ljava/lang/Object;
.source "InputMethodSettingsImpl.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->init(Landroid/content/Context;Landroid/preference/PreferenceScreen;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethodcommon/InputMethodSettingsImpl;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/inputmethodcommon/InputMethodSettingsImpl;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl$1;->this$0:Lcom/android/inputmethodcommon/InputMethodSettingsImpl;

    iput-object p2, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preference"

    .prologue
    .line 63
    iget-object v2, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl$1;->this$0:Lcom/android/inputmethodcommon/InputMethodSettingsImpl;

    iget-object v3, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl$1;->val$context:Landroid/content/Context;

    #calls: Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->getSubtypeEnablerTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    invoke-static {v2, v3}, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->access$000(Lcom/android/inputmethodcommon/InputMethodSettingsImpl;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 64
    .local v1, title:Ljava/lang/CharSequence;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.INPUT_METHOD_SUBTYPE_SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 66
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "input_method_id"

    iget-object v3, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl$1;->this$0:Lcom/android/inputmethodcommon/InputMethodSettingsImpl;

    #getter for: Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->mImi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-static {v3}, Lcom/android/inputmethodcommon/InputMethodSettingsImpl;->access$100(Lcom/android/inputmethodcommon/InputMethodSettingsImpl;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 68
    const-string v2, "android.intent.extra.TITLE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 70
    :cond_0
    const/high16 v2, 0x1420

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 73
    iget-object v2, p0, Lcom/android/inputmethodcommon/InputMethodSettingsImpl$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 74
    const/4 v2, 0x1

    return v2
.end method
