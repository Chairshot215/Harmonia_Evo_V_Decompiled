.class Lcom/google/android/finsky/activities/RateReviewDialog$1;
.super Ljava/lang/Object;
.source "RateReviewDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/RateReviewDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/RateReviewDialog;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/RateReviewDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/google/android/finsky/activities/RateReviewDialog$1;->this$0:Lcom/google/android/finsky/activities/RateReviewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "arg0"
    .parameter "newSelection"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/finsky/activities/RateReviewDialog$1;->this$0:Lcom/google/android/finsky/activities/RateReviewDialog;

    #calls: Lcom/google/android/finsky/activities/RateReviewDialog;->setRating(I)V
    invoke-static {v0, p2}, Lcom/google/android/finsky/activities/RateReviewDialog;->access$200(Lcom/google/android/finsky/activities/RateReviewDialog;I)V

    .line 121
    iget-object v0, p0, Lcom/google/android/finsky/activities/RateReviewDialog$1;->this$0:Lcom/google/android/finsky/activities/RateReviewDialog;

    #calls: Lcom/google/android/finsky/activities/RateReviewDialog;->syncOkButtonState()V
    invoke-static {v0}, Lcom/google/android/finsky/activities/RateReviewDialog;->access$300(Lcom/google/android/finsky/activities/RateReviewDialog;)V

    .line 122
    return-void
.end method
