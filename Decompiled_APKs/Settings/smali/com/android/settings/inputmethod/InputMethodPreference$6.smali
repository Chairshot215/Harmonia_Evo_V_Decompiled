.class Lcom/android/settings/inputmethod/InputMethodPreference$6;
.super Ljava/lang/Object;
.source "InputMethodPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/inputmethod/InputMethodPreference;->showSecurityWarnDialog(Landroid/view/inputmethod/InputMethodInfo;Lcom/htc/preference/HtcCheckBoxPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/inputmethod/InputMethodPreference;

.field final synthetic val$chkPref:Lcom/htc/preference/HtcCheckBoxPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/inputmethod/InputMethodPreference;Lcom/htc/preference/HtcCheckBoxPreference;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 270
    iput-object p1, p0, Lcom/android/settings/inputmethod/InputMethodPreference$6;->this$0:Lcom/android/settings/inputmethod/InputMethodPreference;

    iput-object p2, p0, Lcom/android/settings/inputmethod/InputMethodPreference$6;->val$chkPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference$6;->val$chkPref:Lcom/htc/preference/HtcCheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 274
    return-void
.end method
