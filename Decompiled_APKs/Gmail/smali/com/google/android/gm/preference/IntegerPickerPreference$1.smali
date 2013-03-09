.class Lcom/google/android/gm/preference/IntegerPickerPreference$1;
.super Ljava/lang/Object;
.source "IntegerPickerPreference.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/preference/IntegerPickerPreference;->onBindDialogView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/preference/IntegerPickerPreference;


# direct methods
.method constructor <init>(Lcom/google/android/gm/preference/IntegerPickerPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/android/gm/preference/IntegerPickerPreference$1;->this$0:Lcom/google/android/gm/preference/IntegerPickerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 1
    .parameter "picker"
    .parameter "oldVal"
    .parameter "newVal"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/gm/preference/IntegerPickerPreference$1;->this$0:Lcom/google/android/gm/preference/IntegerPickerPreference;

    #calls: Lcom/google/android/gm/preference/IntegerPickerPreference;->updateDays()V
    invoke-static {v0}, Lcom/google/android/gm/preference/IntegerPickerPreference;->access$000(Lcom/google/android/gm/preference/IntegerPickerPreference;)V

    .line 67
    return-void
.end method
