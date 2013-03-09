.class public Lcom/google/android/marvin/talkback/StatusProvider;
.super Landroid/content/ContentProvider;
.source "StatusProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/marvin/talkback/StatusProvider$StatusCursor;
    }
.end annotation


# static fields
.field private static final DISABLED:I = 0x2

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String; = null

.field private static final ENABLED:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 56
    const-string v2, ""

    aput-object v2, v0, v1

    .line 55
    sput-object v0, Lcom/google/android/marvin/talkback/StatusProvider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method static synthetic access$0()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/google/android/marvin/talkback/StatusProvider;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 108
    new-instance v0, Lcom/google/android/marvin/talkback/StatusProvider$StatusCursor;

    invoke-direct {v0, p0}, Lcom/google/android/marvin/talkback/StatusProvider$StatusCursor;-><init>(Lcom/google/android/marvin/talkback/StatusProvider;)V

    .line 110
    .local v0, cursor:Lcom/google/android/marvin/talkback/StatusProvider$StatusCursor;
    invoke-static {}, Lcom/google/android/marvin/talkback/TalkBackService;->isServiceInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/marvin/talkback/StatusProvider$StatusCursor;->setStatus(I)V

    .line 116
    :goto_0
    return-object v0

    .line 113
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/marvin/talkback/StatusProvider$StatusCursor;->setStatus(I)V

    goto :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method
