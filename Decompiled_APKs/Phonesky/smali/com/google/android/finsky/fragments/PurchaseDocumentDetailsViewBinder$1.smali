.class Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder$1;
.super Ljava/lang/Object;
.source "PurchaseDocumentDetailsViewBinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder$1;->this$0:Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder$1;->this$0:Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;

    #getter for: Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->mLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->access$000(Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder$1;->this$0:Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;

    #getter for: Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->mLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->access$000(Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 73
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder$1;->this$0:Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;

    #getter for: Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->mButtonStrip:Lcom/google/android/finsky/layout/CustomRadioGroup;
    invoke-static {v0}, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->access$100(Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;)Lcom/google/android/finsky/layout/CustomRadioGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/CustomRadioGroup;->invalidate()V

    .line 75
    :cond_0
    return-void
.end method
