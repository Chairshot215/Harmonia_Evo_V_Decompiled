.class Lcom/google/android/finsky/activities/OfferResolutionDialog$1;
.super Ljava/lang/Object;
.source "OfferResolutionDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/OfferResolutionDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/OfferResolutionDialog;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/OfferResolutionDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/google/android/finsky/activities/OfferResolutionDialog$1;->this$0:Lcom/google/android/finsky/activities/OfferResolutionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
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
    .line 157
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/google/android/finsky/activities/OfferResolutionDialog$1;->this$0:Lcom/google/android/finsky/activities/OfferResolutionDialog;

    #calls: Lcom/google/android/finsky/activities/OfferResolutionDialog;->syncOkButtonState()V
    invoke-static {v0}, Lcom/google/android/finsky/activities/OfferResolutionDialog;->access$000(Lcom/google/android/finsky/activities/OfferResolutionDialog;)V

    .line 158
    return-void
.end method
