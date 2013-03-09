.class Lcom/htc/android/mail/ProviderListScreen$SecretPhrases$SecretPharse;
.super Ljava/lang/Object;
.source "ProviderListScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ProviderListScreen$SecretPhrases;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SecretPharse"
.end annotation


# instance fields
.field private mSecretPhrase:[I

.field private mSecretPhraseIndex:I


# direct methods
.method public constructor <init>([I)V
    .locals 1
    .parameter "secretPhrase"

    .prologue
    .line 522
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 519
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/mail/ProviderListScreen$SecretPhrases$SecretPharse;->mSecretPhraseIndex:I

    .line 523
    iput-object p1, p0, Lcom/htc/android/mail/ProviderListScreen$SecretPhrases$SecretPharse;->mSecretPhrase:[I

    .line 524
    return-void
.end method


# virtual methods
.method public check(I)Z
    .locals 3
    .parameter "keyCode"

    .prologue
    const/4 v0, 0x0

    .line 527
    iget v1, p0, Lcom/htc/android/mail/ProviderListScreen$SecretPhrases$SecretPharse;->mSecretPhraseIndex:I

    iget-object v2, p0, Lcom/htc/android/mail/ProviderListScreen$SecretPhrases$SecretPharse;->mSecretPhrase:[I

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 534
    :cond_0
    :goto_0
    return v0

    .line 528
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/ProviderListScreen$SecretPhrases$SecretPharse;->mSecretPhrase:[I

    iget v2, p0, Lcom/htc/android/mail/ProviderListScreen$SecretPhrases$SecretPharse;->mSecretPhraseIndex:I

    aget v1, v1, v2

    if-ne p1, v1, :cond_0

    .line 529
    iget v1, p0, Lcom/htc/android/mail/ProviderListScreen$SecretPhrases$SecretPharse;->mSecretPhraseIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/android/mail/ProviderListScreen$SecretPhrases$SecretPharse;->mSecretPhraseIndex:I

    .line 530
    iget v1, p0, Lcom/htc/android/mail/ProviderListScreen$SecretPhrases$SecretPharse;->mSecretPhraseIndex:I

    iget-object v2, p0, Lcom/htc/android/mail/ProviderListScreen$SecretPhrases$SecretPharse;->mSecretPhrase:[I

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 531
    const/4 v0, 0x1

    goto :goto_0
.end method
