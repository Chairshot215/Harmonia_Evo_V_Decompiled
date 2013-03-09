.class Lcom/android/htccontacts/BrowseCallHistoryActivity$9;
.super Ljava/lang/Object;
.source "BrowseCallHistoryActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/BrowseCallHistoryActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/BrowseCallHistoryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2212
    iput-object p1, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$9;->this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2214
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2215
    packed-switch p2, :pswitch_data_0

    .line 2235
    :goto_0
    return-void

    .line 2217
    :pswitch_0
    iget-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$9;->this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/htccontacts/BrowseCallHistoryActivity;->mCallLogType:I
    invoke-static {v0, v1}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->access$2602(Lcom/android/htccontacts/BrowseCallHistoryActivity;I)I

    .line 2218
    iget-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$9;->this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->startQuery()V

    goto :goto_0

    .line 2221
    :pswitch_1
    iget-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$9;->this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;

    const/4 v1, 0x1

    #setter for: Lcom/android/htccontacts/BrowseCallHistoryActivity;->mCallLogType:I
    invoke-static {v0, v1}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->access$2602(Lcom/android/htccontacts/BrowseCallHistoryActivity;I)I

    .line 2222
    iget-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$9;->this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->startQuery()V

    goto :goto_0

    .line 2225
    :pswitch_2
    iget-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$9;->this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;

    const/4 v1, 0x2

    #setter for: Lcom/android/htccontacts/BrowseCallHistoryActivity;->mCallLogType:I
    invoke-static {v0, v1}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->access$2602(Lcom/android/htccontacts/BrowseCallHistoryActivity;I)I

    .line 2226
    iget-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$9;->this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->startQuery()V

    goto :goto_0

    .line 2229
    :pswitch_3
    iget-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$9;->this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;

    const/4 v1, 0x3

    #setter for: Lcom/android/htccontacts/BrowseCallHistoryActivity;->mCallLogType:I
    invoke-static {v0, v1}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->access$2602(Lcom/android/htccontacts/BrowseCallHistoryActivity;I)I

    .line 2230
    iget-object v0, p0, Lcom/android/htccontacts/BrowseCallHistoryActivity$9;->this$0:Lcom/android/htccontacts/BrowseCallHistoryActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/BrowseCallHistoryActivity;->startQuery()V

    goto :goto_0

    .line 2215
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
