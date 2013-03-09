.class Lcom/android/htccontacts/MyPhonebookImportSIMActivity$2;
.super Landroid/os/Handler;
.source "MyPhonebookImportSIMActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/MyPhonebookImportSIMActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/MyPhonebookImportSIMActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/MyPhonebookImportSIMActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity$2;->this$0:Lcom/android/htccontacts/MyPhonebookImportSIMActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 73
    iget v0, p1, Landroid/os/Message;->what:I

    .line 74
    .local v0, msgType:I
    packed-switch v0, :pswitch_data_0

    .line 113
    :goto_0
    return-void

    .line 76
    :pswitch_0
    iget-object v1, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity$2;->this$0:Lcom/android/htccontacts/MyPhonebookImportSIMActivity;

    #calls: Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->checkSIMChanged()V
    invoke-static {v1}, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->access$100(Lcom/android/htccontacts/MyPhonebookImportSIMActivity;)V

    goto :goto_0

    .line 79
    :pswitch_1
    iget-object v1, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity$2;->this$0:Lcom/android/htccontacts/MyPhonebookImportSIMActivity;

    #calls: Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->checkFirstSync()V
    invoke-static {v1}, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->access$200(Lcom/android/htccontacts/MyPhonebookImportSIMActivity;)V

    goto :goto_0

    .line 82
    :pswitch_2
    new-instance v1, Lcom/android/htccontacts/MyPhonebookImportSIMActivity$2$1;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/MyPhonebookImportSIMActivity$2$1;-><init>(Lcom/android/htccontacts/MyPhonebookImportSIMActivity$2;)V

    invoke-virtual {v1}, Lcom/android/htccontacts/MyPhonebookImportSIMActivity$2$1;->start()V

    goto :goto_0

    .line 90
    :pswitch_3
    iget-object v1, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity$2;->this$0:Lcom/android/htccontacts/MyPhonebookImportSIMActivity;

    #calls: Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->showDeleteContactsDialog()V
    invoke-static {v1}, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->access$400(Lcom/android/htccontacts/MyPhonebookImportSIMActivity;)V

    goto :goto_0

    .line 94
    :pswitch_4
    iget-object v1, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity$2;->this$0:Lcom/android/htccontacts/MyPhonebookImportSIMActivity;

    #calls: Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->showDeleteFinishDialog()V
    invoke-static {v1}, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->access$500(Lcom/android/htccontacts/MyPhonebookImportSIMActivity;)V

    goto :goto_0

    .line 98
    :pswitch_5
    new-instance v1, Lcom/android/htccontacts/MyPhonebookImportSIMActivity$2$2;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/MyPhonebookImportSIMActivity$2$2;-><init>(Lcom/android/htccontacts/MyPhonebookImportSIMActivity$2;)V

    invoke-virtual {v1}, Lcom/android/htccontacts/MyPhonebookImportSIMActivity$2$2;->start()V

    goto :goto_0

    .line 107
    :pswitch_6
    iget-object v1, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity$2;->this$0:Lcom/android/htccontacts/MyPhonebookImportSIMActivity;

    #calls: Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->showImportSIMContactsDialog()V
    invoke-static {v1}, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->access$700(Lcom/android/htccontacts/MyPhonebookImportSIMActivity;)V

    goto :goto_0

    .line 110
    :pswitch_7
    iget-object v1, p0, Lcom/android/htccontacts/MyPhonebookImportSIMActivity$2;->this$0:Lcom/android/htccontacts/MyPhonebookImportSIMActivity;

    invoke-virtual {v1}, Lcom/android/htccontacts/MyPhonebookImportSIMActivity;->finish()V

    goto :goto_0

    .line 74
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
