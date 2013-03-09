.class Lcom/android/htccontacts/ContactDetailCommunicationActivity$6;
.super Ljava/lang/Object;
.source "ContactDetailCommunicationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ContactDetailCommunicationActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 716
    iput-object p1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$6;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 721
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$6;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/htccontacts/ContactDetailCommunicationActivity;->mMailWhereClause:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->access$1102(Lcom/android/htccontacts/ContactDetailCommunicationActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 722
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$6;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    #calls: Lcom/android/htccontacts/ContactDetailCommunicationActivity;->rebuildEntries()V
    invoke-static {v0}, Lcom/android/htccontacts/ContactDetailCommunicationActivity;->access$1200(Lcom/android/htccontacts/ContactDetailCommunicationActivity;)V

    .line 723
    return-void
.end method
