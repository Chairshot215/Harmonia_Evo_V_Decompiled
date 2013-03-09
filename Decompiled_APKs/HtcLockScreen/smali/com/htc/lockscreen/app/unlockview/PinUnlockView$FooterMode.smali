.class final enum Lcom/htc/lockscreen/app/unlockview/PinUnlockView$FooterMode;
.super Ljava/lang/Enum;
.source "PinUnlockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/app/unlockview/PinUnlockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "FooterMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/lockscreen/app/unlockview/PinUnlockView$FooterMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/lockscreen/app/unlockview/PinUnlockView$FooterMode;

.field public static final enum ForgotLockPattern:Lcom/htc/lockscreen/app/unlockview/PinUnlockView$FooterMode;

.field public static final enum Normal:Lcom/htc/lockscreen/app/unlockview/PinUnlockView$FooterMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 69
    new-instance v0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView$FooterMode;

    const-string v1, "Normal"

    invoke-direct {v0, v1, v2}, Lcom/htc/lockscreen/app/unlockview/PinUnlockView$FooterMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView$FooterMode;->Normal:Lcom/htc/lockscreen/app/unlockview/PinUnlockView$FooterMode;

    .line 70
    new-instance v0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView$FooterMode;

    const-string v1, "ForgotLockPattern"

    invoke-direct {v0, v1, v3}, Lcom/htc/lockscreen/app/unlockview/PinUnlockView$FooterMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView$FooterMode;->ForgotLockPattern:Lcom/htc/lockscreen/app/unlockview/PinUnlockView$FooterMode;

    .line 68
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/htc/lockscreen/app/unlockview/PinUnlockView$FooterMode;

    sget-object v1, Lcom/htc/lockscreen/app/unlockview/PinUnlockView$FooterMode;->Normal:Lcom/htc/lockscreen/app/unlockview/PinUnlockView$FooterMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/lockscreen/app/unlockview/PinUnlockView$FooterMode;->ForgotLockPattern:Lcom/htc/lockscreen/app/unlockview/PinUnlockView$FooterMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView$FooterMode;->$VALUES:[Lcom/htc/lockscreen/app/unlockview/PinUnlockView$FooterMode;

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
    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/lockscreen/app/unlockview/PinUnlockView$FooterMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 68
    const-class v0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView$FooterMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView$FooterMode;

    return-object v0
.end method

.method public static values()[Lcom/htc/lockscreen/app/unlockview/PinUnlockView$FooterMode;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/htc/lockscreen/app/unlockview/PinUnlockView$FooterMode;->$VALUES:[Lcom/htc/lockscreen/app/unlockview/PinUnlockView$FooterMode;

    invoke-virtual {v0}, [Lcom/htc/lockscreen/app/unlockview/PinUnlockView$FooterMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/lockscreen/app/unlockview/PinUnlockView$FooterMode;

    return-object v0
.end method
