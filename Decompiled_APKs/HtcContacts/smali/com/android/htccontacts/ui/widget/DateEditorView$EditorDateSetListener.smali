.class Lcom/android/htccontacts/ui/widget/DateEditorView$EditorDateSetListener;
.super Ljava/lang/Object;
.source "DateEditorView.java"

# interfaces
.implements Lcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ui/widget/DateEditorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EditorDateSetListener"
.end annotation


# instance fields
.field ref:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/ui/widget/DateEditorView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ui/widget/DateEditorView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 642
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 643
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/DateEditorView$EditorDateSetListener;->ref:Ljava/lang/ref/WeakReference;

    .line 644
    return-void
.end method


# virtual methods
.method public onDateSet(Lcom/htc/widget/HtcDatePicker;III)V
    .locals 2
    .parameter "view"
    .parameter "year"
    .parameter "month"
    .parameter "monthDay"

    .prologue
    .line 647
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/DateEditorView$EditorDateSetListener;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/ui/widget/DateEditorView;

    .line 648
    .local v0, editor:Lcom/android/htccontacts/ui/widget/DateEditorView;
    if-eqz v0, :cond_0

    .line 649
    iget-object v1, v0, Lcom/android/htccontacts/ui/widget/DateEditorView;->mState:Lcom/android/htccontacts/model/EntityDelta;

    invoke-virtual {v0, p2, p3, p4, v1}, Lcom/android/htccontacts/ui/widget/DateEditorView;->setDate(IIILcom/android/htccontacts/model/EntityDelta;)V

    .line 651
    :cond_0
    return-void
.end method
