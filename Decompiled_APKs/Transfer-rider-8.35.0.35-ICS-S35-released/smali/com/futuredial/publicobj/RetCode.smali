.class public Lcom/futuredial/publicobj/RetCode;
.super Ljava/lang/Object;
.source "RetCode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/futuredial/publicobj/RetCode$PIMError;,
        Lcom/futuredial/publicobj/RetCode$ParserError;,
        Lcom/futuredial/publicobj/RetCode$CommucationError;
    }
.end annotation


# static fields
.field public static final DERR_SUCCEED:I = 0x0

.field public static final DERR_UNKNOWN:I = 0x1

.field public static final ERROR_CANCEL:I = 0x4

.field public static final ERROR_PARAMETER:I = 0x2

.field public static final ERROR_PARSEXML:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method
