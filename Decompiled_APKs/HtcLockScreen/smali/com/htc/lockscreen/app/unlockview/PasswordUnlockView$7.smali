.class synthetic Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$7;
.super Ljava/lang/Object;
.source "PasswordUnlockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$htc$lockscreen$app$unlockview$PasswordUnlockView$FooterMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 90
    invoke-static {}, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$FooterMode;->values()[Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$FooterMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$7;->$SwitchMap$com$htc$lockscreen$app$unlockview$PasswordUnlockView$FooterMode:[I

    :try_start_0
    sget-object v0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$7;->$SwitchMap$com$htc$lockscreen$app$unlockview$PasswordUnlockView$FooterMode:[I

    sget-object v1, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$FooterMode;->Normal:Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$FooterMode;

    invoke-virtual {v1}, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$FooterMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$7;->$SwitchMap$com$htc$lockscreen$app$unlockview$PasswordUnlockView$FooterMode:[I

    sget-object v1, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$FooterMode;->ForgotLockPattern:Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$FooterMode;

    invoke-virtual {v1}, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView$FooterMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
