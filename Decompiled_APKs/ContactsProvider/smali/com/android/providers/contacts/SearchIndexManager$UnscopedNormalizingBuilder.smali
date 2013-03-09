.class Lcom/android/providers/contacts/SearchIndexManager$UnscopedNormalizingBuilder;
.super Lcom/android/providers/contacts/SearchIndexManager$FtsQueryBuilder;
.source "SearchIndexManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/SearchIndexManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnscopedNormalizingBuilder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 444
    invoke-direct {p0}, Lcom/android/providers/contacts/SearchIndexManager$FtsQueryBuilder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/contacts/SearchIndexManager$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 444
    invoke-direct {p0}, Lcom/android/providers/contacts/SearchIndexManager$UnscopedNormalizingBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public addToken(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1
    .parameter "builder"
    .parameter "token"

    .prologue
    .line 447
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 451
    :cond_0
    invoke-static {p2}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    const/16 v0, 0x2a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 453
    return-void
.end method
