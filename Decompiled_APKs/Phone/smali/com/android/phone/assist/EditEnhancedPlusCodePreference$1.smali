.class Lcom/android/phone/assist/EditEnhancedPlusCodePreference$1;
.super Ljava/lang/Object;
.source "EditEnhancedPlusCodePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/assist/EditEnhancedPlusCodePreference;->onBindDialogView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/assist/EditEnhancedPlusCodePreference;

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/phone/assist/EditEnhancedPlusCodePreference;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/phone/assist/EditEnhancedPlusCodePreference$1;->this$0:Lcom/android/phone/assist/EditEnhancedPlusCodePreference;

    iput-object p2, p0, Lcom/android/phone/assist/EditEnhancedPlusCodePreference$1;->val$editText:Landroid/widget/EditText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 158
    iget-object v1, p0, Lcom/android/phone/assist/EditEnhancedPlusCodePreference$1;->this$0:Lcom/android/phone/assist/EditEnhancedPlusCodePreference;

    #getter for: Lcom/android/phone/assist/EditEnhancedPlusCodePreference;->mParentActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/phone/assist/EditEnhancedPlusCodePreference;->access$000(Lcom/android/phone/assist/EditEnhancedPlusCodePreference;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/android/phone/assist/EditEnhancedPlusCodePreference$1;->this$0:Lcom/android/phone/assist/EditEnhancedPlusCodePreference;

    invoke-virtual {v1}, Lcom/android/phone/assist/EditEnhancedPlusCodePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 161
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/phone/assist/EditEnhancedPlusCodePreference$1;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 163
    iget-object v1, p0, Lcom/android/phone/assist/EditEnhancedPlusCodePreference$1;->this$0:Lcom/android/phone/assist/EditEnhancedPlusCodePreference;

    #getter for: Lcom/android/phone/assist/EditEnhancedPlusCodePreference;->mParentActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/phone/assist/EditEnhancedPlusCodePreference;->access$000(Lcom/android/phone/assist/EditEnhancedPlusCodePreference;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/assist/EditEnhancedPlusCodePreference$1;->this$0:Lcom/android/phone/assist/EditEnhancedPlusCodePreference;

    #getter for: Lcom/android/phone/assist/EditEnhancedPlusCodePreference;->mCountryListIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/phone/assist/EditEnhancedPlusCodePreference;->access$100(Lcom/android/phone/assist/EditEnhancedPlusCodePreference;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/assist/EditEnhancedPlusCodePreference$1;->this$0:Lcom/android/phone/assist/EditEnhancedPlusCodePreference;

    #getter for: Lcom/android/phone/assist/EditEnhancedPlusCodePreference;->mPrefId:I
    invoke-static {v3}, Lcom/android/phone/assist/EditEnhancedPlusCodePreference;->access$200(Lcom/android/phone/assist/EditEnhancedPlusCodePreference;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 165
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method
