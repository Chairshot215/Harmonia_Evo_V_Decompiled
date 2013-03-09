.class Lcom/android/htcdialer/EditSpeedDialEntryActivity$1;
.super Ljava/lang/Object;
.source "EditSpeedDialEntryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htcdialer/EditSpeedDialEntryActivity;->initActionButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htcdialer/EditSpeedDialEntryActivity;


# direct methods
.method constructor <init>(Lcom/android/htcdialer/EditSpeedDialEntryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 606
    iput-object p1, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity$1;->this$0:Lcom/android/htcdialer/EditSpeedDialEntryActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 608
    iget-object v0, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity$1;->this$0:Lcom/android/htcdialer/EditSpeedDialEntryActivity;

    #calls: Lcom/android/htcdialer/EditSpeedDialEntryActivity;->save()Z
    invoke-static {v0}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->access$000(Lcom/android/htcdialer/EditSpeedDialEntryActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 613
    :goto_0
    iget-object v0, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity$1;->this$0:Lcom/android/htcdialer/EditSpeedDialEntryActivity;

    #getter for: Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mNeedResult:Z
    invoke-static {v0}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->access$200(Lcom/android/htcdialer/EditSpeedDialEntryActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity$1;->this$0:Lcom/android/htcdialer/EditSpeedDialEntryActivity;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->setResult(ILandroid/content/Intent;)V

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity$1;->this$0:Lcom/android/htcdialer/EditSpeedDialEntryActivity;

    invoke-virtual {v0}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->finish()V

    .line 618
    return-void

    .line 610
    :cond_1
    iget-object v0, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity$1;->this$0:Lcom/android/htcdialer/EditSpeedDialEntryActivity;

    #calls: Lcom/android/htcdialer/EditSpeedDialEntryActivity;->saveFailHandling()V
    invoke-static {v0}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->access$100(Lcom/android/htcdialer/EditSpeedDialEntryActivity;)V

    goto :goto_0
.end method
