.class Lcom/android/htccontacts/HtcViewUnknownContactActivity$DialogClickListener;
.super Ljava/lang/Object;
.source "HtcViewUnknownContactActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/HtcViewUnknownContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DialogClickListener"
.end annotation


# instance fields
.field number:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/htccontacts/HtcViewUnknownContactActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/HtcViewUnknownContactActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "num"

    .prologue
    .line 324
    iput-object p1, p0, Lcom/android/htccontacts/HtcViewUnknownContactActivity$DialogClickListener;->this$0:Lcom/android/htccontacts/HtcViewUnknownContactActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 326
    iput-object p2, p0, Lcom/android/htccontacts/HtcViewUnknownContactActivity$DialogClickListener;->number:Ljava/lang/String;

    .line 327
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x2

    .line 331
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 351
    :goto_0
    iget-object v1, p0, Lcom/android/htccontacts/HtcViewUnknownContactActivity$DialogClickListener;->this$0:Lcom/android/htccontacts/HtcViewUnknownContactActivity;

    #getter for: Lcom/android/htccontacts/HtcViewUnknownContactActivity;->mSaveToCotnactDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->access$200(Lcom/android/htccontacts/HtcViewUnknownContactActivity;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 353
    iget-object v1, p0, Lcom/android/htccontacts/HtcViewUnknownContactActivity$DialogClickListener;->this$0:Lcom/android/htccontacts/HtcViewUnknownContactActivity;

    #getter for: Lcom/android/htccontacts/HtcViewUnknownContactActivity;->mSaveToCotnactDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->access$200(Lcom/android/htccontacts/HtcViewUnknownContactActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 356
    :cond_0
    iget-object v1, p0, Lcom/android/htccontacts/HtcViewUnknownContactActivity$DialogClickListener;->this$0:Lcom/android/htccontacts/HtcViewUnknownContactActivity;

    const/4 v2, 0x0

    #setter for: Lcom/android/htccontacts/HtcViewUnknownContactActivity;->mSaveToCotnactDialog:Landroid/app/Dialog;
    invoke-static {v1, v2}, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->access$202(Lcom/android/htccontacts/HtcViewUnknownContactActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 357
    return-void

    .line 333
    :pswitch_0
    iget-object v1, p0, Lcom/android/htccontacts/HtcViewUnknownContactActivity$DialogClickListener;->number:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/provider/HtcContactsContract$Intents;->createInsertNumberIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 335
    .local v0, actionIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/htccontacts/HtcViewUnknownContactActivity$DialogClickListener;->this$0:Lcom/android/htccontacts/HtcViewUnknownContactActivity;

    invoke-virtual {v1, v0, v2}, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 340
    .end local v0           #actionIntent:Landroid/content/Intent;
    :pswitch_1
    iget-object v1, p0, Lcom/android/htccontacts/HtcViewUnknownContactActivity$DialogClickListener;->number:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/provider/HtcContactsContract$Intents;->createUpdateNumberIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 342
    .restart local v0       #actionIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/htccontacts/HtcViewUnknownContactActivity$DialogClickListener;->this$0:Lcom/android/htccontacts/HtcViewUnknownContactActivity;

    invoke-virtual {v1, v0, v2}, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 331
    :pswitch_data_0
    .packed-switch 0x7f07007d
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
