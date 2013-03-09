.class Lcom/htc/android/mail/huxservice/HuxSyncSettings$6$1;
.super Ljava/lang/Object;
.source "HuxSyncSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/huxservice/HuxSyncSettings$6;->onAccountsUpdated([Landroid/accounts/Account;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/mail/huxservice/HuxSyncSettings$6;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/huxservice/HuxSyncSettings$6;)V
    .locals 0
    .parameter

    .prologue
    .line 788
    iput-object p1, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings$6$1;->this$1:Lcom/htc/android/mail/huxservice/HuxSyncSettings$6;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 790
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSyncSettings$6$1;->this$1:Lcom/htc/android/mail/huxservice/HuxSyncSettings$6;

    iget-object v0, v0, Lcom/htc/android/mail/huxservice/HuxSyncSettings$6;->this$0:Lcom/htc/android/mail/huxservice/HuxSyncSettings;

    invoke-virtual {v0}, Lcom/htc/android/mail/huxservice/HuxSyncSettings;->onSyncStateUpdated()V

    .line 791
    return-void
.end method
