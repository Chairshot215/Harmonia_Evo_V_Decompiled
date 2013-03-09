.class Lcom/htc/android/mail/easclient/ExchangeSvrSetting$7;
.super Ljava/lang/Object;
.source "ExchangeSvrSetting.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 912
    iput-object p1, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$7;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 914
    if-eqz p2, :cond_0

    .line 915
    iget-object v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$7;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editSvrName:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$1100(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 917
    :cond_0
    return-void
.end method
