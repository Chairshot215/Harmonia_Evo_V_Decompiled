.class Lcom/htc/android/mail/huxservice/HuxSetAccountBase$5;
.super Ljava/lang/Object;
.source "HuxSetAccountBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/huxservice/HuxSetAccountBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/huxservice/HuxSetAccountBase;)V
    .locals 0
    .parameter

    .prologue
    .line 1127
    iput-object p1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$5;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1129
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$5;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->showDialog(I)V

    .line 1133
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1134
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "intent.eas.from_where"

    const-string v2, "extra.eas.from.mail"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1135
    const-string v1, "intent.eas.mode.wizard"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1136
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$5;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v1, v1, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mContext:Landroid/content/Context;

    const-class v2, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1137
    const-string v1, "CallingActivity"

    const/16 v2, 0x61

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1138
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$5;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1139
    return-void
.end method
