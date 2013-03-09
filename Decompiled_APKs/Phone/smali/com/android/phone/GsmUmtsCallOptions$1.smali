.class Lcom/android/phone/GsmUmtsCallOptions$1;
.super Ljava/lang/Object;
.source "GsmUmtsCallOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/GsmUmtsCallOptions;->onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/GsmUmtsCallOptions;

.field final synthetic val$sp:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/android/phone/GsmUmtsCallOptions;Landroid/content/SharedPreferences;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 361
    iput-object p1, p0, Lcom/android/phone/GsmUmtsCallOptions$1;->this$0:Lcom/android/phone/GsmUmtsCallOptions;

    iput-object p2, p0, Lcom/android/phone/GsmUmtsCallOptions$1;->val$sp:Landroid/content/SharedPreferences;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 364
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallOptions$1;->val$sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 365
    .local v0, spEditor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_key_cb_enable"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 367
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 368
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallOptions$1;->this$0:Lcom/android/phone/GsmUmtsCallOptions;

    #getter for: Lcom/android/phone/GsmUmtsCallOptions;->mSetCB:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v1}, Lcom/android/phone/GsmUmtsCallOptions;->access$000(Lcom/android/phone/GsmUmtsCallOptions;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 369
    return-void
.end method
