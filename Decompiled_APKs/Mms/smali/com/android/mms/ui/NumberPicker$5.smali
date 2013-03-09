.class Lcom/android/mms/ui/NumberPicker$5;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 177
    iput-object p1, p0, Lcom/android/mms/ui/NumberPicker$5;->this$0:Lcom/android/mms/ui/NumberPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker$5;->this$0:Lcom/android/mms/ui/NumberPicker;

    #getter for: Lcom/android/mms/ui/NumberPicker;->mText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/mms/ui/NumberPicker;->access$500(Lcom/android/mms/ui/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 195
    const/4 v0, 0x1

    return v0
.end method
