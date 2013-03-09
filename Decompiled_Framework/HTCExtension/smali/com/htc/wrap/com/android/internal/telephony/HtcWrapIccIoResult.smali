.class public Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccIoResult;
.super Ljava/lang/Object;
.source "HtcWrapIccIoResult.java"


# instance fields
.field private instance:Lcom/android/internal/telephony/IccIoResult;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/IccIoResult;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccIoResult;->instance:Lcom/android/internal/telephony/IccIoResult;

    return-void
.end method


# virtual methods
.method public getSw1()I
    .locals 1

    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccIoResult;->instance:Lcom/android/internal/telephony/IccIoResult;

    iget v0, v0, Lcom/android/internal/telephony/IccIoResult;->sw1:I

    return v0
.end method

.method public getSw2()I
    .locals 1

    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccIoResult;->instance:Lcom/android/internal/telephony/IccIoResult;

    iget v0, v0, Lcom/android/internal/telephony/IccIoResult;->sw2:I

    return v0
.end method

.method public setSw1(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccIoResult;->instance:Lcom/android/internal/telephony/IccIoResult;

    iput p1, v0, Lcom/android/internal/telephony/IccIoResult;->sw1:I

    return-void
.end method

.method public setSw2(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapIccIoResult;->instance:Lcom/android/internal/telephony/IccIoResult;

    iput p1, v0, Lcom/android/internal/telephony/IccIoResult;->sw2:I

    return-void
.end method
