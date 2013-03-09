.class Lcom/android/mms/ui/NumberPicker$4;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 165
    iput-object p1, p0, Lcom/android/mms/ui/NumberPicker$4;->this$0:Lcom/android/mms/ui/NumberPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 171
    if-nez p2, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker$4;->this$0:Lcom/android/mms/ui/NumberPicker;

    #calls: Lcom/android/mms/ui/NumberPicker;->validateInput(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/android/mms/ui/NumberPicker;->access$600(Lcom/android/mms/ui/NumberPicker;Landroid/view/View;)V

    .line 174
    :cond_0
    return-void
.end method
