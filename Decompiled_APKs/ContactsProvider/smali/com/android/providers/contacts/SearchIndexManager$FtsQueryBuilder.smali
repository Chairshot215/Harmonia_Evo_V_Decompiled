.class public abstract Lcom/android/providers/contacts/SearchIndexManager$FtsQueryBuilder;
.super Ljava/lang/Object;
.source "SearchIndexManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/SearchIndexManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FtsQueryBuilder"
.end annotation


# static fields
.field public static final SCOPED_NAME_NORMALIZING:Lcom/android/providers/contacts/SearchIndexManager$FtsQueryBuilder;

.field public static final UNSCOPED_NORMALIZING:Lcom/android/providers/contacts/SearchIndexManager$FtsQueryBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 405
    new-instance v0, Lcom/android/providers/contacts/SearchIndexManager$UnscopedNormalizingBuilder;

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/SearchIndexManager$UnscopedNormalizingBuilder;-><init>(Lcom/android/providers/contacts/SearchIndexManager$1;)V

    sput-object v0, Lcom/android/providers/contacts/SearchIndexManager$FtsQueryBuilder;->UNSCOPED_NORMALIZING:Lcom/android/providers/contacts/SearchIndexManager$FtsQueryBuilder;

    .line 411
    new-instance v0, Lcom/android/providers/contacts/SearchIndexManager$ScopedNameNormalizingBuilder;

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/SearchIndexManager$ScopedNameNormalizingBuilder;-><init>(Lcom/android/providers/contacts/SearchIndexManager$1;)V

    sput-object v0, Lcom/android/providers/contacts/SearchIndexManager$FtsQueryBuilder;->SCOPED_NAME_NORMALIZING:Lcom/android/providers/contacts/SearchIndexManager$FtsQueryBuilder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 401
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDigitsQueryBuilder(Ljava/lang/String;)Lcom/android/providers/contacts/SearchIndexManager$FtsQueryBuilder;
    .locals 1
    .parameter "commonCriteria"

    .prologue
    .line 422
    new-instance v0, Lcom/android/providers/contacts/SearchIndexManager$FtsQueryBuilder$1;

    invoke-direct {v0, p0}, Lcom/android/providers/contacts/SearchIndexManager$FtsQueryBuilder$1;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public abstract addToken(Ljava/lang/StringBuilder;Ljava/lang/String;)V
.end method
