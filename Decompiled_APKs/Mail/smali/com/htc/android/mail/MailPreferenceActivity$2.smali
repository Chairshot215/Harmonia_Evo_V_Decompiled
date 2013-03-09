.class Lcom/htc/android/mail/MailPreferenceActivity$2;
.super Ljava/lang/Object;
.source "MailPreferenceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailPreferenceActivity;->setupEnv()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/MailPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/htc/android/mail/MailPreferenceActivity$2;->this$0:Lcom/htc/android/mail/MailPreferenceActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/htc/android/mail/MailPreferenceActivity$2;->this$0:Lcom/htc/android/mail/MailPreferenceActivity;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/mail/server/ExchangeServer;->setBindService(Landroid/content/Context;)V

    .line 260
    return-void
.end method
