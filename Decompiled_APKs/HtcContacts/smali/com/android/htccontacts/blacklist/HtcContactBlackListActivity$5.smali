.class Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$5;
.super Ljava/lang/Object;
.source "HtcContactBlackListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->comfirmRemoveBlackList(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 690
    iput-object p1, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$5;->this$0:Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;

    iput p2, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$5;->val$position:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "v"
    .parameter "x"

    .prologue
    .line 694
    new-instance v0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$5$1;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$5$1;-><init>(Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$5;)V

    .line 700
    .local v0, mDoOKThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 702
    return-void
.end method
