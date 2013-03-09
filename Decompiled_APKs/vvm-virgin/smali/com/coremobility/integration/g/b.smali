.class public final Lcom/coremobility/integration/g/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/security/MessageDigest;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/integration/g/b;->a:Ljava/security/MessageDigest;

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/integration/g/b;->a:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final a([B)I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/coremobility/integration/g/b;->a:Ljava/security/MessageDigest;

    const/4 v2, 0x0

    array-length v3, p1

    invoke-virtual {v1, p1, v2, v3}, Ljava/security/MessageDigest;->digest([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const/16 v1, 0x17

    const-string v2, "failed final digest"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/coremobility/integration/g/b;->a:Ljava/security/MessageDigest;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update(B)V

    return-void
.end method

.method public final a([BI)V
    .locals 2

    iget-object v0, p0, Lcom/coremobility/integration/g/b;->a:Ljava/security/MessageDigest;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/security/MessageDigest;->update([BII)V

    return-void
.end method
