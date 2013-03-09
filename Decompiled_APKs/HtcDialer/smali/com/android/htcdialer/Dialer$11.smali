.class Lcom/android/htcdialer/Dialer$11;
.super Ljava/lang/Object;
.source "Dialer.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htcdialer/Dialer;->setListenersForKeypadControl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htcdialer/Dialer;


# direct methods
.method constructor <init>(Lcom/android/htcdialer/Dialer;)V
    .locals 0
    .parameter

    .prologue
    .line 2192
    iput-object p1, p0, Lcom/android/htcdialer/Dialer$11;->this$0:Lcom/android/htcdialer/Dialer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 2204
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$11;->this$0:Lcom/android/htcdialer/Dialer;

    iget-boolean v0, v0, Lcom/android/htcdialer/Dialer;->mIsEditMode:Z

    if-eqz v0, :cond_1

    .line 2212
    :cond_0
    :goto_0
    return-void

    .line 2208
    :cond_1
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$11;->this$0:Lcom/android/htcdialer/Dialer;

    #getter for: Lcom/android/htcdialer/Dialer;->mKeypadLocked:Z
    invoke-static {v0}, Lcom/android/htcdialer/Dialer;->access$2200(Lcom/android/htcdialer/Dialer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2209
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$11;->this$0:Lcom/android/htcdialer/Dialer;

    #calls: Lcom/android/htcdialer/Dialer;->hideDialpad()V
    invoke-static {v0}, Lcom/android/htcdialer/Dialer;->access$1200(Lcom/android/htcdialer/Dialer;)V

    .line 2210
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$11;->this$0:Lcom/android/htcdialer/Dialer;

    const/4 v1, 0x0

    #calls: Lcom/android/htcdialer/Dialer;->updateUserSelection(Z)V
    invoke-static {v0, v1}, Lcom/android/htcdialer/Dialer;->access$2300(Lcom/android/htcdialer/Dialer;Z)V

    goto :goto_0
.end method

.method public onNothingSelected(Lcom/htc/widget/HtcAdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 2218
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    return-void
.end method
