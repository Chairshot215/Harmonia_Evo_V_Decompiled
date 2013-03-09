.class public final enum Lcom/google/android/gm/provider/Gmail$CursorError;
.super Ljava/lang/Enum;
.source "Gmail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/provider/Gmail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CursorError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gm/provider/Gmail$CursorError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/gm/provider/Gmail$CursorError;

.field public static final enum AUTH_ERROR:Lcom/google/android/gm/provider/Gmail$CursorError;

.field public static final enum DB_ERROR:Lcom/google/android/gm/provider/Gmail$CursorError;

.field public static final enum IO_ERROR:Lcom/google/android/gm/provider/Gmail$CursorError;

.field public static final enum NO_ERROR:Lcom/google/android/gm/provider/Gmail$CursorError;

.field public static final enum PARSE_ERROR:Lcom/google/android/gm/provider/Gmail$CursorError;

.field public static final enum UNKNOWN_ERROR:Lcom/google/android/gm/provider/Gmail$CursorError;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2915
    new-instance v0, Lcom/google/android/gm/provider/Gmail$CursorError;

    const-string v1, "NO_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gm/provider/Gmail$CursorError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gm/provider/Gmail$CursorError;->NO_ERROR:Lcom/google/android/gm/provider/Gmail$CursorError;

    .line 2916
    new-instance v0, Lcom/google/android/gm/provider/Gmail$CursorError;

    const-string v1, "IO_ERROR"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gm/provider/Gmail$CursorError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gm/provider/Gmail$CursorError;->IO_ERROR:Lcom/google/android/gm/provider/Gmail$CursorError;

    .line 2917
    new-instance v0, Lcom/google/android/gm/provider/Gmail$CursorError;

    const-string v1, "AUTH_ERROR"

    invoke-direct {v0, v1, v5}, Lcom/google/android/gm/provider/Gmail$CursorError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gm/provider/Gmail$CursorError;->AUTH_ERROR:Lcom/google/android/gm/provider/Gmail$CursorError;

    .line 2918
    new-instance v0, Lcom/google/android/gm/provider/Gmail$CursorError;

    const-string v1, "PARSE_ERROR"

    invoke-direct {v0, v1, v6}, Lcom/google/android/gm/provider/Gmail$CursorError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gm/provider/Gmail$CursorError;->PARSE_ERROR:Lcom/google/android/gm/provider/Gmail$CursorError;

    .line 2919
    new-instance v0, Lcom/google/android/gm/provider/Gmail$CursorError;

    const-string v1, "DB_ERROR"

    invoke-direct {v0, v1, v7}, Lcom/google/android/gm/provider/Gmail$CursorError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gm/provider/Gmail$CursorError;->DB_ERROR:Lcom/google/android/gm/provider/Gmail$CursorError;

    .line 2920
    new-instance v0, Lcom/google/android/gm/provider/Gmail$CursorError;

    const-string v1, "UNKNOWN_ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/gm/provider/Gmail$CursorError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gm/provider/Gmail$CursorError;->UNKNOWN_ERROR:Lcom/google/android/gm/provider/Gmail$CursorError;

    .line 2914
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/android/gm/provider/Gmail$CursorError;

    sget-object v1, Lcom/google/android/gm/provider/Gmail$CursorError;->NO_ERROR:Lcom/google/android/gm/provider/Gmail$CursorError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gm/provider/Gmail$CursorError;->IO_ERROR:Lcom/google/android/gm/provider/Gmail$CursorError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gm/provider/Gmail$CursorError;->AUTH_ERROR:Lcom/google/android/gm/provider/Gmail$CursorError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gm/provider/Gmail$CursorError;->PARSE_ERROR:Lcom/google/android/gm/provider/Gmail$CursorError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/gm/provider/Gmail$CursorError;->DB_ERROR:Lcom/google/android/gm/provider/Gmail$CursorError;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/gm/provider/Gmail$CursorError;->UNKNOWN_ERROR:Lcom/google/android/gm/provider/Gmail$CursorError;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gm/provider/Gmail$CursorError;->$VALUES:[Lcom/google/android/gm/provider/Gmail$CursorError;

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
    .line 2914
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gm/provider/Gmail$CursorError;
    .locals 1
    .parameter

    .prologue
    .line 2914
    const-class v0, Lcom/google/android/gm/provider/Gmail$CursorError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/Gmail$CursorError;

    return-object v0
.end method

.method public static values()[Lcom/google/android/gm/provider/Gmail$CursorError;
    .locals 1

    .prologue
    .line 2914
    sget-object v0, Lcom/google/android/gm/provider/Gmail$CursorError;->$VALUES:[Lcom/google/android/gm/provider/Gmail$CursorError;

    invoke-virtual {v0}, [Lcom/google/android/gm/provider/Gmail$CursorError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gm/provider/Gmail$CursorError;

    return-object v0
.end method
