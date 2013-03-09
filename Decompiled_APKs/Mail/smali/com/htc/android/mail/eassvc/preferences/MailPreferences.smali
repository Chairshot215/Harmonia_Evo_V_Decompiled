.class public Lcom/htc/android/mail/eassvc/preferences/MailPreferences;
.super Lcom/htc/android/mail/eassvc/preferences/BasePreferences;
.source "MailPreferences.java"


# static fields
.field private static final DEFAULT_EAS_COL_ID:Ljava/lang/String; = ""

.field private static final DEFAULT_EAS_SYNC_KEY:Ljava/lang/String; = ""

.field private static final DEFAULT_LAST_ANCHOR:J = 0x0L

.field private static final DEFAULT_NEXT_ANCHOR:J = 0x0L

.field private static final EAS_COL_ID_PROP:Ljava/lang/String; = "email_col_id"

.field private static final EAS_SYNC_KEY_PROP:Ljava/lang/String; = "email_eas_key"

.field private static final LAST_ANCHOR_PROP:Ljava/lang/String; = "email_last"

.field private static final NEXT_ANCHOR_PROP:Ljava/lang/String; = "email_next"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/preferences/BasePreferences;-><init>()V

    return-void
.end method

.method public static getColID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 43
    sget-object v0, Lcom/htc/android/mail/eassvc/preferences/MailPreferences;->settings:Landroid/content/SharedPreferences;

    const-string v1, "email_col_id"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLastAnchor()J
    .locals 4

    .prologue
    .line 26
    sget-object v0, Lcom/htc/android/mail/eassvc/preferences/MailPreferences;->settings:Landroid/content/SharedPreferences;

    const-string v1, "email_last"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getNextAnchor()J
    .locals 4

    .prologue
    .line 18
    sget-object v0, Lcom/htc/android/mail/eassvc/preferences/MailPreferences;->settings:Landroid/content/SharedPreferences;

    const-string v1, "email_next"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getSyncKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 35
    sget-object v0, Lcom/htc/android/mail/eassvc/preferences/MailPreferences;->settings:Landroid/content/SharedPreferences;

    const-string v1, "email_eas_key"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setColID(Ljava/lang/String;)V
    .locals 2
    .parameter "colID"

    .prologue
    .line 47
    sget-object v0, Lcom/htc/android/mail/eassvc/preferences/MailPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "email_col_id"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 48
    return-void
.end method

.method public static setLastAnchor(J)V
    .locals 2
    .parameter "lastAnchor"

    .prologue
    .line 31
    sget-object v0, Lcom/htc/android/mail/eassvc/preferences/MailPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "email_last"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 32
    return-void
.end method

.method public static setNextAnchor(J)V
    .locals 2
    .parameter "nextAnchor"

    .prologue
    .line 22
    sget-object v0, Lcom/htc/android/mail/eassvc/preferences/MailPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "email_next"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 23
    return-void
.end method

.method public static setSyncKey(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 39
    sget-object v0, Lcom/htc/android/mail/eassvc/preferences/MailPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "email_eas_key"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 40
    return-void
.end method
