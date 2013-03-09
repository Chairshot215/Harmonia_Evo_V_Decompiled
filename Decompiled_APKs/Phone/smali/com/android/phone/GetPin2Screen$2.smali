.class Lcom/android/phone/GetPin2Screen$2;
.super Ljava/lang/Object;
.source "GetPin2Screen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/GetPin2Screen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/GetPin2Screen;


# direct methods
.method constructor <init>(Lcom/android/phone/GetPin2Screen;)V
    .locals 0
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/phone/GetPin2Screen$2;->this$0:Lcom/android/phone/GetPin2Screen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 210
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 216
    :sswitch_0
    iget-object v1, p0, Lcom/android/phone/GetPin2Screen$2;->this$0:Lcom/android/phone/GetPin2Screen;

    #getter for: Lcom/android/phone/GetPin2Screen;->mPin2Field:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/phone/GetPin2Screen;->access$000(Lcom/android/phone/GetPin2Screen;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 219
    iget-object v1, p0, Lcom/android/phone/GetPin2Screen$2;->this$0:Lcom/android/phone/GetPin2Screen;

    #calls: Lcom/android/phone/GetPin2Screen;->returnResult()V
    invoke-static {v1}, Lcom/android/phone/GetPin2Screen;->access$100(Lcom/android/phone/GetPin2Screen;)V

    goto :goto_0

    .line 222
    :sswitch_1
    iget-object v1, p0, Lcom/android/phone/GetPin2Screen$2;->this$0:Lcom/android/phone/GetPin2Screen;

    #getter for: Lcom/android/phone/GetPin2Screen;->mPin2Field:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/phone/GetPin2Screen;->access$000(Lcom/android/phone/GetPin2Screen;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 223
    iget-object v1, p0, Lcom/android/phone/GetPin2Screen$2;->this$0:Lcom/android/phone/GetPin2Screen;

    #calls: Lcom/android/phone/GetPin2Screen;->returnResult()V
    invoke-static {v1}, Lcom/android/phone/GetPin2Screen;->access$100(Lcom/android/phone/GetPin2Screen;)V

    goto :goto_0

    .line 225
    :cond_1
    iget-object v1, p0, Lcom/android/phone/GetPin2Screen$2;->this$0:Lcom/android/phone/GetPin2Screen;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/android/phone/GetPin2Screen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 227
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/phone/GetPin2Screen$2;->this$0:Lcom/android/phone/GetPin2Screen;

    #getter for: Lcom/android/phone/GetPin2Screen;->mPin2Field:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/phone/GetPin2Screen;->access$000(Lcom/android/phone/GetPin2Screen;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    .line 232
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :sswitch_2
    iget-object v1, p0, Lcom/android/phone/GetPin2Screen$2;->this$0:Lcom/android/phone/GetPin2Screen;

    invoke-virtual {v1}, Lcom/android/phone/GetPin2Screen;->finish()V

    goto :goto_0

    .line 210
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f08008a -> :sswitch_2
        0x7f08008b -> :sswitch_0
        0x7f08009b -> :sswitch_1
    .end sparse-switch
.end method
