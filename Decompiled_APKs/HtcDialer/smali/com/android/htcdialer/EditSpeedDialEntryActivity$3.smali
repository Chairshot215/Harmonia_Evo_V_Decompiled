.class Lcom/android/htcdialer/EditSpeedDialEntryActivity$3;
.super Ljava/lang/Object;
.source "EditSpeedDialEntryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htcdialer/EditSpeedDialEntryActivity;->showToast(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htcdialer/EditSpeedDialEntryActivity;

.field final synthetic val$stringId:I


# direct methods
.method constructor <init>(Lcom/android/htcdialer/EditSpeedDialEntryActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 639
    iput-object p1, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity$3;->this$0:Lcom/android/htcdialer/EditSpeedDialEntryActivity;

    iput p2, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity$3;->val$stringId:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 642
    iget-object v0, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity$3;->this$0:Lcom/android/htcdialer/EditSpeedDialEntryActivity;

    iget v1, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity$3;->val$stringId:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 643
    return-void
.end method
