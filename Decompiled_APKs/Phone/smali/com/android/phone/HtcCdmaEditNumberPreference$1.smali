.class Lcom/android/phone/HtcCdmaEditNumberPreference$1;
.super Ljava/lang/Object;
.source "HtcCdmaEditNumberPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/HtcCdmaEditNumberPreference;->onBindDialogView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/HtcCdmaEditNumberPreference;

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/phone/HtcCdmaEditNumberPreference;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/phone/HtcCdmaEditNumberPreference$1;->this$0:Lcom/android/phone/HtcCdmaEditNumberPreference;

    iput-object p2, p0, Lcom/android/phone/HtcCdmaEditNumberPreference$1;->val$editText:Landroid/widget/EditText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/phone/HtcCdmaEditNumberPreference$1;->val$editText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/HtcCdmaEditNumberPreference$1;->this$0:Lcom/android/phone/HtcCdmaEditNumberPreference;

    invoke-virtual {v1}, Lcom/android/phone/HtcCdmaEditNumberPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0154

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 210
    return-void
.end method
