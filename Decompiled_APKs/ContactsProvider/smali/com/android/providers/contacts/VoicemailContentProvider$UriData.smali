.class public Lcom/android/providers/contacts/VoicemailContentProvider$UriData;
.super Ljava/lang/Object;
.source "VoicemailContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/VoicemailContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UriData"
.end annotation


# instance fields
.field private final mId:Ljava/lang/String;

.field private final mSourcePackage:Ljava/lang/String;

.field private final mUri:Landroid/net/Uri;

.field private final mUriType:Lcom/android/providers/contacts/VoicemailUriType;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/android/providers/contacts/VoicemailUriType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "uri"
    .parameter "uriType"
    .parameter "id"
    .parameter "sourcePackage"

    .prologue
    .line 175
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-object p2, p0, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->mUriType:Lcom/android/providers/contacts/VoicemailUriType;

    .line 177
    iput-object p1, p0, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->mUri:Landroid/net/Uri;

    .line 178
    iput-object p3, p0, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->mId:Ljava/lang/String;

    .line 179
    iput-object p4, p0, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->mSourcePackage:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public static createUriData(Landroid/net/Uri;)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;
    .locals 6
    .parameter "uri"

    .prologue
    .line 222
    const-string v3, "source_package"

    invoke-virtual {p0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, sourcePackage:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 225
    .local v0, segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->createUriMatcher()Lcom/android/providers/contacts/util/TypedUriMatcherImpl;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/providers/contacts/util/TypedUriMatcherImpl;->match(Landroid/net/Uri;)Lcom/android/providers/contacts/util/UriType;

    move-result-object v2

    check-cast v2, Lcom/android/providers/contacts/VoicemailUriType;

    .line 226
    .local v2, uriType:Lcom/android/providers/contacts/VoicemailUriType;
    sget-object v3, Lcom/android/providers/contacts/VoicemailContentProvider$1;->$SwitchMap$com$android$providers$contacts$VoicemailUriType:[I

    invoke-virtual {v2}, Lcom/android/providers/contacts/VoicemailUriType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 236
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Impossible, all cases are covered"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 229
    :pswitch_0
    new-instance v3, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v2, v4, v1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;-><init>(Landroid/net/Uri;Lcom/android/providers/contacts/VoicemailUriType;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :goto_0
    return-object v3

    :pswitch_1
    new-instance v4, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v4, p0, v2, v3, v1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;-><init>(Landroid/net/Uri;Lcom/android/providers/contacts/VoicemailUriType;Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    goto :goto_0

    .line 234
    :pswitch_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 226
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static createUriMatcher()Lcom/android/providers/contacts/util/TypedUriMatcherImpl;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/providers/contacts/util/TypedUriMatcherImpl",
            "<",
            "Lcom/android/providers/contacts/VoicemailUriType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 241
    new-instance v0, Lcom/android/providers/contacts/util/TypedUriMatcherImpl;

    const-string v1, "com.android.voicemail"

    invoke-static {}, Lcom/android/providers/contacts/VoicemailUriType;->values()[Lcom/android/providers/contacts/VoicemailUriType;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/util/TypedUriMatcherImpl;-><init>(Ljava/lang/String;[Lcom/android/providers/contacts/util/UriType;)V

    return-object v0
.end method


# virtual methods
.method public final getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSourcePackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->mSourcePackage:Ljava/lang/String;

    return-object v0
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public final getUriType()Lcom/android/providers/contacts/VoicemailUriType;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->mUriType:Lcom/android/providers/contacts/VoicemailUriType;

    return-object v0
.end method

.method public final getWhereClause()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 214
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->hasId()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "_id"

    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/providers/contacts/util/DbQueryUtils;->getEqualityClause(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v2, v3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->hasSourcePackage()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v1, "source_package"

    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getSourcePackage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/providers/contacts/util/DbQueryUtils;->getEqualityClause(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    aput-object v1, v2, v0

    invoke-static {v2}, Lcom/android/providers/contacts/util/DbQueryUtils;->concatenateClauses([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final hasId()Z
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->mId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasSourcePackage()Z
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->mSourcePackage:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
