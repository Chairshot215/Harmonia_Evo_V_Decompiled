.class public Lcom/htc/android/mail/huxservice/HUXUTIL$exchangeInfo;
.super Ljava/lang/Object;
.source "HUXUTIL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/huxservice/HUXUTIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "exchangeInfo"
.end annotation


# instance fields
.field public exchangeABSyncFlag:Z

.field public exchangeCalSyncFlag:Z

.field public exchangeDaysToSync:I

.field public exchangeDomain:Ljava/lang/String;

.field public exchangeEmail:Ljava/lang/String;

.field public exchangeFetchFreq:I

.field public exchangeMailSyncFlag:Z

.field public exchangeNickName:Ljava/lang/String;

.field public exchangeSecureFlag:Z

.field public exchangeServer:Ljava/lang/String;

.field public exchangeUser:Ljava/lang/String;

.field public exchangeVerifyCertFlag:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .parameter "xobj"

    .prologue
    .line 429
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 419
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$exchangeInfo;->exchangeSecureFlag:Z

    .line 430
    const-string v0, "exchangeABSyncFlag"

    invoke-static {p1, v0}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_find_boolean(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$exchangeInfo;->exchangeABSyncFlag:Z

    .line 431
    const-string v0, "exchangeCalSyncFlag"

    invoke-static {p1, v0}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_find_boolean(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$exchangeInfo;->exchangeCalSyncFlag:Z

    .line 432
    const-string v0, "exchangeVerifyCertFlag"

    invoke-static {p1, v0}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_find_boolean(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$exchangeInfo;->exchangeVerifyCertFlag:Z

    .line 433
    const-string v0, "exchangeSecureFlag"

    invoke-static {p1, v0}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_find_boolean(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$exchangeInfo;->exchangeSecureFlag:Z

    .line 434
    const-string v0, "exchangeMailSyncFlag"

    invoke-static {p1, v0}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_find_boolean(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$exchangeInfo;->exchangeMailSyncFlag:Z

    .line 436
    const-string v0, "exchangeDaysToSync"

    invoke-static {p1, v0}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_find_int(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$exchangeInfo;->exchangeDaysToSync:I

    .line 437
    const-string v0, "exchangeFetchFreq"

    invoke-static {p1, v0}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_find_int(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$exchangeInfo;->exchangeFetchFreq:I

    .line 439
    const-string v0, "exchangeEmail"

    invoke-static {p1, v0}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_find_text(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$exchangeInfo;->exchangeEmail:Ljava/lang/String;

    .line 440
    const-string v0, "exchangeDomain"

    invoke-static {p1, v0}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_find_text(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$exchangeInfo;->exchangeDomain:Ljava/lang/String;

    .line 441
    const-string v0, "exchangeNickName"

    invoke-static {p1, v0}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_find_text(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$exchangeInfo;->exchangeNickName:Ljava/lang/String;

    .line 442
    const-string v0, "exchangeServer"

    invoke-static {p1, v0}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_find_text(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$exchangeInfo;->exchangeServer:Ljava/lang/String;

    .line 443
    const-string v0, "exchangeUser"

    invoke-static {p1, v0}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_find_text(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$exchangeInfo;->exchangeUser:Ljava/lang/String;

    .line 444
    return-void
.end method


# virtual methods
.method public printInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "tag"

    .prologue
    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " exchangeEmail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$exchangeInfo;->exchangeEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " exchangeDomain:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$exchangeInfo;->exchangeDomain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " exchangeNickName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$exchangeInfo;->exchangeNickName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " exchangeServer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$exchangeInfo;->exchangeServer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " exchangeUser:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$exchangeInfo;->exchangeUser:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ABSyncFlag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$exchangeInfo;->exchangeABSyncFlag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " CalSyncFlag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$exchangeInfo;->exchangeCalSyncFlag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " verifyCertFlag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$exchangeInfo;->exchangeVerifyCertFlag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " SecureFlag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$exchangeInfo;->exchangeSecureFlag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " MailSyncFlag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$exchangeInfo;->exchangeMailSyncFlag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " exchangeDaysToSync:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$exchangeInfo;->exchangeDaysToSync:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " exchangeFetchFreq:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$exchangeInfo;->exchangeFetchFreq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
