.class public Lcom/android/providers/contacts/util/TypedUriMatcherImpl;
.super Ljava/lang/Object;
.source "TypedUriMatcherImpl.java"

# interfaces
.implements Lcom/android/providers/contacts/util/TypedUriMatcher;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/providers/contacts/util/UriType;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/providers/contacts/util/TypedUriMatcher",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mAuthority:Ljava/lang/String;

.field private final mNoMatchUriType:Lcom/android/providers/contacts/util/UriType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mUriMatcher:Landroid/content/UriMatcher;

.field private final mValues:[Lcom/android/providers/contacts/util/UriType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;[Lcom/android/providers/contacts/util/UriType;)V
    .locals 8
    .parameter "authority"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[TT;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, this:Lcom/android/providers/contacts/util/TypedUriMatcherImpl;,"Lcom/android/providers/contacts/util/TypedUriMatcherImpl<TT;>;"
    .local p2, values:[Lcom/android/providers/contacts/util/UriType;,"[TT;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/providers/contacts/util/TypedUriMatcherImpl;->mAuthority:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/android/providers/contacts/util/TypedUriMatcherImpl;->mValues:[Lcom/android/providers/contacts/util/UriType;

    .line 35
    new-instance v6, Landroid/content/UriMatcher;

    const/4 v7, -0x1

    invoke-direct {v6, v7}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v6, p0, Lcom/android/providers/contacts/util/TypedUriMatcherImpl;->mUriMatcher:Landroid/content/UriMatcher;

    .line 36
    const/4 v1, 0x0

    .line 37
    .local v1, candidateNoMatchUriType:Lcom/android/providers/contacts/util/UriType;,"TT;"
    move-object v0, p2

    .local v0, arr$:[Lcom/android/providers/contacts/util/UriType;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v5, v0, v2

    .line 38
    .local v5, value:Lcom/android/providers/contacts/util/UriType;,"TT;"
    invoke-interface {v5}, Lcom/android/providers/contacts/util/UriType;->path()Ljava/lang/String;

    move-result-object v4

    .line 39
    .local v4, path:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 40
    invoke-direct {p0, v4, v5}, Lcom/android/providers/contacts/util/TypedUriMatcherImpl;->addUriType(Ljava/lang/String;Lcom/android/providers/contacts/util/UriType;)V

    .line 37
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 42
    :cond_0
    move-object v1, v5

    goto :goto_1

    .line 45
    .end local v4           #path:Ljava/lang/String;
    .end local v5           #value:Lcom/android/providers/contacts/util/UriType;,"TT;"
    :cond_1
    iput-object v1, p0, Lcom/android/providers/contacts/util/TypedUriMatcherImpl;->mNoMatchUriType:Lcom/android/providers/contacts/util/UriType;

    .line 46
    return-void
.end method

.method private addUriType(Ljava/lang/String;Lcom/android/providers/contacts/util/UriType;)V
    .locals 3
    .parameter "path"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, this:Lcom/android/providers/contacts/util/TypedUriMatcherImpl;,"Lcom/android/providers/contacts/util/TypedUriMatcherImpl<TT;>;"
    .local p2, value:Lcom/android/providers/contacts/util/UriType;,"TT;"
    iget-object v0, p0, Lcom/android/providers/contacts/util/TypedUriMatcherImpl;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/android/providers/contacts/util/TypedUriMatcherImpl;->mAuthority:Ljava/lang/String;

    invoke-interface {p2}, Lcom/android/providers/contacts/util/UriType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 50
    return-void
.end method


# virtual methods
.method public match(Landroid/net/Uri;)Lcom/android/providers/contacts/util/UriType;
    .locals 2
    .parameter "uri"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, this:Lcom/android/providers/contacts/util/TypedUriMatcherImpl;,"Lcom/android/providers/contacts/util/TypedUriMatcherImpl<TT;>;"
    iget-object v1, p0, Lcom/android/providers/contacts/util/TypedUriMatcherImpl;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 55
    .local v0, match:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/android/providers/contacts/util/TypedUriMatcherImpl;->mNoMatchUriType:Lcom/android/providers/contacts/util/UriType;

    .line 58
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/providers/contacts/util/TypedUriMatcherImpl;->mValues:[Lcom/android/providers/contacts/util/UriType;

    aget-object v1, v1, v0

    goto :goto_0
.end method
