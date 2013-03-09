.class Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker$3;
.super Ljava/lang/Object;
.source "HtcGroupBlackListPicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;->confirmDelete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 304
    iput-object p1, p0, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker$3;->this$0:Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "v"
    .parameter "x"

    .prologue
    .line 307
    iget-object v1, p0, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker$3;->this$0:Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;

    #getter for: Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;->isDoOK:Z
    invoke-static {v1}, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;->access$000(Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 308
    iget-object v1, p0, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker$3;->this$0:Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;

    const/4 v2, 0x1

    #setter for: Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;->isDoOK:Z
    invoke-static {v1, v2}, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;->access$002(Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker;Z)Z

    .line 310
    new-instance v0, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker$3$1;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker$3$1;-><init>(Lcom/android/htccontacts/blacklist/HtcGroupBlackListPicker$3;)V

    .line 317
    .local v0, mDoOKThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 321
    .end local v0           #mDoOKThread:Ljava/lang/Thread;
    :cond_0
    return-void
.end method
