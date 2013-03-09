.class public Lcom/google/android/finsky/utils/Md5Util;
.super Ljava/lang/Object;
.source "Md5Util.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static secureHash([B)Ljava/lang/String;
    .locals 2
    .parameter "input"

    .prologue
    .line 31
    invoke-static {p0}, Lcom/google/android/finsky/utils/Md5Util;->secureHashBytes([B)[B

    move-result-object v0

    .line 32
    .local v0, result:[B
    const/16 v1, 0xb

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static secureHashBytes([B)[B
    .locals 3
    .parameter "input"

    .prologue
    .line 44
    :try_start_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 48
    .local v1, messageDigest:Ljava/security/MessageDigest;
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 49
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .end local v1           #messageDigest:Ljava/security/MessageDigest;
    :goto_0
    return-object v2

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    const/4 v2, 0x0

    goto :goto_0
.end method
