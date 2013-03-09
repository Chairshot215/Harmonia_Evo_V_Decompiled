.class Lcom/htc/android/htcime/tools/InputTypeTest$MyOnItemSelectedListener;
.super Ljava/lang/Object;
.source "InputTypeTest.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/tools/InputTypeTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyOnItemSelectedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/tools/InputTypeTest;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/tools/InputTypeTest;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/htc/android/htcime/tools/InputTypeTest$MyOnItemSelectedListener;->this$0:Lcom/htc/android/htcime/tools/InputTypeTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "pos"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/htc/android/htcime/tools/InputTypeTest$MyOnItemSelectedListener;->this$0:Lcom/htc/android/htcime/tools/InputTypeTest;

    iget-object v0, v1, Lcom/htc/android/htcime/tools/InputTypeTest;->prefix:Ljava/lang/String;

    .line 98
    .local v0, selectedInputType:Ljava/lang/String;
    if-ltz p3, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/tools/InputTypeTest$MyOnItemSelectedListener;->this$0:Lcom/htc/android/htcime/tools/InputTypeTest;

    iget-object v1, v1, Lcom/htc/android/htcime/tools/InputTypeTest;->inputTypeValue:[Ljava/lang/String;

    array-length v1, v1

    if-ge p3, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcime/tools/InputTypeTest$MyOnItemSelectedListener;->this$0:Lcom/htc/android/htcime/tools/InputTypeTest;

    iget-object v2, v2, Lcom/htc/android/htcime/tools/InputTypeTest;->inputTypeValue:[Ljava/lang/String;

    aget-object v2, v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcime/tools/InputTypeTest$MyOnItemSelectedListener;->this$0:Lcom/htc/android/htcime/tools/InputTypeTest;

    iget-object v1, v1, Lcom/htc/android/htcime/tools/InputTypeTest;->inputTypeField:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v1, p0, Lcom/htc/android/htcime/tools/InputTypeTest$MyOnItemSelectedListener;->this$0:Lcom/htc/android/htcime/tools/InputTypeTest;

    iget-object v1, v1, Lcom/htc/android/htcime/tools/InputTypeTest;->inputTypeField:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 101
    iget-object v1, p0, Lcom/htc/android/htcime/tools/InputTypeTest$MyOnItemSelectedListener;->this$0:Lcom/htc/android/htcime/tools/InputTypeTest;

    invoke-virtual {v1}, Lcom/htc/android/htcime/tools/InputTypeTest;->setInputType()V

    .line 102
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 106
    return-void
.end method
