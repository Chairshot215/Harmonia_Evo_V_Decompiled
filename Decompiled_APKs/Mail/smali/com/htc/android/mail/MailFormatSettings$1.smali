.class Lcom/htc/android/mail/MailFormatSettings$1;
.super Ljava/lang/Object;
.source "MailFormatSettings.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


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
    .line 164
    iput-object p1, p0, Lcom/htc/android/mail/MailFormatSettings$1;->this$0:Lcom/htc/android/mail/MailFormatSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 167
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    .line 168
    .local v0, res:Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/htc/android/mail/MailFormatSettings$1;->this$0:Lcom/htc/android/mail/MailFormatSettings;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    #calls: Lcom/htc/android/mail/MailFormatSettings;->saveAccountAskBeforeDelete(Z)V
    invoke-static {v1, v2}, Lcom/htc/android/mail/MailFormatSettings;->access$000(Lcom/htc/android/mail/MailFormatSettings;Z)V

    .line 169
    const/4 v1, 0x1

    return v1
.end method
