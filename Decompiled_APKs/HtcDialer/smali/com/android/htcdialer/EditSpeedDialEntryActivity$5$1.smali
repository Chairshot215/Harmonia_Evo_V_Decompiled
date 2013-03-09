.class Lcom/android/htcdialer/EditSpeedDialEntryActivity$5$1;
.super Ljava/lang/Object;
.source "EditSpeedDialEntryActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htcdialer/EditSpeedDialEntryActivity$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/htcdialer/EditSpeedDialEntryActivity$5;


# direct methods
.method constructor <init>(Lcom/android/htcdialer/EditSpeedDialEntryActivity$5;)V
    .locals 0
    .parameter

    .prologue
    .line 968
    iput-object p1, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity$5$1;->this$1:Lcom/android/htcdialer/EditSpeedDialEntryActivity$5;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 974
    iget-object v1, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity$5$1;->this$1:Lcom/android/htcdialer/EditSpeedDialEntryActivity$5;

    iget-object v1, v1, Lcom/android/htcdialer/EditSpeedDialEntryActivity$5;->this$0:Lcom/android/htcdialer/EditSpeedDialEntryActivity;

    iget-object v2, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity$5$1;->this$1:Lcom/android/htcdialer/EditSpeedDialEntryActivity$5;

    iget-object v2, v2, Lcom/android/htcdialer/EditSpeedDialEntryActivity$5;->this$0:Lcom/android/htcdialer/EditSpeedDialEntryActivity;

    #getter for: Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mMyPhoneCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->access$1300(Lcom/android/htcdialer/EditSpeedDialEntryActivity;)Landroid/database/Cursor;

    move-result-object v2

    #calls: Lcom/android/htcdialer/EditSpeedDialEntryActivity;->getPhoneNumberStringByPosition(Landroid/database/Cursor;I)Ljava/lang/CharSequence;
    invoke-static {v1, v2, p2}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->access$1400(Lcom/android/htcdialer/EditSpeedDialEntryActivity;Landroid/database/Cursor;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 975
    .local v0, number:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity$5$1;->this$1:Lcom/android/htcdialer/EditSpeedDialEntryActivity$5;

    iget-object v1, v1, Lcom/android/htcdialer/EditSpeedDialEntryActivity$5;->this$0:Lcom/android/htcdialer/EditSpeedDialEntryActivity;

    #getter for: Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mNumberButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->access$1500(Lcom/android/htcdialer/EditSpeedDialEntryActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 976
    iget-object v1, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity$5$1;->this$1:Lcom/android/htcdialer/EditSpeedDialEntryActivity$5;

    iget-object v1, v1, Lcom/android/htcdialer/EditSpeedDialEntryActivity$5;->this$0:Lcom/android/htcdialer/EditSpeedDialEntryActivity;

    #setter for: Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mSelectNumberPosition:I
    invoke-static {v1, p2}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->access$902(Lcom/android/htcdialer/EditSpeedDialEntryActivity;I)I

    .line 978
    iget-object v1, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity$5$1;->this$1:Lcom/android/htcdialer/EditSpeedDialEntryActivity$5;

    iget-object v1, v1, Lcom/android/htcdialer/EditSpeedDialEntryActivity$5;->this$0:Lcom/android/htcdialer/EditSpeedDialEntryActivity;

    #getter for: Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mMyPhoneCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->access$1300(Lcom/android/htcdialer/EditSpeedDialEntryActivity;)Landroid/database/Cursor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity$5$1;->this$1:Lcom/android/htcdialer/EditSpeedDialEntryActivity$5;

    iget-object v2, v2, Lcom/android/htcdialer/EditSpeedDialEntryActivity$5;->this$0:Lcom/android/htcdialer/EditSpeedDialEntryActivity;

    #getter for: Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mSelectNumberPosition:I
    invoke-static {v2}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->access$900(Lcom/android/htcdialer/EditSpeedDialEntryActivity;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 979
    iget-object v1, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity$5$1;->this$1:Lcom/android/htcdialer/EditSpeedDialEntryActivity$5;

    iget-object v1, v1, Lcom/android/htcdialer/EditSpeedDialEntryActivity$5;->this$0:Lcom/android/htcdialer/EditSpeedDialEntryActivity;

    iget-object v2, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity$5$1;->this$1:Lcom/android/htcdialer/EditSpeedDialEntryActivity$5;

    iget-object v2, v2, Lcom/android/htcdialer/EditSpeedDialEntryActivity$5;->this$0:Lcom/android/htcdialer/EditSpeedDialEntryActivity;

    #getter for: Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mMyPhoneCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->access$1300(Lcom/android/htcdialer/EditSpeedDialEntryActivity;)Landroid/database/Cursor;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    #setter for: Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mDefaultNumberId:J
    invoke-static {v1, v2, v3}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->access$1602(Lcom/android/htcdialer/EditSpeedDialEntryActivity;J)J

    .line 981
    iget-object v1, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity$5$1;->this$1:Lcom/android/htcdialer/EditSpeedDialEntryActivity$5;

    iget-object v1, v1, Lcom/android/htcdialer/EditSpeedDialEntryActivity$5;->this$0:Lcom/android/htcdialer/EditSpeedDialEntryActivity;

    #getter for: Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mSelectNumberPosition:I
    invoke-static {v1}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->access$900(Lcom/android/htcdialer/EditSpeedDialEntryActivity;)I

    move-result v1

    if-eq v1, v4, :cond_0

    iget-object v1, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity$5$1;->this$1:Lcom/android/htcdialer/EditSpeedDialEntryActivity$5;

    iget-object v1, v1, Lcom/android/htcdialer/EditSpeedDialEntryActivity$5;->this$0:Lcom/android/htcdialer/EditSpeedDialEntryActivity;

    #getter for: Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mSelectLocationPosition:I
    invoke-static {v1}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->access$800(Lcom/android/htcdialer/EditSpeedDialEntryActivity;)I

    move-result v1

    if-eq v1, v4, :cond_0

    .line 983
    iget-object v1, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity$5$1;->this$1:Lcom/android/htcdialer/EditSpeedDialEntryActivity$5;

    iget-object v1, v1, Lcom/android/htcdialer/EditSpeedDialEntryActivity$5;->this$0:Lcom/android/htcdialer/EditSpeedDialEntryActivity;

    #getter for: Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mSaveButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->access$1000(Lcom/android/htcdialer/EditSpeedDialEntryActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 984
    iget-object v1, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity$5$1;->this$1:Lcom/android/htcdialer/EditSpeedDialEntryActivity$5;

    iget-object v1, v1, Lcom/android/htcdialer/EditSpeedDialEntryActivity$5;->this$0:Lcom/android/htcdialer/EditSpeedDialEntryActivity;

    #getter for: Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mSaveButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->access$1000(Lcom/android/htcdialer/EditSpeedDialEntryActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setFocusable(Z)V

    .line 988
    :cond_0
    return-void
.end method
