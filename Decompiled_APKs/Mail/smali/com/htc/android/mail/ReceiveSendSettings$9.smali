.class Lcom/htc/android/mail/ReceiveSendSettings$9;
.super Ljava/lang/Object;
.source "ReceiveSendSettings.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ReceiveSendSettings;->bind()V
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
    .line 504
    iput-object p1, p0, Lcom/htc/android/mail/ReceiveSendSettings$9;->this$0:Lcom/htc/android/mail/ReceiveSendSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 506
    new-instance v1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .local v1, i:Ljava/lang/Integer;
    move-object v3, p1

    .line 507
    check-cast v3, Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v3}, Lcom/htc/preference/HtcListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 508
    .local v0, arr:[Ljava/lang/CharSequence;
    new-instance v2, Lcom/htc/android/mail/ulog/MULogMgr;

    invoke-direct {v2}, Lcom/htc/android/mail/ulog/MULogMgr;-><init>()V

    .line 509
    .local v2, uLoger:Lcom/htc/android/mail/ulog/MULogMgr;
    iget-object v3, p0, Lcom/htc/android/mail/ReceiveSendSettings$9;->this$0:Lcom/htc/android/mail/ReceiveSendSettings;

    #getter for: Lcom/htc/android/mail/ReceiveSendSettings;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v3}, Lcom/htc/android/mail/ReceiveSendSettings;->access$200(Lcom/htc/android/mail/ReceiveSendSettings;)Lcom/htc/android/mail/Account;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x3

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/htc/android/mail/ulog/MULogMgr;->addMailSizeULog(JII)V

    .line 510
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v3, v0, v3

    invoke-virtual {p1, v3}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 511
    const/4 v3, 0x1

    return v3
.end method
