.class public Lcom/htc/android/mail/eassvc/preferences/BasePreferences;
.super Ljava/lang/Object;
.source "BasePreferences.java"


# static fields
.field protected static editor:Landroid/content/SharedPreferences$Editor;

.field protected static settings:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static load(Landroid/content/Context;)V
    .locals 2
    .parameter "a"

    .prologue
    .line 22
    const-string v0, "pimSyncPref"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/eassvc/preferences/BasePreferences;->settings:Landroid/content/SharedPreferences;

    .line 23
    sget-object v0, Lcom/htc/android/mail/eassvc/preferences/BasePreferences;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/eassvc/preferences/BasePreferences;->editor:Landroid/content/SharedPreferences$Editor;

    .line 24
    return-void
.end method

.method public static save()Z
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/htc/android/mail/eassvc/preferences/BasePreferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method
