.class Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity$3$1;
.super Ljava/lang/Thread;
.source "HtcDeleteBlockCallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity$3;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity$3;)V
    .locals 0
    .parameter

    .prologue
    .line 329
    iput-object p1, p0, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity$3$1;->this$1:Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity$3;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity$3$1;->this$1:Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity$3;

    iget-object v0, v0, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity$3;->this$0:Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;

    #calls: Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;->doOK()V
    invoke-static {v0}, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;->access$100(Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;)V

    .line 332
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity$3$1;->this$1:Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity$3;

    iget-object v0, v0, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity$3;->this$0:Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/blacklist/HtcDeleteBlockCallActivity;->finish()V

    .line 333
    return-void
.end method
