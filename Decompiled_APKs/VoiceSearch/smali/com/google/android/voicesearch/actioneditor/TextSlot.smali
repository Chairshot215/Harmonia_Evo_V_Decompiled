.class public Lcom/google/android/voicesearch/actioneditor/TextSlot;
.super Lcom/google/android/voicesearch/actioneditor/SlotView;
.source "TextSlot.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attributes"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/google/android/voicesearch/actioneditor/SlotView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public static createTextSlot(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/voicesearch/actioneditor/PopupManager;Lcom/google/android/voicesearch/actioneditor/SlotContainer;Lcom/google/android/voicesearch/actions/SlotSpec;Lcom/google/android/voicesearch/actions/SlotValue;Z)Lcom/google/android/voicesearch/actioneditor/TextSlot;
    .locals 7
    .parameter "context"
    .parameter "inflationRoot"
    .parameter "popupManager"
    .parameter "slotContainer"
    .parameter "spec"
    .parameter "value"
    .parameter "oneLine"

    .prologue
    .line 55
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 58
    .local v6, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f040016

    const/4 v2, 0x0

    invoke-virtual {v6, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/TextSlot;

    .local v0, slot:Lcom/google/android/voicesearch/actioneditor/TextSlot;
    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    .line 60
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->init(Lcom/google/android/voicesearch/actioneditor/PopupManager;Lcom/google/android/voicesearch/actioneditor/SlotContainer;Lcom/google/android/voicesearch/actions/SlotSpec;Lcom/google/android/voicesearch/actions/SlotValue;Z)V

    .line 62
    return-object v0
.end method


# virtual methods
.method public bridge synthetic getSlotValue()Lcom/google/android/voicesearch/actions/SlotValue;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->getSlotValue()Lcom/google/android/voicesearch/actions/TextValue;

    move-result-object v0

    return-object v0
.end method

.method public getSlotValue()Lcom/google/android/voicesearch/actions/TextValue;
    .locals 2

    .prologue
    .line 109
    new-instance v0, Lcom/google/android/voicesearch/actions/TextValue;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/voicesearch/actions/TextValue;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public init(Lcom/google/android/voicesearch/actioneditor/PopupManager;Lcom/google/android/voicesearch/actioneditor/SlotContainer;Lcom/google/android/voicesearch/actions/SlotSpec;Lcom/google/android/voicesearch/actions/SlotValue;Z)V
    .locals 2
    .parameter "popupManager"
    .parameter "slotContainer"
    .parameter "spec"
    .parameter "value"
    .parameter "oneLine"

    .prologue
    .line 67
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->init(Lcom/google/android/voicesearch/actioneditor/PopupManager;Lcom/google/android/voicesearch/actioneditor/SlotContainer;Lcom/google/android/voicesearch/actions/SlotSpec;Lcom/google/android/voicesearch/actions/SlotValue;)V

    .line 69
    if-eqz p5, :cond_0

    .line 70
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 73
    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    .end local v0           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public inputSlotValue(Lcom/google/android/voicesearch/actions/SlotValue;)Z
    .locals 5
    .parameter "value"

    .prologue
    const/4 v1, 0x0

    .line 122
    if-nez p1, :cond_0

    .line 123
    const-string v2, "TextSlot"

    const-string v3, "Tried to input null value"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :goto_0
    return v1

    .line 128
    :cond_0
    instance-of v2, p1, Lcom/google/android/voicesearch/actions/TextValue;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 129
    check-cast v0, Lcom/google/android/voicesearch/actions/TextValue;

    .line 130
    .local v0, textValue:Lcom/google/android/voicesearch/actions/TextValue;
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actions/TextValue;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 131
    const/4 v1, 0x1

    goto :goto_0

    .line 133
    .end local v0           #textValue:Lcom/google/android/voicesearch/actions/TextValue;
    :cond_1
    const-string v2, "TextSlot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inputed SlotValue of unexpected type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onValueChanged()V
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->getPopupManager()Lcom/google/android/voicesearch/actioneditor/PopupManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/PopupManager;->dismissCurrentPopup()V

    .line 81
    return-void
.end method

.method public setSlotValue(Lcom/google/android/voicesearch/actions/SlotValue;)V
    .locals 4
    .parameter "value"

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->length()I

    move-result v2

    const-string v3, ""

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 115
    if-eqz p1, :cond_0

    .line 116
    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->inputSlotValue(Lcom/google/android/voicesearch/actions/SlotValue;)Z

    .line 118
    :cond_0
    return-void
.end method
