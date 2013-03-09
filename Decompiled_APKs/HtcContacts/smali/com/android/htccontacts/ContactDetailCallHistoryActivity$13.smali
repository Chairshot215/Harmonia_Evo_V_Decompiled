.class Lcom/android/htccontacts/ContactDetailCallHistoryActivity$13;
.super Ljava/lang/Object;
.source "ContactDetailCallHistoryActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
.method constructor <init>(Lcom/android/htccontacts/ContactDetailCallHistoryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1553
    iput-object p1, p0, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$13;->this$0:Lcom/android/htccontacts/ContactDetailCallHistoryActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1555
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$13$1;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/ContactDetailCallHistoryActivity$13$1;-><init>(Lcom/android/htccontacts/ContactDetailCallHistoryActivity$13;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1585
    return-void
.end method
