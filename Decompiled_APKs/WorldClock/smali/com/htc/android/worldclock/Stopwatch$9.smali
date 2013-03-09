.class Lcom/htc/android/worldclock/Stopwatch$9;
.super Ljava/lang/Object;
.source "Stopwatch.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/Stopwatch;->updateButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/Stopwatch;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/Stopwatch;)V
    .locals 0
    .parameter

    .prologue
    .line 533
    iput-object p1, p0, Lcom/htc/android/worldclock/Stopwatch$9;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 536
    invoke-static {}, Lcom/htc/android/worldclock/Stopwatch;->access$1300()I

    move-result v1

    const/16 v2, 0x12c

    if-gt v1, v2, :cond_1

    .line 537
    iget-object v1, p0, Lcom/htc/android/worldclock/Stopwatch$9;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    #getter for: Lcom/htc/android/worldclock/Stopwatch;->mState:I
    invoke-static {v1}, Lcom/htc/android/worldclock/Stopwatch;->access$800(Lcom/htc/android/worldclock/Stopwatch;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 538
    iget-object v1, p0, Lcom/htc/android/worldclock/Stopwatch$9;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    const/4 v2, 0x3

    #setter for: Lcom/htc/android/worldclock/Stopwatch;->mLapState:I
    invoke-static {v1, v2}, Lcom/htc/android/worldclock/Stopwatch;->access$302(Lcom/htc/android/worldclock/Stopwatch;I)I

    .line 555
    :cond_0
    :goto_0
    return-void

    .line 541
    :cond_1
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/htc/android/worldclock/Stopwatch$9;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 542
    .local v0, alertDialogView:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 543
    iget-object v1, p0, Lcom/htc/android/worldclock/Stopwatch$9;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    const v2, 0x7f080088

    invoke-virtual {v1, v2}, Lcom/htc/android/worldclock/Stopwatch;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 544
    iget-object v1, p0, Lcom/htc/android/worldclock/Stopwatch$9;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    const v2, 0x7f080089

    invoke-virtual {v1, v2}, Lcom/htc/android/worldclock/Stopwatch;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 545
    const v1, 0x7f080016

    new-instance v2, Lcom/htc/android/worldclock/Stopwatch$9$1;

    invoke-direct {v2, p0}, Lcom/htc/android/worldclock/Stopwatch$9$1;-><init>(Lcom/htc/android/worldclock/Stopwatch$9;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 551
    iget-object v1, p0, Lcom/htc/android/worldclock/Stopwatch$9;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    #calls: Lcom/htc/android/worldclock/Stopwatch;->dismissHtcAlartDialog()V
    invoke-static {v1}, Lcom/htc/android/worldclock/Stopwatch;->access$1400(Lcom/htc/android/worldclock/Stopwatch;)V

    .line 552
    iget-object v1, p0, Lcom/htc/android/worldclock/Stopwatch$9;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    #setter for: Lcom/htc/android/worldclock/Stopwatch;->mHtcAlartDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v1, v2}, Lcom/htc/android/worldclock/Stopwatch;->access$1502(Lcom/htc/android/worldclock/Stopwatch;Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;

    .line 553
    iget-object v1, p0, Lcom/htc/android/worldclock/Stopwatch$9;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    #getter for: Lcom/htc/android/worldclock/Stopwatch;->mHtcAlartDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v1}, Lcom/htc/android/worldclock/Stopwatch;->access$1500(Lcom/htc/android/worldclock/Stopwatch;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto :goto_0
.end method
