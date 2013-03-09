.class public Lcom/htc/android/htcime/XT9IME/XT9IME$HTC_ERR_STATUS;
.super Lcom/htc/android/htcime/XT9IME/XT9IMEDef;
.source "XT9IME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/XT9IME/XT9IME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HTC_ERR_STATUS"
.end annotation


# static fields
.field public static final HTC_STATUS_CORE_FUNC_ERROR:I = 0x10008

.field public static final HTC_STATUS_ERROR:I = 0x10000

.field public static final HTC_STATUS_FILE_NOT_FOUND:I = 0x10003

.field public static final HTC_STATUS_FILE_READ_ERROR:I = 0x10004

.field public static final HTC_STATUS_FILE_STAT_ERROR:I = 0x10005

.field public static final HTC_STATUS_JNI_FUNC_ERROR:I = 0x10007

.field public static final HTC_STATUS_J_ADD_INVALID_WORD:I = 0x100001

.field public static final HTC_STATUS_NONE:I = 0x0

.field public static final HTC_STATUS_OUT_OF_MEM:I = 0x10002

.field public static final HTC_STATUS_UNKNOW_ID:I = 0x10006

.field public static final HTC_STATUS_WORD_TOO_LONG:I = 0x10001


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7007
    invoke-direct {p0}, Lcom/htc/android/htcime/XT9IME/XT9IMEDef;-><init>()V

    return-void
.end method
