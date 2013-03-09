.class Lcom/htc/android/mail/easclient/ExchangeSvrSetting$9;
.super Ljava/lang/Object;
.source "ExchangeSvrSetting.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/easclient/ExchangeSvrSetting;
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
    .line 1303
    iput-object p1, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$9;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 1305
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 1309
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 1313
    iget-object v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$9;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #calls: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->checkNextBtnEnable()V
    invoke-static {v0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$3000(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)V

    .line 1314
    return-void
.end method
