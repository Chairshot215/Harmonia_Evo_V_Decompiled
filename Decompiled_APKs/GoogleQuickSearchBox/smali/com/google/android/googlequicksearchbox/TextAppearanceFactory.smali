.class public Lcom/google/android/googlequicksearchbox/TextAppearanceFactory;
.super Ljava/lang/Object;
.source "TextAppearanceFactory.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/TextAppearanceFactory;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method


# virtual methods
.method public createSuggestionQueryTextAppearance()[Ljava/lang/Object;
    .locals 5

    .prologue
    .line 35
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/style/TextAppearanceSpan;

    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/TextAppearanceFactory;->mContext:Landroid/content/Context;

    const v4, 0x7f0e0010

    invoke-direct {v2, v3, v4}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    aput-object v2, v0, v1

    return-object v0
.end method

.method public createSuggestionSuggestedTextAppearance()[Ljava/lang/Object;
    .locals 5

    .prologue
    .line 41
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/style/TextAppearanceSpan;

    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/TextAppearanceFactory;->mContext:Landroid/content/Context;

    const v4, 0x7f0e0011

    invoke-direct {v2, v3, v4}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    aput-object v2, v0, v1

    return-object v0
.end method
