.class Lcom/android/htccontacts/link/ContactLinkActivity$11;
.super Ljava/lang/Object;
.source "ContactLinkActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 1966
    iput-object p1, p0, Lcom/android/htccontacts/link/ContactLinkActivity$11;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1968
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity$11;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #calls: Lcom/android/htccontacts/link/ContactLinkActivity;->processIntent()V
    invoke-static {v0}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$5100(Lcom/android/htccontacts/link/ContactLinkActivity;)V

    .line 1970
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity$11;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #getter for: Lcom/android/htccontacts/link/ContactLinkActivity;->mPeople:Lcom/android/htccontacts/link/MergeContact;
    invoke-static {v0}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$3400(Lcom/android/htccontacts/link/ContactLinkActivity;)Lcom/android/htccontacts/link/MergeContact;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity$11;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #getter for: Lcom/android/htccontacts/link/ContactLinkActivity;->mPeople:Lcom/android/htccontacts/link/MergeContact;
    invoke-static {v0}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$3400(Lcom/android/htccontacts/link/ContactLinkActivity;)Lcom/android/htccontacts/link/MergeContact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/htccontacts/link/MergeContact;->getContactId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1971
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity$11;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/link/ContactLinkActivity;->startAsyncQurey()V

    .line 1972
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity$11;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #getter for: Lcom/android/htccontacts/link/ContactLinkActivity;->mUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$1200(Lcom/android/htccontacts/link/ContactLinkActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1976
    :goto_0
    return-void

    .line 1974
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity$11;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #calls: Lcom/android/htccontacts/link/ContactLinkActivity;->handleContactNotFound()V
    invoke-static {v0}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$5200(Lcom/android/htccontacts/link/ContactLinkActivity;)V

    goto :goto_0
.end method
