.class public Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$ConcatRef;
.super Ljava/lang/Object;
.source "SmsHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/atparser/utils/PDUparser/SmsHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConcatRef"
.end annotation


# instance fields
.field public isEightBits:Z

.field public msgCount:I

.field public refNumber:I

.field public seqNumber:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
