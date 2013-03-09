.class Lcom/android/htccontacts/ContactDetailCommunicationActivity$1;
.super Ljava/lang/Object;
.source "ContactDetailCommunicationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ContactDetailCommunicationActivity;->editNumberWithIpDialPrefix(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

.field final synthetic val$number:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ContactDetailCommunicationActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 446
    iput-object p1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$1;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    iput-object p2, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$1;->val$number:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 448
    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$1;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mIpDialList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->access$000(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 449
    .local v1, prefix:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$1;->val$number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 450
    .local v0, ipDialNumber:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$1;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    invoke-virtual {v2, v0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->editNumberBeforeCall(Ljava/lang/String;)V

    .line 451
    return-void
.end method
