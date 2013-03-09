.class Lcom/android/htccontacts/HtcViewContactDetailActivity$3;
.super Ljava/lang/Object;
.source "HtcViewContactDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/HtcViewContactDetailActivity;->buildCompositeSendMessageEntries(Ljava/util/ArrayList;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/HtcViewContactDetailActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/HtcViewContactDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 3375
    iput-object p1, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$3;->this$0:Lcom/android/htccontacts/HtcViewContactDetailActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 3377
    const-string v1, "HtcViewContactDetailActivity"

    const-string v2, "onClick of onClickListenerSendMsg"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3378
    iget-object v1, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$3;->this$0:Lcom/android/htccontacts/HtcViewContactDetailActivity;

    #getter for: Lcom/android/htccontacts/HtcViewContactDetailActivity;->mCompositeSendMsgDialogData:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->access$700(Lcom/android/htccontacts/HtcViewContactDetailActivity;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$3;->this$0:Lcom/android/htccontacts/HtcViewContactDetailActivity;

    #getter for: Lcom/android/htccontacts/HtcViewContactDetailActivity;->mCompositeSendMsgDialogData:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->access$700(Lcom/android/htccontacts/HtcViewContactDetailActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3379
    iget-object v1, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$3;->this$0:Lcom/android/htccontacts/HtcViewContactDetailActivity;

    #calls: Lcom/android/htccontacts/HtcViewContactDetailActivity;->createCompositeSendMsgDialog()Landroid/app/Dialog;
    invoke-static {v1}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->access$800(Lcom/android/htccontacts/HtcViewContactDetailActivity;)Landroid/app/Dialog;

    move-result-object v0

    .line 3380
    .local v0, d:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 3381
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 3382
    iget-object v1, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$3;->this$0:Lcom/android/htccontacts/HtcViewContactDetailActivity;

    invoke-virtual {v1, v0}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->manageDialog(Landroid/app/Dialog;)V

    .line 3385
    .end local v0           #d:Landroid/app/Dialog;
    :cond_0
    return-void
.end method
