.class Lcom/android/htccontacts/app/ContactsListActivity$1;
.super Landroid/os/Handler;
.source "ContactsListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/app/ContactsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/app/ContactsListActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/app/ContactsListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 603
    iput-object p1, p0, Lcom/android/htccontacts/app/ContactsListActivity$1;->this$0:Lcom/android/htccontacts/app/ContactsListActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 606
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity$1;->this$0:Lcom/android/htccontacts/app/ContactsListActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/app/ContactsListActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 617
    :cond_0
    :goto_0
    return-void

    .line 609
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 611
    :pswitch_0
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity$1;->this$0:Lcom/android/htccontacts/app/ContactsListActivity;

    #getter for: Lcom/android/htccontacts/app/ContactsListActivity;->mIndicator:Lcom/android/htccontacts/indicator/IndicatorProcessor;
    invoke-static {v0}, Lcom/android/htccontacts/app/ContactsListActivity;->access$000(Lcom/android/htccontacts/app/ContactsListActivity;)Lcom/android/htccontacts/indicator/IndicatorProcessor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity$1;->this$0:Lcom/android/htccontacts/app/ContactsListActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/app/ContactsListActivity;->isIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity$1;->this$0:Lcom/android/htccontacts/app/ContactsListActivity;

    #getter for: Lcom/android/htccontacts/app/ContactsListActivity;->mIndicator:Lcom/android/htccontacts/indicator/IndicatorProcessor;
    invoke-static {v0}, Lcom/android/htccontacts/app/ContactsListActivity;->access$000(Lcom/android/htccontacts/app/ContactsListActivity;)Lcom/android/htccontacts/indicator/IndicatorProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/htccontacts/indicator/IndicatorProcessor;->startProcess()V

    goto :goto_0

    .line 609
    nop

    :pswitch_data_0
    .packed-switch 0x7d0
        :pswitch_0
    .end packed-switch
.end method
