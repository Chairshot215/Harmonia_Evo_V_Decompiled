.class Lcom/htc/android/mail/MailPreferenceActivity$5;
.super Ljava/lang/Object;
.source "MailPreferenceActivity.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailPreferenceActivity;->setupListener()V
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
    .line 340
    iput-object p1, p0, Lcom/htc/android/mail/MailPreferenceActivity$5;->this$0:Lcom/htc/android/mail/MailPreferenceActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 5
    .parameter "preference"

    .prologue
    .line 342
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    iget-object v2, p0, Lcom/htc/android/mail/MailPreferenceActivity$5;->this$0:Lcom/htc/android/mail/MailPreferenceActivity;

    #getter for: Lcom/htc/android/mail/MailPreferenceActivity;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/htc/android/mail/MailPreferenceActivity;->access$100(Lcom/htc/android/mail/MailPreferenceActivity;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/MailPreferenceActivity$5;->this$0:Lcom/htc/android/mail/MailPreferenceActivity;

    const-class v4, Lcom/htc/android/mail/MailFormatSettings;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 343
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/android/mail/MailPreferenceActivity$5;->this$0:Lcom/htc/android/mail/MailPreferenceActivity;

    invoke-virtual {v1, v0}, Lcom/htc/android/mail/MailPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    .line 346
    const/4 v1, 0x1

    return v1
.end method
