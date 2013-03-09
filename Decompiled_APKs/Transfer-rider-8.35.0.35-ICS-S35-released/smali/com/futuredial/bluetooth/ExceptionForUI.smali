.class public Lcom/futuredial/bluetooth/ExceptionForUI;
.super Ljava/lang/Throwable;
.source "ExceptionForUI.java"


# static fields
.field public static OBEX_ERR_1:I = 0x0

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public err_code:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x2

    sput v0, Lcom/futuredial/bluetooth/ExceptionForUI;->OBEX_ERR_1:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    .line 11
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lcom/futuredial/bluetooth/ExceptionForUI;->err_code:Ljava/lang/Integer;

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 2
    .parameter "_err_code"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    .line 11
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lcom/futuredial/bluetooth/ExceptionForUI;->err_code:Ljava/lang/Integer;

    .line 20
    iput-object p1, p0, Lcom/futuredial/bluetooth/ExceptionForUI;->err_code:Ljava/lang/Integer;

    .line 21
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExceptionForUI"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/futuredial/bluetooth/ExceptionForUI;->err_code:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
