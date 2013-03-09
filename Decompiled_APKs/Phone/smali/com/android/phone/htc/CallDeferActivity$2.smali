.class Lcom/android/phone/htc/CallDeferActivity$2;
.super Ljava/lang/Object;
.source "CallDeferActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/htc/CallDeferActivity;->createReminderDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/htc/CallDeferActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/htc/CallDeferActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/phone/htc/CallDeferActivity$2;->this$0:Lcom/android/phone/htc/CallDeferActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 263
    move-object v0, p1

    check-cast v0, Lcom/htc/widget/HtcAlertDialog;

    .line 264
    .local v0, htcDialog:Lcom/htc/widget/HtcAlertDialog;
    iget-object v2, p0, Lcom/android/phone/htc/CallDeferActivity$2;->this$0:Lcom/android/phone/htc/CallDeferActivity;

    const v1, 0x7f080026

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcTimePicker;

    #calls: Lcom/android/phone/htc/CallDeferActivity;->onTimerSet(Lcom/htc/widget/HtcTimePicker;)V
    invoke-static {v2, v1}, Lcom/android/phone/htc/CallDeferActivity;->access$300(Lcom/android/phone/htc/CallDeferActivity;Lcom/htc/widget/HtcTimePicker;)V

    .line 265
    iget-object v1, p0, Lcom/android/phone/htc/CallDeferActivity$2;->this$0:Lcom/android/phone/htc/CallDeferActivity;

    #calls: Lcom/android/phone/htc/CallDeferActivity;->updateMessageAdapter()Lcom/android/phone/htc/CallDeferActivity$MessageAdapter;
    invoke-static {v1}, Lcom/android/phone/htc/CallDeferActivity;->access$400(Lcom/android/phone/htc/CallDeferActivity;)Lcom/android/phone/htc/CallDeferActivity$MessageAdapter;

    .line 266
    return-void
.end method
