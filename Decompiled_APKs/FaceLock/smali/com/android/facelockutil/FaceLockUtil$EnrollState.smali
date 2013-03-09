.class public final enum Lcom/android/facelockutil/FaceLockUtil$EnrollState;
.super Ljava/lang/Enum;
.source "FaceLockUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/facelockutil/FaceLockUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EnrollState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/facelockutil/FaceLockUtil$EnrollState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/facelockutil/FaceLockUtil$EnrollState;

.field public static final enum DONE:Lcom/android/facelockutil/FaceLockUtil$EnrollState;

.field public static final enum ERROR:Lcom/android/facelockutil/FaceLockUtil$EnrollState;

.field public static final enum FACE:Lcom/android/facelockutil/FaceLockUtil$EnrollState;

.field public static final enum NO_FACE:Lcom/android/facelockutil/FaceLockUtil$EnrollState;

.field public static final enum NO_LANDMARKS:Lcom/android/facelockutil/FaceLockUtil$EnrollState;

.field public static final enum OFF_CENTER:Lcom/android/facelockutil/FaceLockUtil$EnrollState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 20
    new-instance v0, Lcom/android/facelockutil/FaceLockUtil$EnrollState;

    const-string v1, "FACE"

    invoke-direct {v0, v1, v3}, Lcom/android/facelockutil/FaceLockUtil$EnrollState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/facelockutil/FaceLockUtil$EnrollState;->FACE:Lcom/android/facelockutil/FaceLockUtil$EnrollState;

    .line 21
    new-instance v0, Lcom/android/facelockutil/FaceLockUtil$EnrollState;

    const-string v1, "NO_FACE"

    invoke-direct {v0, v1, v4}, Lcom/android/facelockutil/FaceLockUtil$EnrollState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/facelockutil/FaceLockUtil$EnrollState;->NO_FACE:Lcom/android/facelockutil/FaceLockUtil$EnrollState;

    .line 22
    new-instance v0, Lcom/android/facelockutil/FaceLockUtil$EnrollState;

    const-string v1, "NO_LANDMARKS"

    invoke-direct {v0, v1, v5}, Lcom/android/facelockutil/FaceLockUtil$EnrollState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/facelockutil/FaceLockUtil$EnrollState;->NO_LANDMARKS:Lcom/android/facelockutil/FaceLockUtil$EnrollState;

    .line 23
    new-instance v0, Lcom/android/facelockutil/FaceLockUtil$EnrollState;

    const-string v1, "OFF_CENTER"

    invoke-direct {v0, v1, v6}, Lcom/android/facelockutil/FaceLockUtil$EnrollState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/facelockutil/FaceLockUtil$EnrollState;->OFF_CENTER:Lcom/android/facelockutil/FaceLockUtil$EnrollState;

    .line 24
    new-instance v0, Lcom/android/facelockutil/FaceLockUtil$EnrollState;

    const-string v1, "DONE"

    invoke-direct {v0, v1, v7}, Lcom/android/facelockutil/FaceLockUtil$EnrollState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/facelockutil/FaceLockUtil$EnrollState;->DONE:Lcom/android/facelockutil/FaceLockUtil$EnrollState;

    .line 25
    new-instance v0, Lcom/android/facelockutil/FaceLockUtil$EnrollState;

    const-string v1, "ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/facelockutil/FaceLockUtil$EnrollState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/facelockutil/FaceLockUtil$EnrollState;->ERROR:Lcom/android/facelockutil/FaceLockUtil$EnrollState;

    .line 19
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/facelockutil/FaceLockUtil$EnrollState;

    sget-object v1, Lcom/android/facelockutil/FaceLockUtil$EnrollState;->FACE:Lcom/android/facelockutil/FaceLockUtil$EnrollState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/facelockutil/FaceLockUtil$EnrollState;->NO_FACE:Lcom/android/facelockutil/FaceLockUtil$EnrollState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/facelockutil/FaceLockUtil$EnrollState;->NO_LANDMARKS:Lcom/android/facelockutil/FaceLockUtil$EnrollState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/facelockutil/FaceLockUtil$EnrollState;->OFF_CENTER:Lcom/android/facelockutil/FaceLockUtil$EnrollState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/facelockutil/FaceLockUtil$EnrollState;->DONE:Lcom/android/facelockutil/FaceLockUtil$EnrollState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/facelockutil/FaceLockUtil$EnrollState;->ERROR:Lcom/android/facelockutil/FaceLockUtil$EnrollState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/facelockutil/FaceLockUtil$EnrollState;->$VALUES:[Lcom/android/facelockutil/FaceLockUtil$EnrollState;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/facelockutil/FaceLockUtil$EnrollState;
    .locals 1
    .parameter

    .prologue
    .line 19
    const-class v0, Lcom/android/facelockutil/FaceLockUtil$EnrollState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/facelockutil/FaceLockUtil$EnrollState;

    return-object v0
.end method

.method public static values()[Lcom/android/facelockutil/FaceLockUtil$EnrollState;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/android/facelockutil/FaceLockUtil$EnrollState;->$VALUES:[Lcom/android/facelockutil/FaceLockUtil$EnrollState;

    invoke-virtual {v0}, [Lcom/android/facelockutil/FaceLockUtil$EnrollState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/facelockutil/FaceLockUtil$EnrollState;

    return-object v0
.end method
