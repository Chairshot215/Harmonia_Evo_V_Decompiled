.class public Lcom/google/android/voicesearch/actioneditor/TimeSlot;
.super Lcom/google/android/voicesearch/actioneditor/SlotView;
.source "TimeSlot.java"


# instance fields
.field private mTime:Lcom/google/android/voicesearch/actions/TimeValue;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attributes"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/google/android/voicesearch/actioneditor/SlotView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public static createTimeSlot(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/voicesearch/actioneditor/PopupManager;Lcom/google/android/voicesearch/actioneditor/SlotContainer;Lcom/google/android/voicesearch/actions/SlotSpec;Lcom/google/android/voicesearch/actions/SlotValue;)Lcom/google/android/voicesearch/actioneditor/TimeSlot;
    .locals 4
    .parameter "context"
    .parameter "inflationRoot"
    .parameter "popupManager"
    .parameter "slotContainer"
    .parameter "spec"
    .parameter "value"

    .prologue
    .line 51
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 54
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f040017

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/voicesearch/actioneditor/TimeSlot;

    .line 56
    .local v1, slot:Lcom/google/android/voicesearch/actioneditor/TimeSlot;
    invoke-virtual {v1, p2, p3, p4, p5}, Lcom/google/android/voicesearch/actioneditor/TimeSlot;->init(Lcom/google/android/voicesearch/actioneditor/PopupManager;Lcom/google/android/voicesearch/actioneditor/SlotContainer;Lcom/google/android/voicesearch/actions/SlotSpec;Lcom/google/android/voicesearch/actions/SlotValue;)V

    .line 58
    return-object v1
.end method

.method private showTimePopup()V
    .locals 6

    .prologue
    .line 70
    new-instance v0, Landroid/app/TimePickerDialog;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/TimeSlot;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/android/voicesearch/actioneditor/TimeSlot$1;

    invoke-direct {v2, p0}, Lcom/google/android/voicesearch/actioneditor/TimeSlot$1;-><init>(Lcom/google/android/voicesearch/actioneditor/TimeSlot;)V

    iget-object v3, p0, Lcom/google/android/voicesearch/actioneditor/TimeSlot;->mTime:Lcom/google/android/voicesearch/actions/TimeValue;

    invoke-virtual {v3}, Lcom/google/android/voicesearch/actions/TimeValue;->getHourOfDay()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/voicesearch/actioneditor/TimeSlot;->mTime:Lcom/google/android/voicesearch/actions/TimeValue;

    invoke-virtual {v4}, Lcom/google/android/voicesearch/actions/TimeValue;->getMinute()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/TimeSlot;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 79
    .local v0, popupDialog:Landroid/app/TimePickerDialog;
    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    .line 80
    return-void
.end method


# virtual methods
.method public bridge synthetic getSlotValue()Lcom/google/android/voicesearch/actions/SlotValue;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/TimeSlot;->getSlotValue()Lcom/google/android/voicesearch/actions/TimeValue;

    move-result-object v0

    return-object v0
.end method

.method public getSlotValue()Lcom/google/android/voicesearch/actions/TimeValue;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/TimeSlot;->mTime:Lcom/google/android/voicesearch/actions/TimeValue;

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 63
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 64
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/TimeSlot;->showTimePopup()V

    .line 66
    :cond_0
    return v1
.end method

.method public setSlotValue(Lcom/google/android/voicesearch/actions/SlotValue;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 95
    instance-of v0, p1, Lcom/google/android/voicesearch/actions/TimeValue;

    if-eqz v0, :cond_0

    .line 96
    check-cast p1, Lcom/google/android/voicesearch/actions/TimeValue;

    .end local p1
    iput-object p1, p0, Lcom/google/android/voicesearch/actioneditor/TimeSlot;->mTime:Lcom/google/android/voicesearch/actions/TimeValue;

    .line 97
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/TimeSlot;->mTime:Lcom/google/android/voicesearch/actions/TimeValue;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/TimeSlot;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/actions/TimeValue;->asString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/actioneditor/TimeSlot;->setStringValue(Ljava/lang/String;)V

    .line 101
    :goto_0
    return-void

    .line 99
    .restart local p1
    :cond_0
    const-string v0, "TimeSlot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inputed SlotValue of unexpected type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
