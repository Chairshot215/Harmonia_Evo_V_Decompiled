.class Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker$3$1;
.super Ljava/lang/Thread;
.source "HtcManageCallsListPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker$3;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker$3;)V
    .locals 0
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker$3$1;->this$1:Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker$3;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker$3$1;->this$1:Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker$3;

    iget-object v0, v0, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker$3;->this$0:Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;

    #calls: Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->doOK()V
    invoke-static {v0}, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->access$100(Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;)V

    .line 297
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker$3$1;->this$1:Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker$3;

    iget-object v0, v0, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker$3;->this$0:Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;

    invoke-virtual {v0}, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->finish()V

    .line 298
    return-void
.end method
