.class Lcom/futuredial/OBEXException;
.super Lcom/futuredial/CommonException;
.source "CommonException.java"


# static fields
.field public static final OBEX_CONNECTSTREAM:I = 0x1

.field public static final OBEX_GETERROR:I = 0x5

.field public static final OBEX_INIT:I = 0x3

.field public static final OBEX_OBJECTSTREAM:I = 0x4

.field public static final OBEX_RESPONSESTREAM:I = 0x2

.field public static final OBEX_RESULT:I = 0x6


# instance fields
.field private error:I

.field private obexError:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/futuredial/CommonException;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/futuredial/OBEXException;->error:I

    .line 87
    return-void
.end method

.method public constructor <init>(IB)V
    .locals 1
    .parameter "errorCode"
    .parameter "obexErrCode"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/futuredial/CommonException;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/futuredial/OBEXException;->error:I

    .line 81
    iput p1, p0, Lcom/futuredial/OBEXException;->error:I

    .line 82
    iput-byte p2, p0, Lcom/futuredial/OBEXException;->obexError:B

    .line 83
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/futuredial/OBEXException;->error:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    invoke-super {p0}, Lcom/futuredial/CommonException;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getObexError()B
    .locals 1

    .prologue
    .line 108
    iget-byte v0, p0, Lcom/futuredial/OBEXException;->obexError:B

    return v0
.end method

.method public printStackTrace()V
    .locals 0

    .prologue
    .line 98
    invoke-super {p0}, Lcom/futuredial/CommonException;->printStackTrace()V

    .line 99
    return-void
.end method
