.class Lcom/android/phone/PhonePreference$1;
.super Ljava/lang/Object;
.source "PhonePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhonePreference;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhonePreference;

.field final synthetic val$message:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/phone/PhonePreference;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 306
    iput-object p1, p0, Lcom/android/phone/PhonePreference$1;->this$0:Lcom/android/phone/PhonePreference;

    iput-object p2, p0, Lcom/android/phone/PhonePreference$1;->val$message:Landroid/widget/EditText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 308
    iget-object v1, p0, Lcom/android/phone/PhonePreference$1;->val$message:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, text:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 310
    iget-object v1, p0, Lcom/android/phone/PhonePreference$1;->this$0:Lcom/android/phone/PhonePreference;

    #getter for: Lcom/android/phone/PhonePreference;->mDefaultCallRejectMessage:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/PhonePreference;->access$000(Lcom/android/phone/PhonePreference;)Ljava/lang/String;

    move-result-object v0

    .line 312
    :cond_0
    iget-object v1, p0, Lcom/android/phone/PhonePreference$1;->this$0:Lcom/android/phone/PhonePreference;

    #getter for: Lcom/android/phone/PhonePreference;->mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/android/phone/PhonePreference;->access$100(Lcom/android/phone/PhonePreference;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pref_key_reject_msg_text"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 313
    iget-object v1, p0, Lcom/android/phone/PhonePreference$1;->this$0:Lcom/android/phone/PhonePreference;

    #getter for: Lcom/android/phone/PhonePreference;->mCallRejectMessage:Lcom/htc/preference/HtcPreference;
    invoke-static {v1}, Lcom/android/phone/PhonePreference;->access$200(Lcom/android/phone/PhonePreference;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 314
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 315
    return-void
.end method
