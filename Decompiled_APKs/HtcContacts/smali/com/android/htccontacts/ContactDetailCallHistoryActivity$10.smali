.class Lcom/android/htccontacts/ContactDetailCallHistoryActivity$10;
.super Ljava/lang/Object;
.source "ContactDetailCallHistoryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->onContactChanged(Ljava/lang/String;)V
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
    .line 521
    iput-object p1, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$10;->this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$10;->this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;

    #calls: Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->startAsyncQuery()V
    invoke-static {v0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->access$300(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)V

    .line 524
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$10;->this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;

    #calls: Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->resetNewCallsFlag()V
    invoke-static {v0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->access$400(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)V

    .line 525
    return-void
.end method
