.class public final enum Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;
.super Ljava/lang/Enum;
.source "RosterListLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/loaders/RosterListLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FilterMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;

.field public static final enum ALL:Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;

.field public static final enum ALL_MINUS_HIDDEN:Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;

.field public static final enum QUICK_CONTACTS:Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 91
    new-instance v0, Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;

    const-string v1, "QUICK_CONTACTS"

    invoke-direct {v0, v1, v2}, Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;->QUICK_CONTACTS:Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;

    new-instance v0, Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;

    const-string v1, "ALL_MINUS_HIDDEN"

    invoke-direct {v0, v1, v3}, Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;->ALL_MINUS_HIDDEN:Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;

    new-instance v0, Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v4}, Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;->ALL:Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;

    .line 90
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;

    sget-object v1, Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;->QUICK_CONTACTS:Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;->ALL_MINUS_HIDDEN:Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;->ALL:Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;->$VALUES:[Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;

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
    .line 90
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;
    .locals 1
    .parameter

    .prologue
    .line 90
    const-class v0, Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;

    return-object v0
.end method

.method public static values()[Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;->$VALUES:[Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;

    invoke-virtual {v0}, [Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;

    return-object v0
.end method
