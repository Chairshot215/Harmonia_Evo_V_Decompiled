.class Lcom/android/htcdialer/Dialer$13;
.super Ljava/lang/Object;
.source "Dialer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htcdialer/Dialer;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htcdialer/Dialer;

.field final synthetic val$matches:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/htcdialer/Dialer;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2693
    iput-object p1, p0, Lcom/android/htcdialer/Dialer$13;->this$0:Lcom/android/htcdialer/Dialer;

    iput-object p2, p0, Lcom/android/htcdialer/Dialer$13;->val$matches:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2695
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$13;->this$0:Lcom/android/htcdialer/Dialer;

    #getter for: Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;
    invoke-static {v0}, Lcom/android/htcdialer/Dialer;->access$700(Lcom/android/htcdialer/Dialer;)Lcom/android/htcdialer/widget/AccumulatorText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2696
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$13;->this$0:Lcom/android/htcdialer/Dialer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/htcdialer/Dialer;->setSearchMode(I)V

    .line 2699
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$13;->this$0:Lcom/android/htcdialer/Dialer;

    #getter for: Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;
    invoke-static {v0}, Lcom/android/htcdialer/Dialer;->access$700(Lcom/android/htcdialer/Dialer;)Lcom/android/htcdialer/widget/AccumulatorText;

    move-result-object v1

    iget-object v0, p0, Lcom/android/htcdialer/Dialer$13;->val$matches:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/android/htcdialer/widget/AccumulatorText;->setText(Ljava/lang/CharSequence;)V

    .line 2701
    :cond_0
    return-void
.end method
