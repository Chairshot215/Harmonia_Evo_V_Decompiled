.class Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$4;
.super Ljava/lang/Object;
.source "AddCreditCardFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->setupWidgets(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 354
    iput-object p1, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$4;->this$0:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 357
    const v1, 0x7f04000c

    const v2, 0x7f07019f

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->newInstanceWithLayout(III)Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v0

    .line 360
    .local v0, dialog:Lcom/google/android/finsky/activities/SimpleAlertDialog;
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$4;->this$0:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "cvc_popup"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 361
    return-void
.end method
