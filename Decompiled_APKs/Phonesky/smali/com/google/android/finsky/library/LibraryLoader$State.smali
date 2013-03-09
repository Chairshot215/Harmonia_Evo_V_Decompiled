.class final enum Lcom/google/android/finsky/library/LibraryLoader$State;
.super Ljava/lang/Enum;
.source "LibraryLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/library/LibraryLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/library/LibraryLoader$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/library/LibraryLoader$State;

.field public static final enum LOADED:Lcom/google/android/finsky/library/LibraryLoader$State;

.field public static final enum LOADING:Lcom/google/android/finsky/library/LibraryLoader$State;

.field public static final enum UNINITIALIZED:Lcom/google/android/finsky/library/LibraryLoader$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    new-instance v0, Lcom/google/android/finsky/library/LibraryLoader$State;

    const-string v1, "UNINITIALIZED"

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/library/LibraryLoader$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/library/LibraryLoader$State;->UNINITIALIZED:Lcom/google/android/finsky/library/LibraryLoader$State;

    .line 32
    new-instance v0, Lcom/google/android/finsky/library/LibraryLoader$State;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/library/LibraryLoader$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/library/LibraryLoader$State;->LOADING:Lcom/google/android/finsky/library/LibraryLoader$State;

    .line 34
    new-instance v0, Lcom/google/android/finsky/library/LibraryLoader$State;

    const-string v1, "LOADED"

    invoke-direct {v0, v1, v4}, Lcom/google/android/finsky/library/LibraryLoader$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/library/LibraryLoader$State;->LOADED:Lcom/google/android/finsky/library/LibraryLoader$State;

    .line 28
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/finsky/library/LibraryLoader$State;

    sget-object v1, Lcom/google/android/finsky/library/LibraryLoader$State;->UNINITIALIZED:Lcom/google/android/finsky/library/LibraryLoader$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/finsky/library/LibraryLoader$State;->LOADING:Lcom/google/android/finsky/library/LibraryLoader$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/finsky/library/LibraryLoader$State;->LOADED:Lcom/google/android/finsky/library/LibraryLoader$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/finsky/library/LibraryLoader$State;->$VALUES:[Lcom/google/android/finsky/library/LibraryLoader$State;

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
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/library/LibraryLoader$State;
    .locals 1
    .parameter

    .prologue
    .line 28
    const-class v0, Lcom/google/android/finsky/library/LibraryLoader$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/library/LibraryLoader$State;

    return-object v0
.end method

.method public static values()[Lcom/google/android/finsky/library/LibraryLoader$State;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/google/android/finsky/library/LibraryLoader$State;->$VALUES:[Lcom/google/android/finsky/library/LibraryLoader$State;

    invoke-virtual {v0}, [Lcom/google/android/finsky/library/LibraryLoader$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/library/LibraryLoader$State;

    return-object v0
.end method
