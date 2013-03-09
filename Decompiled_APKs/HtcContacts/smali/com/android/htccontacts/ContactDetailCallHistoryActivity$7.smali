.class Lcom/android/htccontacts/ContactDetailCallHistoryActivity$7;
.super Landroid/database/ContentObserver;
.source "ContactDetailCallHistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactDetailCallHistoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 443
    iput-object p1, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$7;->this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$7;->this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;

    #calls: Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->getHandler()Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity;->access$200(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 449
    return-void
.end method
