.class Lcom/htc/sdcardwizard/WaitingDialogActivity$1;
.super Lcom/htc/app/HtcProgressDialog;
.source "WaitingDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sdcardwizard/WaitingDialogActivity;->showWaitingDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sdcardwizard/WaitingDialogActivity;


# direct methods
.method constructor <init>(Lcom/htc/sdcardwizard/WaitingDialogActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/htc/sdcardwizard/WaitingDialogActivity$1;->this$0:Lcom/htc/sdcardwizard/WaitingDialogActivity;

    invoke-direct {p0, p2}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 28
    const/4 v0, 0x1

    return v0
.end method
