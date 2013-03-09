.class Lcom/android/htcdialer/EditSpeedDialEntryActivity$5;
.super Ljava/lang/Object;
.source "EditSpeedDialEntryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htcdialer/EditSpeedDialEntryActivity;->setupPhoneNumberListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htcdialer/EditSpeedDialEntryActivity;


# direct methods
.method constructor <init>(Lcom/android/htcdialer/EditSpeedDialEntryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 960
    iput-object p1, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity$5;->this$0:Lcom/android/htcdialer/EditSpeedDialEntryActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 963
    iget-object v1, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity$5;->this$0:Lcom/android/htcdialer/EditSpeedDialEntryActivity;

    #getter for: Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mNumberDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v1}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->access$1100(Lcom/android/htcdialer/EditSpeedDialEntryActivity;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 964
    iget-object v1, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity$5;->this$0:Lcom/android/htcdialer/EditSpeedDialEntryActivity;

    #getter for: Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mNumberDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v1}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->access$1100(Lcom/android/htcdialer/EditSpeedDialEntryActivity;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 965
    iget-object v1, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity$5;->this$0:Lcom/android/htcdialer/EditSpeedDialEntryActivity;

    const/4 v2, 0x0

    #setter for: Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mNumberDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v1, v2}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->access$1102(Lcom/android/htcdialer/EditSpeedDialEntryActivity;Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;

    .line 967
    :cond_0
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity$5;->this$0:Lcom/android/htcdialer/EditSpeedDialEntryActivity;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 968
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    iget-object v1, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity$5;->this$0:Lcom/android/htcdialer/EditSpeedDialEntryActivity;

    #getter for: Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mNumbers:[Ljava/lang/CharSequence;
    invoke-static {v1}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->access$1200(Lcom/android/htcdialer/EditSpeedDialEntryActivity;)[Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/android/htcdialer/EditSpeedDialEntryActivity$5$1;

    invoke-direct {v2, p0}, Lcom/android/htcdialer/EditSpeedDialEntryActivity$5$1;-><init>(Lcom/android/htcdialer/EditSpeedDialEntryActivity$5;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 990
    const v1, 0x7f090034

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 991
    iget-object v1, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity$5;->this$0:Lcom/android/htcdialer/EditSpeedDialEntryActivity;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    #setter for: Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mNumberDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v1, v2}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->access$1102(Lcom/android/htcdialer/EditSpeedDialEntryActivity;Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;

    .line 992
    return-void
.end method
