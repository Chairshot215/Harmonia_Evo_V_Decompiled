.class Lcom/android/phone/htc/CallDeferActivity$3;
.super Ljava/lang/Object;
.source "CallDeferActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/htc/CallDeferActivity;->createCustomMsgDialog()Landroid/app/Dialog;
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
    .line 309
    iput-object p1, p0, Lcom/android/phone/htc/CallDeferActivity$3;->this$0:Lcom/android/phone/htc/CallDeferActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 312
    move-object v0, p1

    check-cast v0, Lcom/htc/widget/HtcAlertDialog;

    .line 313
    .local v0, htcDialog:Lcom/htc/widget/HtcAlertDialog;
    const v3, 0x1020014

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 315
    .local v1, tv:Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 316
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 317
    .local v2, userInput:Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 318
    iget-object v3, p0, Lcom/android/phone/htc/CallDeferActivity$3;->this$0:Lcom/android/phone/htc/CallDeferActivity;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    #setter for: Lcom/android/phone/htc/CallDeferActivity;->mCustomDeferMsg:Ljava/lang/CharSequence;
    invoke-static {v3, v4}, Lcom/android/phone/htc/CallDeferActivity;->access$502(Lcom/android/phone/htc/CallDeferActivity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 319
    iget-object v3, p0, Lcom/android/phone/htc/CallDeferActivity$3;->this$0:Lcom/android/phone/htc/CallDeferActivity;

    iget-object v4, p0, Lcom/android/phone/htc/CallDeferActivity$3;->this$0:Lcom/android/phone/htc/CallDeferActivity;

    #calls: Lcom/android/phone/htc/CallDeferActivity;->getCustomMsgIndex()I
    invoke-static {v4}, Lcom/android/phone/htc/CallDeferActivity;->access$000(Lcom/android/phone/htc/CallDeferActivity;)I

    move-result v4

    #setter for: Lcom/android/phone/htc/CallDeferActivity;->mDeferMsgItem:I
    invoke-static {v3, v4}, Lcom/android/phone/htc/CallDeferActivity;->access$102(Lcom/android/phone/htc/CallDeferActivity;I)I

    .line 320
    iget-object v3, p0, Lcom/android/phone/htc/CallDeferActivity$3;->this$0:Lcom/android/phone/htc/CallDeferActivity;

    #getter for: Lcom/android/phone/htc/CallDeferActivity;->mAdapter:Lcom/android/phone/htc/CallDeferActivity$DeferAdapter;
    invoke-static {v3}, Lcom/android/phone/htc/CallDeferActivity;->access$200(Lcom/android/phone/htc/CallDeferActivity;)Lcom/android/phone/htc/CallDeferActivity$DeferAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/htc/CallDeferActivity$DeferAdapter;->notifyDataSetChanged()V

    .line 324
    .end local v2           #userInput:Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method
