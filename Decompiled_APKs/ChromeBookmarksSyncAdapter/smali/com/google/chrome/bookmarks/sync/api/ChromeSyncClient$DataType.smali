.class public final enum Lcom/google/chrome/bookmarks/sync/api/ChromeSyncClient$DataType;
.super Ljava/lang/Enum;
.source "ChromeSyncClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/chrome/bookmarks/sync/api/ChromeSyncClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/chrome/bookmarks/sync/api/ChromeSyncClient$DataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/chrome/bookmarks/sync/api/ChromeSyncClient$DataType;

.field public static final enum BOOKMARKS:Lcom/google/chrome/bookmarks/sync/api/ChromeSyncClient$DataType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 42
    new-instance v0, Lcom/google/chrome/bookmarks/sync/api/ChromeSyncClient$DataType;

    const-string v1, "BOOKMARKS"

    invoke-direct {v0, v1, v2}, Lcom/google/chrome/bookmarks/sync/api/ChromeSyncClient$DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/chrome/bookmarks/sync/api/ChromeSyncClient$DataType;->BOOKMARKS:Lcom/google/chrome/bookmarks/sync/api/ChromeSyncClient$DataType;

    .line 41
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/chrome/bookmarks/sync/api/ChromeSyncClient$DataType;

    sget-object v1, Lcom/google/chrome/bookmarks/sync/api/ChromeSyncClient$DataType;->BOOKMARKS:Lcom/google/chrome/bookmarks/sync/api/ChromeSyncClient$DataType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/chrome/bookmarks/sync/api/ChromeSyncClient$DataType;->$VALUES:[Lcom/google/chrome/bookmarks/sync/api/ChromeSyncClient$DataType;

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
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/chrome/bookmarks/sync/api/ChromeSyncClient$DataType;
    .locals 1
    .parameter "name"

    .prologue
    .line 41
    const-class v0, Lcom/google/chrome/bookmarks/sync/api/ChromeSyncClient$DataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/chrome/bookmarks/sync/api/ChromeSyncClient$DataType;

    return-object v0
.end method

.method public static values()[Lcom/google/chrome/bookmarks/sync/api/ChromeSyncClient$DataType;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/chrome/bookmarks/sync/api/ChromeSyncClient$DataType;->$VALUES:[Lcom/google/chrome/bookmarks/sync/api/ChromeSyncClient$DataType;

    invoke-virtual {v0}, [Lcom/google/chrome/bookmarks/sync/api/ChromeSyncClient$DataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/chrome/bookmarks/sync/api/ChromeSyncClient$DataType;

    return-object v0
.end method
