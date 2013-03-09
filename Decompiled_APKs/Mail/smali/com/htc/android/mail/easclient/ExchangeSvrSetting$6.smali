.class Lcom/htc/android/mail/easclient/ExchangeSvrSetting$6;
.super Ljava/lang/Object;
.source "ExchangeSvrSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->onClick(Landroid/view/View;)V
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
    .line 692
    iput-object p1, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$6;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 694
    iget-object v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$6;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    invoke-virtual {v0}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->finish()V

    .line 695
    return-void
.end method
