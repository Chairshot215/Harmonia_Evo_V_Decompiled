.class Lcom/android/htccontacts/ContactDetailCallHistoryActivity$DialogClickListener;
.super Ljava/lang/Object;
.source "ContactDetailCallHistoryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactDetailCallHistoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DialogClickListener"
.end annotation


# instance fields
.field number:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "num"

    .prologue
    .line 1446
    iput-object p1, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$DialogClickListener;->this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1448
    iput-object p2, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$DialogClickListener;->number:Ljava/lang/String;

    .line 1449
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 1453
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1473
    :goto_0
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$DialogClickListener;->this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mSaveToCotnactDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->access$3000(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1475
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$DialogClickListener;->this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mSaveToCotnactDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->access$3000(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 1478
    :cond_0
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$DialogClickListener;->this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;

    const/4 v2, 0x0

    #setter for: Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mSaveToCotnactDialog:Landroid/app/Dialog;
    invoke-static {v1, v2}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->access$3002(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1479
    return-void

    .line 1455
    :pswitch_0
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$DialogClickListener;->number:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/provider/HtcContactsContract$Intents;->createInsertNumberIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1457
    .local v0, actionIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$DialogClickListener;->this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;

    invoke-virtual {v1, v0, v2}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1462
    .end local v0           #actionIntent:Landroid/content/Intent;
    :pswitch_1
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$DialogClickListener;->number:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/provider/HtcContactsContract$Intents;->createUpdateNumberIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1464
    .restart local v0       #actionIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$DialogClickListener;->this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;

    invoke-virtual {v1, v0, v2}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1453
    :pswitch_data_0
    .packed-switch 0x7f07007d
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
