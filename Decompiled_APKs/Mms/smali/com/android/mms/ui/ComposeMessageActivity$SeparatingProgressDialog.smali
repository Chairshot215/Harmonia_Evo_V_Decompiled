.class public Lcom/android/mms/ui/ComposeMessageActivity$SeparatingProgressDialog;
.super Landroid/app/ProgressDialog;
.source "ComposeMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SeparatingProgressDialog"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 10420
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$SeparatingProgressDialog;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    .line 10421
    invoke-direct {p0, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 10418
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$SeparatingProgressDialog;->mContext:Landroid/content/Context;

    .line 10422
    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$SeparatingProgressDialog;->mContext:Landroid/content/Context;

    .line 10423
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 10436
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 10445
    const-string v1, "ComposeMessageActivity"

    const-string v2, "onBackPress"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10446
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$SeparatingProgressDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 10447
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x7f090356

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 10448
    const v1, 0x7f0200d1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 10449
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 10450
    const v1, 0x7f090358

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 10451
    const v1, 0x20c015f

    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$SeparatingProgressDialog$1;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ComposeMessageActivity$SeparatingProgressDialog$1;-><init>(Lcom/android/mms/ui/ComposeMessageActivity$SeparatingProgressDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 10458
    const v1, 0x20c0164

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 10459
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 10460
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 10427
    const-string v0, "ComposeMessageActivity"

    const-string v1, "onCreate() >>>>>>>>>>>>>>>>>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10428
    invoke-super {p0, p1}, Landroid/app/ProgressDialog;->onCreate(Landroid/os/Bundle;)V

    .line 10430
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity$SeparatingProgressDialog;->setIndeterminate(Z)V

    .line 10431
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$SeparatingProgressDialog;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const v1, 0x7f090357

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity$SeparatingProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 10432
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 10440
    const/4 v0, 0x0

    return v0
.end method
