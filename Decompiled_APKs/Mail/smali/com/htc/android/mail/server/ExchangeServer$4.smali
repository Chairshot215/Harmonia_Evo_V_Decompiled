.class Lcom/htc/android/mail/server/ExchangeServer$4;
.super Ljava/lang/Object;
.source "ExchangeServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/server/ExchangeServer;->fetchMailItem(Lcom/htc/android/mail/Mailbox;Ljava/lang/String;JILjava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/server/ExchangeServer;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/server/ExchangeServer;)V
    .locals 0
    .parameter

    .prologue
    .line 526
    iput-object p1, p0, Lcom/htc/android/mail/server/ExchangeServer$4;->this$0:Lcom/htc/android/mail/server/ExchangeServer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 528
    iget-object v0, p0, Lcom/htc/android/mail/server/ExchangeServer$4;->this$0:Lcom/htc/android/mail/server/ExchangeServer;

    #getter for: Lcom/htc/android/mail/server/ExchangeServer;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/android/mail/server/ExchangeServer;->access$800(Lcom/htc/android/mail/server/ExchangeServer;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/server/ExchangeServer$4;->this$0:Lcom/htc/android/mail/server/ExchangeServer;

    #getter for: Lcom/htc/android/mail/server/ExchangeServer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/android/mail/server/ExchangeServer;->access$800(Lcom/htc/android/mail/server/ExchangeServer;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b01a5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 532
    return-void
.end method
