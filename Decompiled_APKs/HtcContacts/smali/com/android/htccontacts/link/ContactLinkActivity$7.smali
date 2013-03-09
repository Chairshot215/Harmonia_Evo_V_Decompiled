.class Lcom/android/htccontacts/link/ContactLinkActivity$7;
.super Ljava/lang/Object;
.source "ContactLinkActivity.java"

# interfaces
.implements Lcom/android/htccontacts/link/ContactLinkActivity$AfterLinkOneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/link/ContactLinkActivity;->showAsyncProgressAfterLinkOne(JIJ)V
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
    .line 642
    iput-object p1, p0, Lcom/android/htccontacts/link/ContactLinkActivity$7;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAfterLinkOne()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 646
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity$7;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/link/ContactLinkActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 647
    const-string v0, "ContactLinkActivity"

    const-string v1, "---------after link one"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity$7;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #calls: Lcom/android/htccontacts/link/ContactLinkActivity;->updateHeader()V
    invoke-static {v0}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$1300(Lcom/android/htccontacts/link/ContactLinkActivity;)V

    .line 649
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity$7;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/link/ContactLinkActivity;->startAsyncQurey()V

    .line 650
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity$7;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    iget-object v0, v0, Lcom/android/htccontacts/link/ContactLinkActivity;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 651
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity$7;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    iget-object v0, v0, Lcom/android/htccontacts/link/ContactLinkActivity;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooterButton;->setFocusable(Z)V

    .line 652
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity$7;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/htccontacts/link/ContactLinkActivity;->isLinkedOneNow:Z
    invoke-static {v0, v1}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$1402(Lcom/android/htccontacts/link/ContactLinkActivity;Z)Z

    .line 654
    :cond_0
    return-void
.end method
