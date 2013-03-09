.class Lcom/android/htcdialer/HtcIpDialActivity$1;
.super Ljava/lang/Object;
.source "HtcIpDialActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htcdialer/HtcIpDialActivity;->initDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htcdialer/HtcIpDialActivity;


# direct methods
.method constructor <init>(Lcom/android/htcdialer/HtcIpDialActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 379
    iput-object p1, p0, Lcom/android/htcdialer/HtcIpDialActivity$1;->this$0:Lcom/android/htcdialer/HtcIpDialActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 382
    iget-object v2, p0, Lcom/android/htcdialer/HtcIpDialActivity$1;->this$0:Lcom/android/htcdialer/HtcIpDialActivity;

    #getter for: Lcom/android/htcdialer/HtcIpDialActivity;->mNumberEdit:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/htcdialer/HtcIpDialActivity;->access$400(Lcom/android/htcdialer/HtcIpDialActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 383
    .local v0, edit:Landroid/text/Editable;
    if-eqz v0, :cond_0

    .line 384
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 385
    .local v1, number:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 386
    iget-object v2, p0, Lcom/android/htcdialer/HtcIpDialActivity$1;->this$0:Lcom/android/htcdialer/HtcIpDialActivity;

    #calls: Lcom/android/htcdialer/HtcIpDialActivity;->insert(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/android/htcdialer/HtcIpDialActivity;->access$500(Lcom/android/htcdialer/HtcIpDialActivity;Ljava/lang/String;)V

    .line 390
    .end local v1           #number:Ljava/lang/String;
    :cond_0
    return-void
.end method
