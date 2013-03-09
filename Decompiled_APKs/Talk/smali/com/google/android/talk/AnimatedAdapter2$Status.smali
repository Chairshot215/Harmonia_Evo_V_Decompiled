.class public final enum Lcom/google/android/talk/AnimatedAdapter2$Status;
.super Ljava/lang/Enum;
.source "AnimatedAdapter2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/AnimatedAdapter2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/talk/AnimatedAdapter2$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/talk/AnimatedAdapter2$Status;

.field public static final enum Added:Lcom/google/android/talk/AnimatedAdapter2$Status;

.field public static final enum Deleted:Lcom/google/android/talk/AnimatedAdapter2$Status;

.field public static final enum Normal:Lcom/google/android/talk/AnimatedAdapter2$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 992
    new-instance v0, Lcom/google/android/talk/AnimatedAdapter2$Status;

    const-string v1, "Normal"

    invoke-direct {v0, v1, v2}, Lcom/google/android/talk/AnimatedAdapter2$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/talk/AnimatedAdapter2$Status;->Normal:Lcom/google/android/talk/AnimatedAdapter2$Status;

    .line 993
    new-instance v0, Lcom/google/android/talk/AnimatedAdapter2$Status;

    const-string v1, "Deleted"

    invoke-direct {v0, v1, v3}, Lcom/google/android/talk/AnimatedAdapter2$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/talk/AnimatedAdapter2$Status;->Deleted:Lcom/google/android/talk/AnimatedAdapter2$Status;

    .line 994
    new-instance v0, Lcom/google/android/talk/AnimatedAdapter2$Status;

    const-string v1, "Added"

    invoke-direct {v0, v1, v4}, Lcom/google/android/talk/AnimatedAdapter2$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/talk/AnimatedAdapter2$Status;->Added:Lcom/google/android/talk/AnimatedAdapter2$Status;

    .line 991
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/talk/AnimatedAdapter2$Status;

    sget-object v1, Lcom/google/android/talk/AnimatedAdapter2$Status;->Normal:Lcom/google/android/talk/AnimatedAdapter2$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/talk/AnimatedAdapter2$Status;->Deleted:Lcom/google/android/talk/AnimatedAdapter2$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/talk/AnimatedAdapter2$Status;->Added:Lcom/google/android/talk/AnimatedAdapter2$Status;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/talk/AnimatedAdapter2$Status;->$VALUES:[Lcom/google/android/talk/AnimatedAdapter2$Status;

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
    .line 991
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/talk/AnimatedAdapter2$Status;
    .locals 1
    .parameter

    .prologue
    .line 991
    const-class v0, Lcom/google/android/talk/AnimatedAdapter2$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/AnimatedAdapter2$Status;

    return-object v0
.end method

.method public static values()[Lcom/google/android/talk/AnimatedAdapter2$Status;
    .locals 1

    .prologue
    .line 991
    sget-object v0, Lcom/google/android/talk/AnimatedAdapter2$Status;->$VALUES:[Lcom/google/android/talk/AnimatedAdapter2$Status;

    invoke-virtual {v0}, [Lcom/google/android/talk/AnimatedAdapter2$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/talk/AnimatedAdapter2$Status;

    return-object v0
.end method
