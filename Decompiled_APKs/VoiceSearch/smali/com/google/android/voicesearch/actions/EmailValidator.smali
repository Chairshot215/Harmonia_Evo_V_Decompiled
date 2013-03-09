.class public Lcom/google/android/voicesearch/actions/EmailValidator;
.super Ljava/lang/Object;
.source "EmailValidator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/actions/EmailValidator$AddrSpec;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static areValidEmailAddresses(Ljava/lang/String;)Z
    .locals 4
    .parameter "addresses"

    .prologue
    .line 47
    invoke-static {p0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v2

    .line 48
    .local v2, tokens:[Landroid/text/util/Rfc822Token;
    if-eqz v2, :cond_2

    array-length v3, v2

    if-lez v3, :cond_2

    .line 49
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_2

    const/16 v3, 0x64

    if-ge v1, v3, :cond_2

    .line 50
    new-instance v0, Lcom/google/android/voicesearch/actions/EmailValidator$AddrSpec;

    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/google/android/voicesearch/actions/EmailValidator$AddrSpec;-><init>(Ljava/lang/String;)V

    .line 51
    .local v0, addr:Lcom/google/android/voicesearch/actions/EmailValidator$AddrSpec;
    invoke-virtual {v0}, Lcom/google/android/voicesearch/actions/EmailValidator$AddrSpec;->validateDomain()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actions/EmailValidator$AddrSpec;->validateLocalPart()Z

    move-result v3

    if-nez v3, :cond_1

    .line 52
    :cond_0
    const/4 v3, 0x0

    .line 56
    .end local v0           #addr:Lcom/google/android/voicesearch/actions/EmailValidator$AddrSpec;
    .end local v1           #i:I
    :goto_1
    return v3

    .line 49
    .restart local v0       #addr:Lcom/google/android/voicesearch/actions/EmailValidator$AddrSpec;
    .restart local v1       #i:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 56
    .end local v0           #addr:Lcom/google/android/voicesearch/actions/EmailValidator$AddrSpec;
    .end local v1           #i:I
    :cond_2
    const/4 v3, 0x1

    goto :goto_1
.end method
