.class Lcom/android/htccontacts/BrowseCallHistoryActivity$DialogClickListener;
.super Ljava/lang/Object;
.source "BrowseCallHistoryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/BrowseCallHistoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DialogClickListener"
.end annotation


# instance fields
.field number:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/BrowseCallHistoryActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "num"

    .prologue
    .line 2461
    iput-object p1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$DialogClickListener;->this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2463
    iput-object p2, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$DialogClickListener;->number:Ljava/lang/String;

    .line 2464
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 2468
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 2488
    :goto_0
    iget-object v1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$DialogClickListener;->this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;

    #getter for: Lcom/android/htccontacts/BrowseCallHistoryActivity;->mSaveToCotnactDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->access$2900(Lcom/android/htccontacts/BrowseCallHistoryActivity;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2490
    iget-object v1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$DialogClickListener;->this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;

    #getter for: Lcom/android/htccontacts/BrowseCallHistoryActivity;->mSaveToCotnactDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->access$2900(Lcom/android/htccontacts/BrowseCallHistoryActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 2493
    :cond_0
    iget-object v1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$DialogClickListener;->this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;

    const/4 v2, 0x0

    #setter for: Lcom/android/htccontacts/BrowseCallHistoryActivity;->mSaveToCotnactDialog:Landroid/app/Dialog;
    invoke-static {v1, v2}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->access$2902(Lcom/android/htccontacts/BrowseCallHistoryActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 2494
    return-void

    .line 2470
    :pswitch_0
    iget-object v1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$DialogClickListener;->number:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/provider/HtcContactsContract$Intents;->createInsertNumberIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2472
    .local v0, actionIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$DialogClickListener;->this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;

    invoke-virtual {v1, v0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2477
    .end local v0           #actionIntent:Landroid/content/Intent;
    :pswitch_1
    iget-object v1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$DialogClickListener;->number:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/provider/HtcContactsContract$Intents;->createUpdateNumberIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2479
    .restart local v0       #actionIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$DialogClickListener;->this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;

    invoke-virtual {v1, v0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2468
    nop

    :pswitch_data_0
    .packed-switch 0x7f07007d
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
