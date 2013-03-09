.class Lcom/android/htccontacts/link/ContactLinkActivity$10;
.super Landroid/os/Handler;
.source "ContactLinkActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/link/ContactLinkActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/link/ContactLinkActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/link/ContactLinkActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1947
    iput-object p1, p0, Lcom/android/htccontacts/link/ContactLinkActivity$10;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1950
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1963
    :goto_0
    return-void

    .line 1954
    :pswitch_0
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity$10;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #calls: Lcom/android/htccontacts/link/ContactLinkActivity;->updateHeader()V
    invoke-static {v0}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$1300(Lcom/android/htccontacts/link/ContactLinkActivity;)V

    goto :goto_0

    .line 1959
    :pswitch_1
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity$10;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/link/ContactLinkActivity;->finish()V

    goto :goto_0

    .line 1950
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
