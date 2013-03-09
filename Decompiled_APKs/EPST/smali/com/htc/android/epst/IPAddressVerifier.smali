.class public Lcom/htc/android/epst/IPAddressVerifier;
.super Ljava/lang/Object;
.source "IPAddressVerifier.java"

# interfaces
.implements Lcom/htc/android/epst/InputVerifier;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "IPAddressVerifier"

.field private static instance:Lcom/htc/android/epst/IPAddressVerifier;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static getSingleton()Lcom/htc/android/epst/IPAddressVerifier;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/htc/android/epst/IPAddressVerifier;->instance:Lcom/htc/android/epst/IPAddressVerifier;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/htc/android/epst/IPAddressVerifier;

    invoke-direct {v0}, Lcom/htc/android/epst/IPAddressVerifier;-><init>()V

    sput-object v0, Lcom/htc/android/epst/IPAddressVerifier;->instance:Lcom/htc/android/epst/IPAddressVerifier;

    .line 19
    :cond_0
    sget-object v0, Lcom/htc/android/epst/IPAddressVerifier;->instance:Lcom/htc/android/epst/IPAddressVerifier;

    return-object v0
.end method


# virtual methods
.method public check(Ljava/lang/String;)Z
    .locals 6
    .parameter "input"

    .prologue
    .line 23
    const/4 v3, 0x1

    .line 24
    .local v3, isOK:Z
    const-string v4, "\\."

    const/4 v5, 0x4

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 25
    .local v2, ips:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    .line 26
    aget-object v1, v2, v0

    .line 27
    .local v1, ip:Ljava/lang/String;
    invoke-virtual {p0, v1, v0}, Lcom/htc/android/epst/IPAddressVerifier;->check(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 28
    const/4 v3, 0x0

    .line 32
    .end local v1           #ip:Ljava/lang/String;
    :cond_0
    return v3

    .line 25
    .restart local v1       #ip:Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public check(Ljava/lang/String;I)Z
    .locals 4
    .parameter "input"
    .parameter "partIndex"

    .prologue
    .line 37
    const/16 v2, 0xa

    :try_start_0
    invoke-static {p1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 38
    .local v1, num:I
    if-ltz v1, :cond_0

    const/16 v2, 0xff

    if-gt v1, v2, :cond_0

    .line 39
    const/4 v2, 0x1

    .line 45
    .end local v1           #num:I
    :goto_0
    return v2

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "IPAddressVerifier"

    const-string v3, "parsing input error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getPrompt()Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v0

    const v1, 0x7f040031

    invoke-virtual {v0, v1}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
