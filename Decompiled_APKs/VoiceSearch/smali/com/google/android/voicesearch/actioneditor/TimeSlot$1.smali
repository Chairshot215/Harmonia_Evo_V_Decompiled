.class Lcom/google/android/voicesearch/actioneditor/TimeSlot$1;
.super Ljava/lang/Object;
.source "TimeSlot.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/actioneditor/TimeSlot;->showTimePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/actioneditor/TimeSlot;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/actioneditor/TimeSlot;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/android/voicesearch/actioneditor/TimeSlot$1;->this$0:Lcom/google/android/voicesearch/actioneditor/TimeSlot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 2
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/TimeSlot$1;->this$0:Lcom/google/android/voicesearch/actioneditor/TimeSlot;

    new-instance v1, Lcom/google/android/voicesearch/actions/TimeValue;

    invoke-direct {v1, p2, p3}, Lcom/google/android/voicesearch/actions/TimeValue;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/actioneditor/TimeSlot;->setSlotValue(Lcom/google/android/voicesearch/actions/SlotValue;)V

    .line 76
    return-void
.end method
