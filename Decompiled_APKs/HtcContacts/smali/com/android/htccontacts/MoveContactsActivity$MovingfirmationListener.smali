.class Lcom/android/htccontacts/MoveContactsActivity$MovingfirmationListener;
.super Ljava/lang/Object;
.source "MoveContactsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/MoveContactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MovingfirmationListener"
.end annotation


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/htccontacts/MoveContactsActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/MoveContactsActivity;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "contentResolver"

    .prologue
    .line 731
    iput-object p1, p0, Lcom/android/htccontacts/MoveContactsActivity$MovingfirmationListener;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 732
    iput-object p2, p0, Lcom/android/htccontacts/MoveContactsActivity$MovingfirmationListener;->mContentResolver:Landroid/content/ContentResolver;

    .line 733
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 736
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 737
    iget-object v0, p0, Lcom/android/htccontacts/MoveContactsActivity$MovingfirmationListener;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    new-instance v1, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;

    iget-object v2, p0, Lcom/android/htccontacts/MoveContactsActivity$MovingfirmationListener;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    iget-object v3, p0, Lcom/android/htccontacts/MoveContactsActivity$MovingfirmationListener;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v1, v2, v3}, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;-><init>(Lcom/android/htccontacts/MoveContactsActivity;Landroid/content/ContentResolver;)V

    #setter for: Lcom/android/htccontacts/MoveContactsActivity;->mActualMovingThread:Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;
    invoke-static {v0, v1}, Lcom/android/htccontacts/MoveContactsActivity;->access$1302(Lcom/android/htccontacts/MoveContactsActivity;Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;)Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;

    .line 738
    iget-object v0, p0, Lcom/android/htccontacts/MoveContactsActivity$MovingfirmationListener;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    #getter for: Lcom/android/htccontacts/MoveContactsActivity;->mActualMovingThread:Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;
    invoke-static {v0}, Lcom/android/htccontacts/MoveContactsActivity;->access$1300(Lcom/android/htccontacts/MoveContactsActivity;)Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/htccontacts/MoveContactsActivity$ActualMovingThread;->start()V

    .line 739
    iget-object v0, p0, Lcom/android/htccontacts/MoveContactsActivity$MovingfirmationListener;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    const v1, 0x7f070011

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/MoveContactsActivity;->showDialog(I)V

    .line 741
    :cond_0
    return-void
.end method
