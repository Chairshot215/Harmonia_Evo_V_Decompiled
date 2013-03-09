.class Lcom/android/htccontacts/ContactDetailCommunicationActivity$DialogClickListener;
.super Ljava/lang/Object;
.source "ContactDetailCommunicationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactDetailCommunicationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DialogClickListener"
.end annotation


# instance fields
.field number:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ContactDetailCommunicationActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "num"

    .prologue
    .line 2408
    iput-object p1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$DialogClickListener;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2410
    iput-object p2, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$DialogClickListener;->number:Ljava/lang/String;

    .line 2411
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 2415
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 2435
    :goto_0
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$DialogClickListener;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mSaveToCotnactDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->access$3900(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2437
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$DialogClickListener;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mSaveToCotnactDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->access$3900(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 2440
    :cond_0
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$DialogClickListener;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    const/4 v2, 0x0

    #setter for: Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mSaveToCotnactDialog:Landroid/app/Dialog;
    invoke-static {v1, v2}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->access$3902(Lcom/android/htccontacts/ContactDetailCommunicationActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 2441
    return-void

    .line 2417
    :pswitch_0
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$DialogClickListener;->number:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/provider/HtcContactsContract$Intents;->createInsertNumberIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2419
    .local v0, actionIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$DialogClickListener;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    invoke-virtual {v1, v0, v2}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 2424
    .end local v0           #actionIntent:Landroid/content/Intent;
    :pswitch_1
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$DialogClickListener;->number:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/provider/HtcContactsContract$Intents;->createUpdateNumberIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2426
    .restart local v0       #actionIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$DialogClickListener;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    invoke-virtual {v1, v0, v2}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 2415
    :pswitch_data_0
    .packed-switch 0x7f07007d
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
