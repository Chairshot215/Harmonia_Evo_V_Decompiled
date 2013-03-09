.class public final enum Lcom/android/facelockutil/FaceLockUtil$CompareState;
.super Ljava/lang/Enum;
.source "FaceLockUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/facelockutil/FaceLockUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CompareState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/facelockutil/FaceLockUtil$CompareState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/facelockutil/FaceLockUtil$CompareState;

.field public static final enum COMPARE_STATE_ALLOW:Lcom/android/facelockutil/FaceLockUtil$CompareState;

.field public static final enum COMPARE_STATE_DENY:Lcom/android/facelockutil/FaceLockUtil$CompareState;

.field public static final enum COMPARE_STATE_ERROR:Lcom/android/facelockutil/FaceLockUtil$CompareState;

.field public static final enum COMPARE_STATE_MAYBE:Lcom/android/facelockutil/FaceLockUtil$CompareState;

.field public static final enum COMPARE_STATE_NO_FACE:Lcom/android/facelockutil/FaceLockUtil$CompareState;

.field public static final enum COMPARE_STATE_NO_LANDMARKS:Lcom/android/facelockutil/FaceLockUtil$CompareState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 30
    new-instance v0, Lcom/android/facelockutil/FaceLockUtil$CompareState;

    const-string v1, "COMPARE_STATE_ALLOW"

    invoke-direct {v0, v1, v3}, Lcom/android/facelockutil/FaceLockUtil$CompareState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/facelockutil/FaceLockUtil$CompareState;->COMPARE_STATE_ALLOW:Lcom/android/facelockutil/FaceLockUtil$CompareState;

    .line 31
    new-instance v0, Lcom/android/facelockutil/FaceLockUtil$CompareState;

    const-string v1, "COMPARE_STATE_DENY"

    invoke-direct {v0, v1, v4}, Lcom/android/facelockutil/FaceLockUtil$CompareState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/facelockutil/FaceLockUtil$CompareState;->COMPARE_STATE_DENY:Lcom/android/facelockutil/FaceLockUtil$CompareState;

    .line 32
    new-instance v0, Lcom/android/facelockutil/FaceLockUtil$CompareState;

    const-string v1, "COMPARE_STATE_MAYBE"

    invoke-direct {v0, v1, v5}, Lcom/android/facelockutil/FaceLockUtil$CompareState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/facelockutil/FaceLockUtil$CompareState;->COMPARE_STATE_MAYBE:Lcom/android/facelockutil/FaceLockUtil$CompareState;

    .line 33
    new-instance v0, Lcom/android/facelockutil/FaceLockUtil$CompareState;

    const-string v1, "COMPARE_STATE_NO_FACE"

    invoke-direct {v0, v1, v6}, Lcom/android/facelockutil/FaceLockUtil$CompareState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/facelockutil/FaceLockUtil$CompareState;->COMPARE_STATE_NO_FACE:Lcom/android/facelockutil/FaceLockUtil$CompareState;

    .line 34
    new-instance v0, Lcom/android/facelockutil/FaceLockUtil$CompareState;

    const-string v1, "COMPARE_STATE_NO_LANDMARKS"

    invoke-direct {v0, v1, v7}, Lcom/android/facelockutil/FaceLockUtil$CompareState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/facelockutil/FaceLockUtil$CompareState;->COMPARE_STATE_NO_LANDMARKS:Lcom/android/facelockutil/FaceLockUtil$CompareState;

    .line 35
    new-instance v0, Lcom/android/facelockutil/FaceLockUtil$CompareState;

    const-string v1, "COMPARE_STATE_ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/facelockutil/FaceLockUtil$CompareState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/facelockutil/FaceLockUtil$CompareState;->COMPARE_STATE_ERROR:Lcom/android/facelockutil/FaceLockUtil$CompareState;

    .line 29
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/facelockutil/FaceLockUtil$CompareState;

    sget-object v1, Lcom/android/facelockutil/FaceLockUtil$CompareState;->COMPARE_STATE_ALLOW:Lcom/android/facelockutil/FaceLockUtil$CompareState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/facelockutil/FaceLockUtil$CompareState;->COMPARE_STATE_DENY:Lcom/android/facelockutil/FaceLockUtil$CompareState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/facelockutil/FaceLockUtil$CompareState;->COMPARE_STATE_MAYBE:Lcom/android/facelockutil/FaceLockUtil$CompareState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/facelockutil/FaceLockUtil$CompareState;->COMPARE_STATE_NO_FACE:Lcom/android/facelockutil/FaceLockUtil$CompareState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/facelockutil/FaceLockUtil$CompareState;->COMPARE_STATE_NO_LANDMARKS:Lcom/android/facelockutil/FaceLockUtil$CompareState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/facelockutil/FaceLockUtil$CompareState;->COMPARE_STATE_ERROR:Lcom/android/facelockutil/FaceLockUtil$CompareState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/facelockutil/FaceLockUtil$CompareState;->$VALUES:[Lcom/android/facelockutil/FaceLockUtil$CompareState;

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
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/facelockutil/FaceLockUtil$CompareState;
    .locals 1
    .parameter

    .prologue
    .line 29
    const-class v0, Lcom/android/facelockutil/FaceLockUtil$CompareState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/facelockutil/FaceLockUtil$CompareState;

    return-object v0
.end method

.method public static values()[Lcom/android/facelockutil/FaceLockUtil$CompareState;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/android/facelockutil/FaceLockUtil$CompareState;->$VALUES:[Lcom/android/facelockutil/FaceLockUtil$CompareState;

    invoke-virtual {v0}, [Lcom/android/facelockutil/FaceLockUtil$CompareState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/facelockutil/FaceLockUtil$CompareState;

    return-object v0
.end method
