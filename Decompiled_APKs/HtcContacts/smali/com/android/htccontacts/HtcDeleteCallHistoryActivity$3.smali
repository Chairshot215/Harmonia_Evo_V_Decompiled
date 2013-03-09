.class Lcom/android/htccontacts/HtcDeleteCallHistoryActivity$3;
.super Ljava/lang/Object;
.source "HtcDeleteCallHistoryActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->confirmDelete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 320
    iput-object p1, p0, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity$3;->this$0:Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "v"
    .parameter "x"

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity$3;->this$0:Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;

    #getter for: Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->isDoOK:Z
    invoke-static {v0}, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->access$000(Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity$3;->this$0:Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;

    const/4 v1, 0x1

    #setter for: Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->isDoOK:Z
    invoke-static {v0, v1}, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->access$002(Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;Z)Z

    .line 325
    iget-object v0, p0, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity$3;->this$0:Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;

    #calls: Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->doOK()V
    invoke-static {v0}, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->access$100(Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;)V

    .line 335
    :cond_0
    return-void
.end method
