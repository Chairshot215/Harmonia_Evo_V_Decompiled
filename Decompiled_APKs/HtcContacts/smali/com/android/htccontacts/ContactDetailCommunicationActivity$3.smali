.class Lcom/android/htccontacts/ContactDetailCommunicationActivity$3;
.super Landroid/database/ContentObserver;
.source "ContactDetailCommunicationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactDetailCommunicationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ContactDetailCommunicationActivity;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 523
    iput-object p1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$3;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 529
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$3;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    #getter for: Lcom/android/htccontacts/app/BaseActivity;->mIsForegroundActivity:Z
    invoke-static {v0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->access$400(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$3;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    #calls: Lcom/android/htccontacts/ContactDetailCommunicationActivity;->startMessageAsyncQuery()V
    invoke-static {v0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->access$500(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)V

    .line 535
    :goto_0
    return-void

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$3;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    const/4 v1, 0x1

    #setter for: Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mIsDirty:Z
    invoke-static {v0, v1}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->access$302(Lcom/android/htccontacts/ContactDetailCommunicationActivity;Z)Z

    goto :goto_0
.end method
