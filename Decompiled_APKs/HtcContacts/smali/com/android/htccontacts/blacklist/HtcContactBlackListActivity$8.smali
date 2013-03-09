.class Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$8;
.super Ljava/lang/Object;
.source "HtcContactBlackListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->createInputNumbernDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;

.field final synthetic val$phoneText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1046
    iput-object p1, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$8;->this$0:Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;

    iput-object p2, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$8;->val$phoneText:Landroid/widget/EditText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1048
    iget-object v1, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$8;->val$phoneText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1050
    .local v0, number:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1051
    iget-object v1, p0, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity$8;->this$0:Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;

    #calls: Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->insertNumberToBlackList(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;->access$600(Lcom/android/htccontacts/blacklist/HtcContactBlackListActivity;Ljava/lang/String;)V

    .line 1053
    :cond_0
    return-void
.end method
