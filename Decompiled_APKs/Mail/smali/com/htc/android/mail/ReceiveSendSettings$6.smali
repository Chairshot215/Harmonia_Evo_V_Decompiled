.class Lcom/htc/android/mail/ReceiveSendSettings$6;
.super Ljava/lang/Object;
.source "ReceiveSendSettings.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;


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
    .line 368
    iput-object p1, p0, Lcom/htc/android/mail/ReceiveSendSettings$6;->this$0:Lcom/htc/android/mail/ReceiveSendSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 5
    .parameter "preference"

    .prologue
    .line 370
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mail/accounts/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/ReceiveSendSettings$6;->this$0:Lcom/htc/android/mail/ReceiveSendSettings;

    #getter for: Lcom/htc/android/mail/ReceiveSendSettings;->mAccountId:J
    invoke-static {v3}, Lcom/htc/android/mail/ReceiveSendSettings;->access$400(Lcom/htc/android/mail/ReceiveSendSettings;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 371
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    iget-object v3, p0, Lcom/htc/android/mail/ReceiveSendSettings$6;->this$0:Lcom/htc/android/mail/ReceiveSendSettings;

    const-class v4, Lcom/htc/android/mail/FetchTypeSettings2;

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 372
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/htc/android/mail/ReceiveSendSettings$6;->this$0:Lcom/htc/android/mail/ReceiveSendSettings;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/htc/android/mail/ReceiveSendSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 374
    const/4 v2, 0x1

    return v2
.end method
