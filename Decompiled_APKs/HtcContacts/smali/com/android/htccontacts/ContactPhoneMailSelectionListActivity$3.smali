.class Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity$3;
.super Landroid/os/Handler;
.source "ContactPhoneMailSelectionListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity$3;->this$0:Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 196
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 212
    :goto_0
    return-void

    .line 198
    :pswitch_0
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity$3;->this$0:Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;

    #calls: Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->initList()V
    invoke-static {v0}, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->access$200(Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;)V

    goto :goto_0

    .line 203
    :pswitch_1
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity$3;->this$0:Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->showQueryProgress()V

    goto :goto_0

    .line 207
    :pswitch_2
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity$3;->this$0:Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->dismissQueryProgress()V

    goto :goto_0

    .line 196
    :pswitch_data_0
    .packed-switch 0x1111
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
