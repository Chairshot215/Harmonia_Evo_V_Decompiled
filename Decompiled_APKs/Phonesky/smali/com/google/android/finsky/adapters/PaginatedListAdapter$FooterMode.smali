.class public final enum Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;
.super Ljava/lang/Enum;
.source "PaginatedListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/adapters/PaginatedListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "FooterMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

.field public static final enum ERROR:Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

.field public static final enum LOADING:Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

.field public static final enum NONE:Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;->NONE:Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    new-instance v0, Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;->LOADING:Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    new-instance v0, Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v4}, Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;->ERROR:Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    .line 32
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    sget-object v1, Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;->NONE:Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;->LOADING:Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;->ERROR:Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;->$VALUES:[Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

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
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;
    .locals 1
    .parameter

    .prologue
    .line 32
    const-class v0, Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    return-object v0
.end method

.method public static values()[Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;->$VALUES:[Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    invoke-virtual {v0}, [Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    return-object v0
.end method
