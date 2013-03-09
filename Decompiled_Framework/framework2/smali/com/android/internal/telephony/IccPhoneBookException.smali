.class public Lcom/android/internal/telephony/IccPhoneBookException;
.super Ljava/lang/UnsupportedOperationException;
.source "IccPhoneBookException.java"


# static fields
.field public static final ERROR_GENERIC_FAILURE:I = 0x3

.field public static final ERROR_MEMORY_FULL:I = 0x1

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_SIM_IS_NOT_READY:I = 0x2


# instance fields
.field public mError:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    iput p1, p0, Lcom/android/internal/telephony/IccPhoneBookException;->mError:I

    return-void
.end method
