.class Lcom/google/android/gm/provider/ConversationCursorLoader$ConversationQueryLoader;
.super Landroid/content/CursorLoader;
.source "ConversationCursorLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/provider/ConversationCursorLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConversationQueryLoader"
.end annotation


# instance fields
.field private final mBaseUri:Landroid/net/Uri;

.field private mReceivedInitialResults:Z

.field final synthetic this$0:Lcom/google/android/gm/provider/ConversationCursorLoader;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/provider/ConversationCursorLoader;Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .parameter
    .parameter "context"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "shouldLimitInitialResult"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/google/android/gm/provider/ConversationCursorLoader$ConversationQueryLoader;->this$0:Lcom/google/android/gm/provider/ConversationCursorLoader;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    .line 98
    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/provider/ConversationCursorLoader$ConversationQueryLoader;->mReceivedInitialResults:Z

    .line 99
    iput-object p3, p0, Lcom/google/android/gm/provider/ConversationCursorLoader$ConversationQueryLoader;->mBaseUri:Landroid/net/Uri;

    .line 101
    invoke-static {}, Lcom/google/android/gm/provider/ConversationCursorLoader;->access$000()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 102
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gm/provider/ConversationCursorLoader;->access$002(I)I

    .line 104
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gm/provider/ConversationCursorLoader;->access$102(I)I

    .line 107
    :cond_0
    if-eqz p8, :cond_1

    .line 108
    invoke-static {}, Lcom/google/android/gm/provider/ConversationCursorLoader;->access$000()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/ConversationCursorLoader$ConversationQueryLoader;->uriWithLimitParam(I)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/ConversationCursorLoader$ConversationQueryLoader;->setUri(Landroid/net/Uri;)V

    .line 113
    :goto_0
    invoke-static {}, Lcom/google/android/gm/provider/ConversationCursorLoader;->access$100()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gm/provider/ConversationCursorLoader$ConversationQueryLoader;->setUpdateThrottle(J)V

    .line 114
    return-void

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/provider/ConversationCursorLoader$ConversationQueryLoader;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/ConversationCursorLoader$ConversationQueryLoader;->setUri(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method private uriWithLimitParam(I)Landroid/net/Uri;
    .locals 3
    .parameter "limit"

    .prologue
    .line 129
    iget-object v1, p0, Lcom/google/android/gm/provider/ConversationCursorLoader$ConversationQueryLoader;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 130
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v1, "limit"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public deliverResult(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 118
    invoke-super {p0, p1}, Landroid/content/CursorLoader;->deliverResult(Landroid/database/Cursor;)V

    .line 121
    iget-boolean v0, p0, Lcom/google/android/gm/provider/ConversationCursorLoader$ConversationQueryLoader;->mReceivedInitialResults:Z

    if-nez v0, :cond_0

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/provider/ConversationCursorLoader$ConversationQueryLoader;->mReceivedInitialResults:Z

    .line 123
    iget-object v0, p0, Lcom/google/android/gm/provider/ConversationCursorLoader$ConversationQueryLoader;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/ConversationCursorLoader$ConversationQueryLoader;->setUri(Landroid/net/Uri;)V

    .line 124
    invoke-virtual {p0}, Lcom/google/android/gm/provider/ConversationCursorLoader$ConversationQueryLoader;->forceLoad()V

    .line 126
    :cond_0
    return-void
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    check-cast p1, Landroid/database/Cursor;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/gm/provider/ConversationCursorLoader$ConversationQueryLoader;->deliverResult(Landroid/database/Cursor;)V

    return-void
.end method
