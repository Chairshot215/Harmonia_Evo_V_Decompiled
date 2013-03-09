.class Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker$3$1;
.super Ljava/lang/Thread;
.source "HtcGroupBlackListPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker$3;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker$3;)V
    .locals 0
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker$3$1;->this$1:Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker$3;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker$3$1;->this$1:Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker$3;

    iget-object v0, v0, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker$3;->this$0:Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;

    #calls: Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;->doOK()V
    invoke-static {v0}, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;->access$100(Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;)V

    .line 313
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker$3$1;->this$1:Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker$3;

    iget-object v0, v0, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker$3;->this$0:Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;

    invoke-virtual {v0}, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;->finish()V

    .line 314
    return-void
.end method
