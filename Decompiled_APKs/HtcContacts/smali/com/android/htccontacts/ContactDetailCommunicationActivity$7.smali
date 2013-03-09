.class Lcom/android/htccontacts/ContactDetailCommunicationActivity$7;
.super Ljava/lang/Object;
.source "ContactDetailCommunicationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ContactDetailCommunicationActivity;->addToContact(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2392
    iput-object p1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$7;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 2394
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2395
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$7;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mSaveToCotnactDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->access$3902(Lcom/android/htccontacts/ContactDetailCommunicationActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 2396
    return-void
.end method
