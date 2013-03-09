.class public Lcom/android/providers/contacts/HtcUtils/DebugPropertiesUtils;
.super Ljava/lang/Object;
.source "DebugPropertiesUtils.java"


# static fields
.field public static final DEBUG_PROPERTY:Z = false

.field public static final ENSURE_ACCOUNT_CONTACTS_PROTERTY:Ljava/lang/String; = "account_update.prop"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableEnsureAccountContacts(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    .line 21
    const-string v4, "account_update.prop"

    .line 22
    .local v4, name:Ljava/lang/String;
    const/4 v3, 0x0

    .line 23
    .local v3, ios:Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 26
    .local v5, property:Z
    :try_start_0
    invoke-virtual {p0, v4}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 30
    :goto_0
    if-eqz v3, :cond_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v7

    if-lez v7, :cond_0

    .line 31
    const/16 v7, 0xa

    new-array v0, v7, [C

    .line 32
    .local v0, buf:[C
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 33
    .local v6, reader:Ljava/io/InputStreamReader;
    invoke-virtual {v6, v0}, Ljava/io/InputStreamReader;->read([C)I

    .line 34
    const/4 v7, 0x0

    aget-char v2, v0, v7

    .line 35
    .local v2, flag:C
    const/16 v7, 0x31

    if-ne v2, v7, :cond_0

    .line 36
    const/4 v5, 0x1

    .line 39
    .end local v0           #buf:[C
    .end local v2           #flag:C
    .end local v6           #reader:Ljava/io/InputStreamReader;
    :cond_0
    if-eqz v3, :cond_1

    .line 40
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 41
    const/4 v3, 0x0

    .line 48
    :cond_1
    :goto_1
    return v5

    .line 27
    :catch_0
    move-exception v1

    .line 28
    .local v1, e:Ljava/io/FileNotFoundException;
    const/4 v3, 0x0

    goto :goto_0

    .line 43
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 44
    .local v1, e:Ljava/io/IOException;
    const/4 v5, 0x0

    .line 47
    goto :goto_1

    .line 45
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 46
    .local v1, e:Ljava/lang/Exception;
    const/4 v5, 0x0

    goto :goto_1
.end method
