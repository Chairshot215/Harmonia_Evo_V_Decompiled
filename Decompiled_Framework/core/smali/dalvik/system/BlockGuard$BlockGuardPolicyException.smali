.class public Ldalvik/system/BlockGuard$BlockGuardPolicyException;
.super Ljava/lang/RuntimeException;
.source "BlockGuard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/BlockGuard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlockGuardPolicyException"
.end annotation


# instance fields
.field private final mMessage:Ljava/lang/String;

.field private final mPolicyState:I

.field private final mPolicyViolated:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ldalvik/system/BlockGuard$BlockGuardPolicyException;-><init>(IILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    iput p1, p0, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->mPolicyState:I

    iput p2, p0, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->mPolicyViolated:I

    iput-object p3, p0, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->mMessage:Ljava/lang/String;

    invoke-virtual {p0}, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->fillInStackTrace()Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "policy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->mPolicyState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " violation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->mPolicyViolated:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->mMessage:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " msg="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPolicy()I
    .locals 1

    iget v0, p0, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->mPolicyState:I

    return v0
.end method

.method public getPolicyViolation()I
    .locals 1

    iget v0, p0, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->mPolicyViolated:I

    return v0
.end method
