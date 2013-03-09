.class public final enum Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;
.super Ljava/lang/Enum;
.source "InstallerDataStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/appstate/InstallerDataStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AutoUpdateState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

.field public static final enum DEFAULT:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

.field public static final enum DISABLED:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

.field public static final enum ENABLED:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;->DEFAULT:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    new-instance v0, Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    const-string v1, "ENABLED"

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;->ENABLED:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    new-instance v0, Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    const-string v1, "DISABLED"

    invoke-direct {v0, v1, v4}, Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;->DISABLED:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    .line 18
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    sget-object v1, Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;->DEFAULT:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;->ENABLED:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;->DISABLED:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;->$VALUES:[Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(I)Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;
    .locals 7
    .parameter "ordinal"

    .prologue
    .line 22
    invoke-static {}, Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;->values()[Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    move-result-object v0

    .local v0, arr$:[Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 23
    .local v3, state:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;
    invoke-virtual {v3}, Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;->ordinal()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 24
    return-object v3

    .line 22
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 27
    .end local v3           #state:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown ordinal: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;
    .locals 1
    .parameter

    .prologue
    .line 18
    const-class v0, Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    return-object v0
.end method

.method public static values()[Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;->$VALUES:[Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    invoke-virtual {v0}, [Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    return-object v0
.end method
