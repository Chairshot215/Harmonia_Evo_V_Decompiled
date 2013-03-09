.class public Lcom/google/android/gm/provider/MessageCursorLoader;
.super Landroid/content/Loader;
.source "MessageCursorLoader.java"

# interfaces
.implements Landroid/content/Loader$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/Loader",
        "<",
        "Lcom/google/android/gm/provider/Gmail$MessageCursor;",
        ">;",
        "Landroid/content/Loader$OnLoadCompleteListener",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAccount:Ljava/lang/String;

.field private final mUnderlying:Landroid/content/CursorLoader;

.field private final mUri:Landroid/net/Uri;

.field private mUseCache:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 8
    .parameter "context"
    .parameter "account"
    .parameter "uri"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 40
    invoke-direct {p0, p1}, Landroid/content/Loader;-><init>(Landroid/content/Context;)V

    .line 42
    iput-boolean v7, p0, Lcom/google/android/gm/provider/MessageCursorLoader;->mUseCache:Z

    .line 43
    iput-object p3, p0, Lcom/google/android/gm/provider/MessageCursorLoader;->mUri:Landroid/net/Uri;

    .line 45
    new-instance v0, Landroid/content/CursorLoader;

    invoke-direct {p0}, Lcom/google/android/gm/provider/MessageCursorLoader;->getMessageQueryUri()Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/google/android/gm/provider/Gmail;->MESSAGE_PROJECTION:[Ljava/lang/String;

    move-object v1, p1

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gm/provider/MessageCursorLoader;->mUnderlying:Landroid/content/CursorLoader;

    .line 47
    iget-object v0, p0, Lcom/google/android/gm/provider/MessageCursorLoader;->mUnderlying:Landroid/content/CursorLoader;

    invoke-virtual {v0, v7, p0}, Landroid/content/CursorLoader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    .line 49
    iput-object p2, p0, Lcom/google/android/gm/provider/MessageCursorLoader;->mAccount:Ljava/lang/String;

    .line 50
    return-void
.end method

.method private getMessageQueryUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/gm/provider/MessageCursorLoader;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "useCache"

    iget-boolean v0, p0, Lcom/google/android/gm/provider/MessageCursorLoader;->mUseCache:Z

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "useMatrixCursor"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method


# virtual methods
.method public isAbandoned()Z
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/gm/provider/MessageCursorLoader;->mUnderlying:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/CursorLoader;->isAbandoned()Z

    move-result v0

    return v0
.end method

.method public isReset()Z
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/gm/provider/MessageCursorLoader;->mUnderlying:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/CursorLoader;->isReset()Z

    move-result v0

    return v0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/gm/provider/MessageCursorLoader;->mUnderlying:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/CursorLoader;->isStarted()Z

    move-result v0

    return v0
.end method

.method protected onAbandon()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/gm/provider/MessageCursorLoader;->mUnderlying:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/CursorLoader;->abandon()V

    .line 75
    return-void
.end method

.method protected onForceLoad()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/gm/provider/MessageCursorLoader;->mUnderlying:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/CursorLoader;->forceLoad()V

    .line 55
    return-void
.end method

.method public onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 4
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
    .line 98
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MessageCursorLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 99
    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v1, Lcom/google/android/gm/provider/Gmail$MessageCursor;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iget-object v3, p0, Lcom/google/android/gm/provider/MessageCursorLoader;->mAccount:Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3, p2}, Lcom/google/android/gm/provider/Gmail$MessageCursor;-><init>(Landroid/os/Handler;Landroid/content/ContentResolver;Ljava/lang/String;Landroid/database/Cursor;)V

    .line 100
    .local v1, result:Lcom/google/android/gm/provider/Gmail$MessageCursor;
    invoke-virtual {p0, v1}, Lcom/google/android/gm/provider/MessageCursorLoader;->deliverResult(Ljava/lang/Object;)V

    .line 102
    iget-boolean v2, p0, Lcom/google/android/gm/provider/MessageCursorLoader;->mUseCache:Z

    if-nez v2, :cond_0

    .line 104
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gm/provider/MessageCursorLoader;->mUseCache:Z

    .line 105
    iget-object v2, p0, Lcom/google/android/gm/provider/MessageCursorLoader;->mUnderlying:Landroid/content/CursorLoader;

    invoke-direct {p0}, Lcom/google/android/gm/provider/MessageCursorLoader;->getMessageQueryUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 108
    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadComplete(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gm/provider/MessageCursorLoader;->onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/gm/provider/MessageCursorLoader;->mUnderlying:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/CursorLoader;->reset()V

    .line 60
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/gm/provider/MessageCursorLoader;->mUnderlying:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/CursorLoader;->startLoading()V

    .line 65
    return-void
.end method

.method protected onStopLoading()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/gm/provider/MessageCursorLoader;->mUnderlying:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/CursorLoader;->stopLoading()V

    .line 70
    return-void
.end method
