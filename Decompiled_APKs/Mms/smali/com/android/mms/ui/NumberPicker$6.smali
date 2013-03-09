.class Lcom/android/mms/ui/NumberPicker$6;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/NumberPicker;
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
    .line 534
    iput-object p1, p0, Lcom/android/mms/ui/NumberPicker$6;->this$0:Lcom/android/mms/ui/NumberPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .parameter "s"

    .prologue
    .line 542
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 543
    .local v2, sNumber:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 557
    :cond_0
    :goto_0
    return-void

    .line 546
    :cond_1
    const/4 v1, 0x0

    .line 548
    .local v1, nNumber:I
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 553
    :goto_1
    iget-object v3, p0, Lcom/android/mms/ui/NumberPicker$6;->this$0:Lcom/android/mms/ui/NumberPicker;

    #getter for: Lcom/android/mms/ui/NumberPicker;->mEnd:I
    invoke-static {v3}, Lcom/android/mms/ui/NumberPicker;->access$1300(Lcom/android/mms/ui/NumberPicker;)I

    move-result v3

    if-le v1, v3, :cond_0

    .line 554
    iget-object v3, p0, Lcom/android/mms/ui/NumberPicker$6;->this$0:Lcom/android/mms/ui/NumberPicker;

    #getter for: Lcom/android/mms/ui/NumberPicker;->mText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/mms/ui/NumberPicker;->access$500(Lcom/android/mms/ui/NumberPicker;)Landroid/widget/EditText;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/NumberPicker$6;->this$0:Lcom/android/mms/ui/NumberPicker;

    #getter for: Lcom/android/mms/ui/NumberPicker;->mEnd:I
    invoke-static {v4}, Lcom/android/mms/ui/NumberPicker;->access$1300(Lcom/android/mms/ui/NumberPicker;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 549
    :catch_0
    move-exception v0

    .line 550
    .local v0, e:Ljava/lang/NumberFormatException;
    iget-object v3, p0, Lcom/android/mms/ui/NumberPicker$6;->this$0:Lcom/android/mms/ui/NumberPicker;

    #getter for: Lcom/android/mms/ui/NumberPicker;->mEnd:I
    invoke-static {v3}, Lcom/android/mms/ui/NumberPicker;->access$1300(Lcom/android/mms/ui/NumberPicker;)I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 536
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 539
    return-void
.end method
