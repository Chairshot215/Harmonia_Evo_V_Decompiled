.class Lcom/google/android/talk/AccountSelectionActivity$2;
.super Ljava/lang/Object;
.source "AccountSelectionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/AccountSelectionActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/AccountSelectionActivity;


# direct methods
.method constructor <init>(Lcom/google/android/talk/AccountSelectionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 610
    iput-object p1, p0, Lcom/google/android/talk/AccountSelectionActivity$2;->this$0:Lcom/google/android/talk/AccountSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 617
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity$2;->this$0:Lcom/google/android/talk/AccountSelectionActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/talk/AccountSelectionActivity;->setResult(I)V

    .line 618
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity$2;->this$0:Lcom/google/android/talk/AccountSelectionActivity;

    invoke-virtual {v0}, Lcom/google/android/talk/AccountSelectionActivity;->finish()V

    .line 619
    return-void
.end method
