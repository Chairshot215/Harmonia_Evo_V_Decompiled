.class public Lcom/google/android/gm/provider/ConversationCursorLoader;
.super Landroid/content/Loader;
.source "ConversationCursorLoader.java"

# interfaces
.implements Landroid/content/Loader$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/provider/ConversationCursorLoader$ConversationQueryLoader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/Loader",
        "<",
        "Lcom/google/android/gm/provider/Gmail$ConversationCursor;",
        ">;",
        "Landroid/content/Loader$OnLoadCompleteListener",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static sConversationRequeryDelayMs:I

.field private static sInitialQueryLimit:I


# instance fields
.field private final mAccount:Ljava/lang/String;

.field private final mGmail:Lcom/google/android/gm/provider/Gmail;

.field private mQuery:Ljava/lang/String;

.field private final mUnderlying:Lcom/google/android/gm/provider/ConversationCursorLoader$ConversationQueryLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 26
    sput v0, Lcom/google/android/gm/provider/ConversationCursorLoader;->sInitialQueryLimit:I

    .line 27
    sput v0, Lcom/google/android/gm/provider/ConversationCursorLoader;->sConversationRequeryDelayMs:I

    return-void
.end method

.method constructor <init>(Lcom/google/android/gm/provider/Gmail;Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 9
    .parameter "gmail"
    .parameter "context"
    .parameter "account"
    .parameter "uri"
    .parameter "query"
    .parameter "selectionArgs"
    .parameter "shouldLimitInitialResult"

    .prologue
    .line 33
    invoke-direct {p0, p2}, Landroid/content/Loader;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance v0, Lcom/google/android/gm/provider/ConversationCursorLoader$ConversationQueryLoader;

    sget-object v4, Lcom/google/android/gm/provider/Gmail;->CONVERSATION_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gm/provider/ConversationCursorLoader$ConversationQueryLoader;-><init>(Lcom/google/android/gm/provider/ConversationCursorLoader;Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/android/gm/provider/ConversationCursorLoader;->mUnderlying:Lcom/google/android/gm/provider/ConversationCursorLoader$ConversationQueryLoader;

    .line 41
    iget-object v0, p0, Lcom/google/android/gm/provider/ConversationCursorLoader;->mUnderlying:Lcom/google/android/gm/provider/ConversationCursorLoader$ConversationQueryLoader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gm/provider/ConversationCursorLoader$ConversationQueryLoader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    .line 43
    iput-object p1, p0, Lcom/google/android/gm/provider/ConversationCursorLoader;->mGmail:Lcom/google/android/gm/provider/Gmail;

    .line 44
    iput-object p3, p0, Lcom/google/android/gm/provider/ConversationCursorLoader;->mAccount:Ljava/lang/String;

    .line 45
    iput-object p5, p0, Lcom/google/android/gm/provider/ConversationCursorLoader;->mQuery:Ljava/lang/String;

    .line 46
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 19
    sget v0, Lcom/google/android/gm/provider/ConversationCursorLoader;->sInitialQueryLimit:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    sput p0, Lcom/google/android/gm/provider/ConversationCursorLoader;->sInitialQueryLimit:I

    return p0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 19
    sget v0, Lcom/google/android/gm/provider/ConversationCursorLoader;->sConversationRequeryDelayMs:I

    return v0
.end method

.method static synthetic access$102(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    sput p0, Lcom/google/android/gm/provider/ConversationCursorLoader;->sConversationRequeryDelayMs:I

    return p0
.end method


# virtual methods
.method protected onForceLoad()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/gm/provider/ConversationCursorLoader;->mUnderlying:Lcom/google/android/gm/provider/ConversationCursorLoader$ConversationQueryLoader;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/ConversationCursorLoader$ConversationQueryLoader;->forceLoad()V

    .line 51
    return-void
.end method

.method public onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 2
    .parameter
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/google/android/gm/provider/ConversationCursorLoader;->mGmail:Lcom/google/android/gm/provider/Gmail;

    iget-object v1, p0, Lcom/google/android/gm/provider/ConversationCursorLoader;->mAccount:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gm/provider/Gmail;->getConversationCursorForCursor(Ljava/lang/String;Landroid/database/Cursor;)Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/ConversationCursorLoader;->deliverResult(Ljava/lang/Object;)V

    .line 75
    return-void
.end method

.method public bridge synthetic onLoadComplete(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gm/provider/ConversationCursorLoader;->onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/gm/provider/ConversationCursorLoader;->mUnderlying:Lcom/google/android/gm/provider/ConversationCursorLoader$ConversationQueryLoader;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/ConversationCursorLoader$ConversationQueryLoader;->reset()V

    .line 56
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/gm/provider/ConversationCursorLoader;->mUnderlying:Lcom/google/android/gm/provider/ConversationCursorLoader$ConversationQueryLoader;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/ConversationCursorLoader$ConversationQueryLoader;->startLoading()V

    .line 61
    return-void
.end method

.method protected onStopLoading()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/gm/provider/ConversationCursorLoader;->mUnderlying:Lcom/google/android/gm/provider/ConversationCursorLoader$ConversationQueryLoader;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/ConversationCursorLoader$ConversationQueryLoader;->stopLoading()V

    .line 66
    return-void
.end method
