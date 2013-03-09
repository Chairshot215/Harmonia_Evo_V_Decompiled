.class Lcom/android/htccontacts/ui/EditExchangeNameActivity$3;
.super Ljava/lang/Object;
.source "EditExchangeNameActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ui/EditExchangeNameActivity;->createSelectionDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ui/EditExchangeNameActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ui/EditExchangeNameActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 431
    iput-object p1, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity$3;->this$0:Lcom/android/htccontacts/ui/EditExchangeNameActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity$3;->this$0:Lcom/android/htccontacts/ui/EditExchangeNameActivity;

    const/16 v1, 0x1110

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->removeDialog(I)V

    .line 435
    return-void
.end method
