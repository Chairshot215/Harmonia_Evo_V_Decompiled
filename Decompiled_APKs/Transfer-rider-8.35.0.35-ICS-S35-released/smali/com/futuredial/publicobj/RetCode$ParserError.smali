.class public Lcom/futuredial/publicobj/RetCode$ParserError;
.super Ljava/lang/Object;
.source "RetCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/publicobj/RetCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ParserError"
.end annotation


# static fields
.field public static final DERR_DATANOTFULL:I = 0x2712

.field public static final DERR_DATATYPE:I = 0x2711

.field public static final DERR_DECODING:I = 0x2719

.field public static final DERR_LSMSNOTFULL:I = 0x2713

.field public static final DERR_LSMSUDHI:I = 0x2714

.field public static final DERR_NODATALEFT:I = 0x2718

.field public static final DERR_PARSEPDU:I = 0x2715

.field public static final DERR_PARSESMSNUM:I = 0x2716

.field public static final DERR_PARTOFDATA:I = 0x2717


# instance fields
.field final synthetic this$0:Lcom/futuredial/publicobj/RetCode;


# direct methods
.method public constructor <init>(Lcom/futuredial/publicobj/RetCode;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/futuredial/publicobj/RetCode$ParserError;->this$0:Lcom/futuredial/publicobj/RetCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
