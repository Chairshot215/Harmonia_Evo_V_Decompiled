.class Lcom/htc/android/mail/easclient/ExchangeSvrSetting$5;
.super Ljava/lang/Object;
.source "ExchangeSvrSetting.java"

# interfaces
.implements Lcom/htc/android/mail/easclient/EASProgressDialog$DialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
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
    .line 576
    iput-object p1, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$5;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 2

    .prologue
    .line 578
    iget-object v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$5;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->setResult(I)V

    .line 579
    iget-object v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$5;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    invoke-virtual {v0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->finish()V

    .line 580
    return-void
.end method
