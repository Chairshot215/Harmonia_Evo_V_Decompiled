.class public final enum Lcom/google/android/talk/loaders/RosterListLoader$SortMode;
.super Ljava/lang/Enum;
.source "RosterListLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/loaders/RosterListLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SortMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/talk/loaders/RosterListLoader$SortMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/talk/loaders/RosterListLoader$SortMode;

.field public static final enum ACTIVE_ALPHABETICAL:Lcom/google/android/talk/loaders/RosterListLoader$SortMode;

.field public static final enum ACTIVE_STATUS_ALPHABETICAL:Lcom/google/android/talk/loaders/RosterListLoader$SortMode;

.field public static final enum RECENCY_ALPHABETICAL:Lcom/google/android/talk/loaders/RosterListLoader$SortMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 96
    new-instance v0, Lcom/google/android/talk/loaders/RosterListLoader$SortMode;

    const-string v1, "ACTIVE_STATUS_ALPHABETICAL"

    invoke-direct {v0, v1, v2}, Lcom/google/android/talk/loaders/RosterListLoader$SortMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/talk/loaders/RosterListLoader$SortMode;->ACTIVE_STATUS_ALPHABETICAL:Lcom/google/android/talk/loaders/RosterListLoader$SortMode;

    new-instance v0, Lcom/google/android/talk/loaders/RosterListLoader$SortMode;

    const-string v1, "RECENCY_ALPHABETICAL"

    invoke-direct {v0, v1, v3}, Lcom/google/android/talk/loaders/RosterListLoader$SortMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/talk/loaders/RosterListLoader$SortMode;->RECENCY_ALPHABETICAL:Lcom/google/android/talk/loaders/RosterListLoader$SortMode;

    new-instance v0, Lcom/google/android/talk/loaders/RosterListLoader$SortMode;

    const-string v1, "ACTIVE_ALPHABETICAL"

    invoke-direct {v0, v1, v4}, Lcom/google/android/talk/loaders/RosterListLoader$SortMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/talk/loaders/RosterListLoader$SortMode;->ACTIVE_ALPHABETICAL:Lcom/google/android/talk/loaders/RosterListLoader$SortMode;

    .line 95
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/talk/loaders/RosterListLoader$SortMode;

    sget-object v1, Lcom/google/android/talk/loaders/RosterListLoader$SortMode;->ACTIVE_STATUS_ALPHABETICAL:Lcom/google/android/talk/loaders/RosterListLoader$SortMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/talk/loaders/RosterListLoader$SortMode;->RECENCY_ALPHABETICAL:Lcom/google/android/talk/loaders/RosterListLoader$SortMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/talk/loaders/RosterListLoader$SortMode;->ACTIVE_ALPHABETICAL:Lcom/google/android/talk/loaders/RosterListLoader$SortMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/talk/loaders/RosterListLoader$SortMode;->$VALUES:[Lcom/google/android/talk/loaders/RosterListLoader$SortMode;

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
    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/talk/loaders/RosterListLoader$SortMode;
    .locals 1
    .parameter

    .prologue
    .line 95
    const-class v0, Lcom/google/android/talk/loaders/RosterListLoader$SortMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/loaders/RosterListLoader$SortMode;

    return-object v0
.end method

.method public static values()[Lcom/google/android/talk/loaders/RosterListLoader$SortMode;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/google/android/talk/loaders/RosterListLoader$SortMode;->$VALUES:[Lcom/google/android/talk/loaders/RosterListLoader$SortMode;

    invoke-virtual {v0}, [Lcom/google/android/talk/loaders/RosterListLoader$SortMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/talk/loaders/RosterListLoader$SortMode;

    return-object v0
.end method
