.class public Lcom/android/mms/category/PasswordManager;
.super Ljava/lang/Object;
.source "PasswordManager.java"


# static fields
.field private static final CATEGORY_INFO:Ljava/lang/String; = "com.android.mms.categoryInfo"

.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final SECURITY_PASSWORD:Ljava/lang/String; = "Password"

.field private static sInstance:Lcom/android/mms/category/PasswordManager;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/android/mms/category/PasswordManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/category/PasswordManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 42
    iput-object p1, p0, Lcom/android/mms/category/PasswordManager;->mContext:Landroid/content/Context;

    .line 46
    :goto_0
    return-void

    .line 44
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/category/PasswordManager;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/mms/category/PasswordManager;
    .locals 2

    .prologue
    .line 55
    sget-object v0, Lcom/android/mms/category/PasswordManager;->sInstance:Lcom/android/mms/category/PasswordManager;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "uninitialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    sget-object v0, Lcom/android/mms/category/PasswordManager;->sInstance:Lcom/android/mms/category/PasswordManager;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 49
    sget-object v0, Lcom/android/mms/category/PasswordManager;->sInstance:Lcom/android/mms/category/PasswordManager;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/android/mms/category/PasswordManager;

    invoke-direct {v0, p0}, Lcom/android/mms/category/PasswordManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/category/PasswordManager;->sInstance:Lcom/android/mms/category/PasswordManager;

    .line 52
    :cond_0
    return-void
.end method

.method private static loadCipher(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 98
    :try_start_0
    const-string v4, "com.android.mms.categoryInfo"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 101
    .local v2, sp:Landroid/content/SharedPreferences;
    const-string v4, "Password"

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, password:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    move-object v1, v3

    .line 112
    .end local v1           #password:Ljava/lang/String;
    .end local v2           #sp:Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return-object v1

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, e:Ljava/lang/Exception;
    sget-object v4, Lcom/android/mms/category/PasswordManager;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    .line 112
    goto :goto_0
.end method

.method private makeCipher(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "passwd"

    .prologue
    .line 116
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public authenticate(Ljava/lang/String;)Z
    .locals 3
    .parameter "passwd"

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    :cond_0
    :goto_0
    return v1

    .line 70
    :cond_1
    iget-object v2, p0, Lcom/android/mms/category/PasswordManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/category/PasswordManager;->loadCipher(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, cipher:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 75
    invoke-direct {p0, p1}, Lcom/android/mms/category/PasswordManager;->makeCipher(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/mms/category/PasswordManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/category/PasswordManager;->loadCipher(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPassword(Ljava/lang/String;)Z
    .locals 7
    .parameter "passwd"

    .prologue
    const/4 v3, 0x0

    .line 83
    :try_start_0
    iget-object v4, p0, Lcom/android/mms/category/PasswordManager;->mContext:Landroid/content/Context;

    const-string v5, "com.android.mms.categoryInfo"

    iget-object v6, p0, Lcom/android/mms/category/PasswordManager;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 86
    .local v2, sp:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 87
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "Password"

    invoke-interface {v1, v4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 88
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    const/4 v3, 0x1

    .line 92
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #sp:Landroid/content/SharedPreferences;
    :goto_0
    return v3

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, e:Ljava/lang/Exception;
    sget-object v4, Lcom/android/mms/category/PasswordManager;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
