.class Lcom/google/android/voicesearch/actioneditor/SlotGroup$1;
.super Ljava/lang/Object;
.source "SlotGroup.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/actioneditor/SlotGroup;->sortActiveSlots()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/voicesearch/actioneditor/SlotView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/actioneditor/SlotGroup;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/actioneditor/SlotGroup;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup$1;->this$0:Lcom/google/android/voicesearch/actioneditor/SlotGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/android/voicesearch/actioneditor/SlotView;Lcom/google/android/voicesearch/actioneditor/SlotView;)I
    .locals 2
    .parameter "s1"
    .parameter "s2"

    .prologue
    .line 123
    invoke-virtual {p1}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getSlotSpec()Lcom/google/android/voicesearch/actions/SlotSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actions/SlotSpec;->getIndex()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getSlotSpec()Lcom/google/android/voicesearch/actions/SlotSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/voicesearch/actions/SlotSpec;->getIndex()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    check-cast p1, Lcom/google/android/voicesearch/actioneditor/SlotView;

    .end local p1
    check-cast p2, Lcom/google/android/voicesearch/actioneditor/SlotView;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/voicesearch/actioneditor/SlotGroup$1;->compare(Lcom/google/android/voicesearch/actioneditor/SlotView;Lcom/google/android/voicesearch/actioneditor/SlotView;)I

    move-result v0

    return v0
.end method
