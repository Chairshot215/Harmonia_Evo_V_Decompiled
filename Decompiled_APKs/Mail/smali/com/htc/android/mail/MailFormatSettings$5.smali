.class Lcom/htc/android/mail/MailFormatSettings$5;
.super Ljava/lang/Object;
.source "MailFormatSettings.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailFormatSettings;->bind()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/MailFormatSettings;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailFormatSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 267
    iput-object p1, p0, Lcom/htc/android/mail/MailFormatSettings$5;->this$0:Lcom/htc/android/mail/MailFormatSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 3
    .parameter "preference"

    .prologue
    .line 269
    invoke-static {}, Lcom/htc/android/mail/MailFormatSettings;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/MailFormatSettings$5;->this$0:Lcom/htc/android/mail/MailFormatSettings;

    iget-object v0, v0, Lcom/htc/android/mail/MailFormatSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceClick sig false>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/MailFormatSettings$5;->this$0:Lcom/htc/android/mail/MailFormatSettings;

    iget-object v2, v2, Lcom/htc/android/mail/MailFormatSettings;->sigText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailFormatSettings$5;->this$0:Lcom/htc/android/mail/MailFormatSettings;

    #calls: Lcom/htc/android/mail/MailFormatSettings;->startSigEditor()V
    invoke-static {v0}, Lcom/htc/android/mail/MailFormatSettings;->access$300(Lcom/htc/android/mail/MailFormatSettings;)V

    .line 271
    const/4 v0, 0x0

    return v0
.end method
