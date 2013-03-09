.class public Lcom/android/providers/calendar/HtcProviderImplContainer;
.super Ljava/lang/Object;
.source "HtcProviderImplContainer.java"


# static fields
.field private static mInstance:Lcom/android/providers/calendar/HtcProviderImplContainer;


# instance fields
.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/calendar/AbsHtcFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-object v0, Lcom/android/providers/calendar/HtcProviderImplContainer;->mInstance:Lcom/android/providers/calendar/HtcProviderImplContainer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/calendar/HtcProviderImplContainer;->mList:Ljava/util/ArrayList;

    .line 15
    return-void
.end method

.method public static getInstance()Lcom/android/providers/calendar/HtcProviderImplContainer;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/android/providers/calendar/HtcProviderImplContainer;->mInstance:Lcom/android/providers/calendar/HtcProviderImplContainer;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/android/providers/calendar/HtcProviderImplContainer;

    invoke-direct {v0}, Lcom/android/providers/calendar/HtcProviderImplContainer;-><init>()V

    sput-object v0, Lcom/android/providers/calendar/HtcProviderImplContainer;->mInstance:Lcom/android/providers/calendar/HtcProviderImplContainer;

    .line 21
    :cond_0
    sget-object v0, Lcom/android/providers/calendar/HtcProviderImplContainer;->mInstance:Lcom/android/providers/calendar/HtcProviderImplContainer;

    return-object v0
.end method


# virtual methods
.method protected add(Lcom/android/providers/calendar/AbsHtcFilter;)V
    .locals 1
    .parameter "o"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/providers/calendar/HtcProviderImplContainer;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    return-void
.end method

.method public getMatchTarget(Landroid/net/Uri;)Lcom/android/providers/calendar/AbsHtcFilter;
    .locals 4
    .parameter "uri"

    .prologue
    .line 29
    iget-object v2, p0, Lcom/android/providers/calendar/HtcProviderImplContainer;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/calendar/AbsHtcFilter;

    .line 30
    .local v1, impl:Lcom/android/providers/calendar/AbsHtcFilter;
    iget-object v2, v1, Lcom/android/providers/calendar/AbsHtcFilter;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 34
    .end local v1           #impl:Lcom/android/providers/calendar/AbsHtcFilter;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
