.class Lcom/htc/android/mail/MailFormatSettings$8;
.super Ljava/lang/Object;
.source "MailFormatSettings.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailFormatSettings;->updateSDStatusWithPhoneStorage(Z)V
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
    .line 569
    iput-object p1, p0, Lcom/htc/android/mail/MailFormatSettings$8;->this$0:Lcom/htc/android/mail/MailFormatSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 572
    new-instance v1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .local v1, i:Ljava/lang/Integer;
    move-object v2, p1

    .line 573
    check-cast v2, Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 574
    .local v0, arr:[Ljava/lang/CharSequence;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v2, v0, v2

    invoke-virtual {p1, v2}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 575
    iget-object v2, p0, Lcom/htc/android/mail/MailFormatSettings$8;->this$0:Lcom/htc/android/mail/MailFormatSettings;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    #setter for: Lcom/htc/android/mail/MailFormatSettings;->sdsave:I
    invoke-static {v2, v3}, Lcom/htc/android/mail/MailFormatSettings;->access$402(Lcom/htc/android/mail/MailFormatSettings;I)I

    .line 576
    const/4 v2, 0x1

    return v2
.end method
