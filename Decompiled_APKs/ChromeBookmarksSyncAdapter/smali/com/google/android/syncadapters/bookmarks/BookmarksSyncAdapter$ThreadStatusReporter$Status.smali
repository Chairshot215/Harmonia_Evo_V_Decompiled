.class public final enum Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;
.super Ljava/lang/Enum;
.source "BookmarksSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

.field public static final enum ERROR_AUTH:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

.field public static final enum ERROR_DB:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

.field public static final enum ERROR_NETWORK:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

.field public static final enum ERROR_PARSE:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

.field public static final enum ERROR_PROTOCOL_HOSED:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

.field public static final enum ERROR_PROTOCOL_INCREMENTAL_SYNC_UNAVAILABLE:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

.field public static final enum ERROR_PROTOCOL_RECOVERABLE:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

.field public static final enum OK:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

.field public static final enum PENDING:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 165
    new-instance v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

    const-string v1, "OK"

    invoke-direct {v0, v1, v3}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;->OK:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

    .line 166
    new-instance v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v4}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;->PENDING:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

    .line 167
    new-instance v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

    const-string v1, "ERROR_PARSE"

    invoke-direct {v0, v1, v5}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;->ERROR_PARSE:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

    .line 168
    new-instance v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

    const-string v1, "ERROR_DB"

    invoke-direct {v0, v1, v6}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;->ERROR_DB:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

    .line 169
    new-instance v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

    const-string v1, "ERROR_NETWORK"

    invoke-direct {v0, v1, v7}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;->ERROR_NETWORK:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

    .line 170
    new-instance v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

    const-string v1, "ERROR_AUTH"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;->ERROR_AUTH:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

    .line 171
    new-instance v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

    const-string v1, "ERROR_PROTOCOL_RECOVERABLE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;->ERROR_PROTOCOL_RECOVERABLE:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

    .line 172
    new-instance v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

    const-string v1, "ERROR_PROTOCOL_HOSED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;->ERROR_PROTOCOL_HOSED:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

    .line 173
    new-instance v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

    const-string v1, "ERROR_PROTOCOL_INCREMENTAL_SYNC_UNAVAILABLE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;->ERROR_PROTOCOL_INCREMENTAL_SYNC_UNAVAILABLE:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

    .line 164
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

    sget-object v1, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;->OK:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;->PENDING:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;->ERROR_PARSE:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;->ERROR_DB:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;->ERROR_NETWORK:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;->ERROR_AUTH:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;->ERROR_PROTOCOL_RECOVERABLE:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;->ERROR_PROTOCOL_HOSED:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;->ERROR_PROTOCOL_INCREMENTAL_SYNC_UNAVAILABLE:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;->$VALUES:[Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 164
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;
    .locals 1
    .parameter

    .prologue
    .line 164
    const-class v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

    return-object v0
.end method

.method public static values()[Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;
    .locals 1

    .prologue
    .line 164
    sget-object v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;->$VALUES:[Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

    invoke-virtual {v0}, [Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

    return-object v0
.end method


# virtual methods
.method public hasFailed()Z
    .locals 1

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;->hasSucceededOrPending()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSucceededOrPending()Z
    .locals 1

    .prologue
    .line 176
    sget-object v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;->OK:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;->PENDING:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
