.class Lcom/android/htccontacts/ui/dialog/SaveToPeopleDialog$1;
.super Ljava/lang/Object;
.source "SaveToPeopleDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ui/dialog/SaveToPeopleDialog;->addToContact()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ui/dialog/SaveToPeopleDialog;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ui/dialog/SaveToPeopleDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/htccontacts/ui/dialog/SaveToPeopleDialog$1;->this$0:Lcom/android/htccontacts/ui/dialog/SaveToPeopleDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 132
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 133
    iget-object v0, p0, Lcom/android/htccontacts/ui/dialog/SaveToPeopleDialog$1;->this$0:Lcom/android/htccontacts/ui/dialog/SaveToPeopleDialog;

    const/4 v1, 0x0

    #setter for: Lcom/android/htccontacts/ui/dialog/SaveToPeopleDialog;->mSaveToContactDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v0, v1}, Lcom/android/htccontacts/ui/dialog/SaveToPeopleDialog;->access$002(Lcom/android/htccontacts/ui/dialog/SaveToPeopleDialog;Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;

    .line 134
    return-void
.end method
