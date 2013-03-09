.class Lcom/android/htccontacts/ContactDetailCallHistoryActivity$11;
.super Ljava/lang/Object;
.source "ContactDetailCallHistoryActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->addToContact(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1430
    iput-object p1, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$11;->this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 1432
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1433
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$11;->this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->mSaveToCotnactDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->access$3002(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1434
    return-void
.end method
