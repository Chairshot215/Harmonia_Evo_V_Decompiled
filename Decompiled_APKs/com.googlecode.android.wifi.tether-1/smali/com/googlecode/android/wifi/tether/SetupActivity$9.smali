.class Lcom/googlecode/android/wifi/tether/SetupActivity$9;
.super Ljava/lang/Object;
.source "SetupActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlecode/android/wifi/tether/SetupActivity;->updateSettingsMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

.field private final synthetic val$origTextColorPassphrase:I


# direct methods
.method constructor <init>(Lcom/googlecode/android/wifi/tether/SetupActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/googlecode/android/wifi/tether/SetupActivity$9;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    iput p2, p0, Lcom/googlecode/android/wifi/tether/SetupActivity$9;->val$origTextColorPassphrase:I

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 323
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 326
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 328
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x1e

    if-le v0, v1, :cond_1

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/SetupActivity$9;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    #getter for: Lcom/googlecode/android/wifi/tether/SetupActivity;->prefPassphrase:Landroid/preference/EditTextPreference;
    invoke-static {v0}, Lcom/googlecode/android/wifi/tether/SetupActivity;->access$3(Lcom/googlecode/android/wifi/tether/SetupActivity;)Landroid/preference/EditTextPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 334
    :goto_0
    return-void

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/SetupActivity$9;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    #getter for: Lcom/googlecode/android/wifi/tether/SetupActivity;->prefPassphrase:Landroid/preference/EditTextPreference;
    invoke-static {v0}, Lcom/googlecode/android/wifi/tether/SetupActivity;->access$3(Lcom/googlecode/android/wifi/tether/SetupActivity;)Landroid/preference/EditTextPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/android/wifi/tether/SetupActivity$9;->val$origTextColorPassphrase:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_0
.end method
