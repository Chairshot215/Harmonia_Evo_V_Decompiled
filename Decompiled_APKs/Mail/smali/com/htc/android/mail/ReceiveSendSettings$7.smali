.class Lcom/htc/android/mail/ReceiveSendSettings$7;
.super Ljava/lang/Object;
.source "ReceiveSendSettings.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ReceiveSendSettings;->setupListener()V
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
    .line 379
    iput-object p1, p0, Lcom/htc/android/mail/ReceiveSendSettings$7;->this$0:Lcom/htc/android/mail/ReceiveSendSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v3, 0x1

    .line 381
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 382
    .local v0, value:I
    iget-object v1, p0, Lcom/htc/android/mail/ReceiveSendSettings$7;->this$0:Lcom/htc/android/mail/ReceiveSendSettings;

    #calls: Lcom/htc/android/mail/ReceiveSendSettings;->updateAccountDetailFetchMailByDaySummary(I)V
    invoke-static {v1, v0}, Lcom/htc/android/mail/ReceiveSendSettings;->access$500(Lcom/htc/android/mail/ReceiveSendSettings;I)V

    .line 383
    iget-object v1, p0, Lcom/htc/android/mail/ReceiveSendSettings$7;->this$0:Lcom/htc/android/mail/ReceiveSendSettings;

    #getter for: Lcom/htc/android/mail/ReceiveSendSettings;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v1}, Lcom/htc/android/mail/ReceiveSendSettings;->access$200(Lcom/htc/android/mail/ReceiveSendSettings;)Lcom/htc/android/mail/Account;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/ReceiveSendSettings$7;->this$0:Lcom/htc/android/mail/ReceiveSendSettings;

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/Account;->getFetchMailDaysIndex(Landroid/content/Context;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 384
    iget-object v1, p0, Lcom/htc/android/mail/ReceiveSendSettings$7;->this$0:Lcom/htc/android/mail/ReceiveSendSettings;

    #getter for: Lcom/htc/android/mail/ReceiveSendSettings;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v1}, Lcom/htc/android/mail/ReceiveSendSettings;->access$200(Lcom/htc/android/mail/ReceiveSendSettings;)Lcom/htc/android/mail/Account;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/ReceiveSendSettings$7;->this$0:Lcom/htc/android/mail/ReceiveSendSettings;

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/mail/Account;->setFetchLongerDate(Landroid/content/Context;Z)V

    .line 386
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/ReceiveSendSettings$7;->this$0:Lcom/htc/android/mail/ReceiveSendSettings;

    #getter for: Lcom/htc/android/mail/ReceiveSendSettings;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v1}, Lcom/htc/android/mail/ReceiveSendSettings;->access$200(Lcom/htc/android/mail/ReceiveSendSettings;)Lcom/htc/android/mail/Account;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/ReceiveSendSettings$7;->this$0:Lcom/htc/android/mail/ReceiveSendSettings;

    invoke-virtual {v1, v2, v0}, Lcom/htc/android/mail/Account;->setFetchMailDaysIndex(Landroid/content/Context;I)V

    .line 387
    iget-object v1, p0, Lcom/htc/android/mail/ReceiveSendSettings$7;->this$0:Lcom/htc/android/mail/ReceiveSendSettings;

    #getter for: Lcom/htc/android/mail/ReceiveSendSettings;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v1}, Lcom/htc/android/mail/ReceiveSendSettings;->access$200(Lcom/htc/android/mail/ReceiveSendSettings;)Lcom/htc/android/mail/Account;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/ReceiveSendSettings$7;->this$0:Lcom/htc/android/mail/ReceiveSendSettings;

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/Account;->commit(Landroid/content/Context;)V

    .line 388
    iget-object v1, p0, Lcom/htc/android/mail/ReceiveSendSettings$7;->this$0:Lcom/htc/android/mail/ReceiveSendSettings;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/ReceiveSendSettings;->setResult(I)V

    .line 389
    return v3
.end method
