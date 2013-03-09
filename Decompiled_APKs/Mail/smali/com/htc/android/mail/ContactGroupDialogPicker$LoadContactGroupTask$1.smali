.class Lcom/htc/android/mail/ContactGroupDialogPicker$LoadContactGroupTask$1;
.super Ljava/lang/Object;
.source "ContactGroupDialogPicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ContactGroupDialogPicker$LoadContactGroupTask;->onPostExecute([Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/mail/ContactGroupDialogPicker$LoadContactGroupTask;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ContactGroupDialogPicker$LoadContactGroupTask;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/htc/android/mail/ContactGroupDialogPicker$LoadContactGroupTask$1;->this$1:Lcom/htc/android/mail/ContactGroupDialogPicker$LoadContactGroupTask;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "childPosition"

    .prologue
    .line 81
    iget-object v1, p0, Lcom/htc/android/mail/ContactGroupDialogPicker$LoadContactGroupTask$1;->this$1:Lcom/htc/android/mail/ContactGroupDialogPicker$LoadContactGroupTask;

    iget-object v1, v1, Lcom/htc/android/mail/ContactGroupDialogPicker$LoadContactGroupTask;->this$0:Lcom/htc/android/mail/ContactGroupDialogPicker;

    #getter for: Lcom/htc/android/mail/ContactGroupDialogPicker;->mSelectedGroupIndex:I
    invoke-static {v1}, Lcom/htc/android/mail/ContactGroupDialogPicker;->access$200(Lcom/htc/android/mail/ContactGroupDialogPicker;)I

    move-result v1

    if-eq p2, v1, :cond_0

    .line 82
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 83
    .local v0, data:Landroid/content/Intent;
    const-string v1, "contactGroup"

    iget-object v2, p0, Lcom/htc/android/mail/ContactGroupDialogPicker$LoadContactGroupTask$1;->this$1:Lcom/htc/android/mail/ContactGroupDialogPicker$LoadContactGroupTask;

    iget-object v2, v2, Lcom/htc/android/mail/ContactGroupDialogPicker$LoadContactGroupTask;->this$0:Lcom/htc/android/mail/ContactGroupDialogPicker;

    #getter for: Lcom/htc/android/mail/ContactGroupDialogPicker;->mDecodedGroupName:[Ljava/lang/CharSequence;
    invoke-static {v2}, Lcom/htc/android/mail/ContactGroupDialogPicker;->access$100(Lcom/htc/android/mail/ContactGroupDialogPicker;)[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 84
    iget-object v1, p0, Lcom/htc/android/mail/ContactGroupDialogPicker$LoadContactGroupTask$1;->this$1:Lcom/htc/android/mail/ContactGroupDialogPicker$LoadContactGroupTask;

    iget-object v1, v1, Lcom/htc/android/mail/ContactGroupDialogPicker$LoadContactGroupTask;->this$0:Lcom/htc/android/mail/ContactGroupDialogPicker;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/htc/android/mail/ContactGroupDialogPicker;->setResult(ILandroid/content/Intent;)V

    .line 86
    .end local v0           #data:Landroid/content/Intent;
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 87
    iget-object v1, p0, Lcom/htc/android/mail/ContactGroupDialogPicker$LoadContactGroupTask$1;->this$1:Lcom/htc/android/mail/ContactGroupDialogPicker$LoadContactGroupTask;

    iget-object v1, v1, Lcom/htc/android/mail/ContactGroupDialogPicker$LoadContactGroupTask;->this$0:Lcom/htc/android/mail/ContactGroupDialogPicker;

    invoke-virtual {v1}, Lcom/htc/android/mail/ContactGroupDialogPicker;->finish()V

    .line 88
    return-void
.end method
