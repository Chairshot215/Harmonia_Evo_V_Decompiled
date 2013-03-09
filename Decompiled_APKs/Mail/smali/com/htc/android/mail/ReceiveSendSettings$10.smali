.class Lcom/htc/android/mail/ReceiveSendSettings$10;
.super Ljava/lang/Object;
.source "ReceiveSendSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ReceiveSendSettings;->onPause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ReceiveSendSettings;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ReceiveSendSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 541
    iput-object p1, p0, Lcom/htc/android/mail/ReceiveSendSettings$10;->this$0:Lcom/htc/android/mail/ReceiveSendSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/htc/android/mail/ReceiveSendSettings$10;->this$0:Lcom/htc/android/mail/ReceiveSendSettings;

    #calls: Lcom/htc/android/mail/ReceiveSendSettings;->updateAccount()V
    invoke-static {v0}, Lcom/htc/android/mail/ReceiveSendSettings;->access$600(Lcom/htc/android/mail/ReceiveSendSettings;)V

    .line 544
    return-void
.end method
