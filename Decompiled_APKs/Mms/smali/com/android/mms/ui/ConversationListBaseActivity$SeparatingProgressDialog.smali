.class public Lcom/android/mms/ui/ConversationListBaseActivity$SeparatingProgressDialog;
.super Landroid/app/ProgressDialog;
.source "ConversationListBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationListBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SeparatingProgressDialog"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/mms/ui/ConversationListBaseActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ConversationListBaseActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 3280
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListBaseActivity$SeparatingProgressDialog;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    .line 3281
    invoke-direct {p0, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 3278
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity$SeparatingProgressDialog;->mContext:Landroid/content/Context;

    .line 3282
    iput-object p2, p0, Lcom/android/mms/ui/ConversationListBaseActivity$SeparatingProgressDialog;->mContext:Landroid/content/Context;

    .line 3283
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 3296
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 3305
    const-string v1, "ConversationListBaseActivity"

    const-string v2, "onBackPress"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3306
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity$SeparatingProgressDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3307
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x7f090356

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3308
    const v1, 0x7f0200d1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3309
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3310
    const v1, 0x7f090358

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3311
    const v1, 0x20c015f

    new-instance v2, Lcom/android/mms/ui/ConversationListBaseActivity$SeparatingProgressDialog$1;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ConversationListBaseActivity$SeparatingProgressDialog$1;-><init>(Lcom/android/mms/ui/ConversationListBaseActivity$SeparatingProgressDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3318
    const v1, 0x20c0164

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 3319
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 3320
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 3287
    const-string v0, "ConversationListBaseActivity"

    const-string v1, "onCreate() >>>>>>>>>>>>>>>>>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3288
    invoke-super {p0, p1}, Landroid/app/ProgressDialog;->onCreate(Landroid/os/Bundle;)V

    .line 3290
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListBaseActivity$SeparatingProgressDialog;->setIndeterminate(Z)V

    .line 3291
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity$SeparatingProgressDialog;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    const v1, 0x7f090357

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListBaseActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListBaseActivity$SeparatingProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 3292
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 3300
    const/4 v0, 0x0

    return v0
.end method
