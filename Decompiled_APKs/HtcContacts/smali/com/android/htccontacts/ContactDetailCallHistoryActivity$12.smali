.class Lcom/android/htccontacts/ContactDetailCallHistoryActivity$12;
.super Ljava/lang/Object;
.source "ContactDetailCallHistoryActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1520
    iput-object p1, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$12;->this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1522
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1523
    packed-switch p2, :pswitch_data_0

    .line 1543
    :goto_0
    return-void

    .line 1525
    :pswitch_0
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$12;->this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mCallLogType:I
    invoke-static {v0, v1}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->access$3102(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;I)I

    .line 1526
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$12;->this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;

    #calls: Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->startAsyncQuery()V
    invoke-static {v0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->access$300(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)V

    goto :goto_0

    .line 1529
    :pswitch_1
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$12;->this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;

    const/4 v1, 0x1

    #setter for: Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mCallLogType:I
    invoke-static {v0, v1}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->access$3102(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;I)I

    .line 1530
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$12;->this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;

    #calls: Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->startAsyncQuery()V
    invoke-static {v0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->access$300(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)V

    goto :goto_0

    .line 1533
    :pswitch_2
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$12;->this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;

    const/4 v1, 0x2

    #setter for: Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mCallLogType:I
    invoke-static {v0, v1}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->access$3102(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;I)I

    .line 1534
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$12;->this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;

    #calls: Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->startAsyncQuery()V
    invoke-static {v0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->access$300(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)V

    goto :goto_0

    .line 1537
    :pswitch_3
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$12;->this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;

    const/4 v1, 0x3

    #setter for: Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mCallLogType:I
    invoke-static {v0, v1}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->access$3102(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;I)I

    .line 1538
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$12;->this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;

    #calls: Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->startAsyncQuery()V
    invoke-static {v0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->access$300(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)V

    goto :goto_0

    .line 1523
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
