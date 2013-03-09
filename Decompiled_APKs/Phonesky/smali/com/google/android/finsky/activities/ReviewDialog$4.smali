.class Lcom/google/android/finsky/activities/ReviewDialog$4;
.super Ljava/lang/Object;
.source "ReviewDialog.java"

# interfaces
.implements Landroid/widget/RatingBar$OnRatingBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/ReviewDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/ReviewDialog;

.field final synthetic val$ratingDescription:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/ReviewDialog;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/google/android/finsky/activities/ReviewDialog$4;->this$0:Lcom/google/android/finsky/activities/ReviewDialog;

    iput-object p2, p0, Lcom/google/android/finsky/activities/ReviewDialog$4;->val$ratingDescription:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRatingChanged(Landroid/widget/RatingBar;FZ)V
    .locals 2
    .parameter "bar"
    .parameter "rating"
    .parameter "fromTouch"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialog$4;->this$0:Lcom/google/android/finsky/activities/ReviewDialog;

    #calls: Lcom/google/android/finsky/activities/ReviewDialog;->syncOkButtonState()V
    invoke-static {v0}, Lcom/google/android/finsky/activities/ReviewDialog;->access$000(Lcom/google/android/finsky/activities/ReviewDialog;)V

    .line 217
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialog$4;->val$ratingDescription:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewDialog$4;->this$0:Lcom/google/android/finsky/activities/ReviewDialog;

    #calls: Lcom/google/android/finsky/activities/ReviewDialog;->getRatingDescription(F)I
    invoke-static {v1, p2}, Lcom/google/android/finsky/activities/ReviewDialog;->access$900(Lcom/google/android/finsky/activities/ReviewDialog;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 218
    return-void
.end method
