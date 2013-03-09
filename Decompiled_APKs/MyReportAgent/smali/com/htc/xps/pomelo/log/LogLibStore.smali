.class public Lcom/htc/xps/pomelo/log/LogLibStore;
.super Ljava/lang/Object;
.source "LogLibStore.java"


# static fields
.field public static D:Z = false

.field private static final TAG:Ljava/lang/String; = "Pomelo"

.field public static final VERSION:Ljava/lang/String; = "1.1"

.field private static final VERSIONKEY:Ljava/lang/String; = "PomeloVersion"

.field private static final preferenceName:Ljava/lang/String; = "LogLib"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/xps/pomelo/log/LogLibStore;->D:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static keyExists(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "key"

    .prologue
    .line 32
    const-string v1, "LogLib"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 33
    .local v0, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static loadDecryptedString(Landroid/content/Context;Ljava/lang/String;Lcom/htc/xps/pomelo/log/IStringEncryption;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "key"
    .parameter "crypto"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 86
    invoke-static {p0, p1}, Lcom/htc/xps/pomelo/log/LogLibStore;->loadString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, encrypted:Ljava/lang/String;
    const-string v1, "Pomelo"

    invoke-interface {p2, v1, v0}, Lcom/htc/xps/pomelo/log/IStringEncryption;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static loadInt(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3
    .parameter "context"
    .parameter "key"

    .prologue
    const/4 v2, 0x0

    .line 112
    const-string v1, "LogLib"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 113
    .local v0, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static loadLong(Landroid/content/Context;Ljava/lang/String;)J
    .locals 3
    .parameter "context"
    .parameter "key"

    .prologue
    .line 137
    const-string v1, "LogLib"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 138
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-wide/16 v1, 0x0

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method public static loadString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "key"

    .prologue
    .line 71
    const-string v1, "LogLib"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 72
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static removeAll(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 146
    const-string v2, "LogLib"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 147
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 148
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 149
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 150
    sget-boolean v2, Lcom/htc/xps/pomelo/log/LogLibStore;->D:Z

    if-eqz v2, :cond_0

    .line 151
    const-string v2, "Pomelo"

    const-string v3, "Preference LogLib is removed."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    return-void
.end method

.method public static saveEncryptedString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/htc/xps/pomelo/log/IStringEncryption;)V
    .locals 2
    .parameter "context"
    .parameter "key"
    .parameter "val"
    .parameter "crypto"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 60
    const-string v1, "Pomelo"

    invoke-interface {p3, v1, p2}, Lcom/htc/xps/pomelo/log/IStringEncryption;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, encrypted:Ljava/lang/String;
    invoke-static {p0, p1, v0}, Lcom/htc/xps/pomelo/log/LogLibStore;->saveString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public static saveInt(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4
    .parameter "context"
    .parameter "key"
    .parameter "val"

    .prologue
    .line 98
    const-string v2, "LogLib"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 99
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 100
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "PomeloVersion"

    const-string v3, "1.1"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 101
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 102
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 103
    return-void
.end method

.method public static saveLong(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 4
    .parameter "context"
    .parameter "key"
    .parameter "val"

    .prologue
    .line 123
    const-string v2, "LogLib"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 124
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 125
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "PomeloVersion"

    const-string v3, "1.1"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 126
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 127
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 128
    return-void
.end method

.method public static saveString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "key"
    .parameter "val"

    .prologue
    .line 43
    const-string v2, "LogLib"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 44
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 45
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "PomeloVersion"

    const-string v3, "1.1"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 46
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 47
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 48
    return-void
.end method
