.class Lcom/android/mms/ui/NumberPicker$3;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/NumberPicker;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/NumberPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/mms/ui/NumberPicker$3;->this$0:Lcom/android/mms/ui/NumberPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker$3;->this$0:Lcom/android/mms/ui/NumberPicker;

    iget-object v1, p0, Lcom/android/mms/ui/NumberPicker$3;->this$0:Lcom/android/mms/ui/NumberPicker;

    #getter for: Lcom/android/mms/ui/NumberPicker;->mText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/mms/ui/NumberPicker;->access$500(Lcom/android/mms/ui/NumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    #calls: Lcom/android/mms/ui/NumberPicker;->validateInput(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/NumberPicker;->access$600(Lcom/android/mms/ui/NumberPicker;Landroid/view/View;)V

    .line 154
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker$3;->this$0:Lcom/android/mms/ui/NumberPicker;

    #getter for: Lcom/android/mms/ui/NumberPicker;->mText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/mms/ui/NumberPicker;->access$500(Lcom/android/mms/ui/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker$3;->this$0:Lcom/android/mms/ui/NumberPicker;

    #getter for: Lcom/android/mms/ui/NumberPicker;->mText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/mms/ui/NumberPicker;->access$500(Lcom/android/mms/ui/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 162
    :cond_0
    return-void
.end method
