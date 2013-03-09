.class Lcom/google/android/voicesearch/actioneditor/CorrectionPopup$1;
.super Ljava/lang/Object;
.source "CorrectionPopup.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup$1;->this$0:Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "which"
    .parameter "idt"
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
    .line 69
    .local p1, av:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup$1;->this$0:Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;

    #getter for: Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->mListener:Lcom/google/android/voicesearch/actioneditor/CorrectionPopup$Listener;
    invoke-static {v0}, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->access$000(Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;)Lcom/google/android/voicesearch/actioneditor/CorrectionPopup$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup$1;->this$0:Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;

    #getter for: Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->mListener:Lcom/google/android/voicesearch/actioneditor/CorrectionPopup$Listener;
    invoke-static {v0}, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->access$000(Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;)Lcom/google/android/voicesearch/actioneditor/CorrectionPopup$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup$1;->this$0:Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;

    invoke-interface {v0, v1, p3}, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup$Listener;->onItemSelected(Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;I)V

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup$1;->this$0:Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->dismiss()V

    .line 73
    return-void
.end method
