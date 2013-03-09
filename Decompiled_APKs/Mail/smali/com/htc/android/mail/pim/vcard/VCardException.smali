.class public Lcom/htc/android/mail/pim/vcard/VCardException;
.super Ljava/lang/Exception;
.source "VCardException.java"


# static fields
.field public static final FILE_NOT_FOUNT:I = 0xb

.field public static final FILE_PARSE_FAIL:I = 0xa

.field public static final IO_ERROR:I = 0x1

.field public static final MANUAL_STOP:I = 0x14

.field public static final UNKNOW_ERROR:I = 0x0

.field public static final VERSION_MISMATCH:I = 0xf


# instance fields
.field private mCode:I

.field private mMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 38
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "code"
    .parameter "message"

    .prologue
    .line 54
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 55
    iput p1, p0, Lcom/htc/android/mail/pim/vcard/VCardException;->mCode:I

    .line 56
    iput-object p2, p0, Lcom/htc/android/mail/pim/vcard/VCardException;->mMessage:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/mail/pim/vcard/VCardException;->mCode:I

    .line 50
    iput-object p1, p0, Lcom/htc/android/mail/pim/vcard/VCardException;->mMessage:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/htc/android/mail/pim/vcard/VCardException;->mCode:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/android/mail/pim/vcard/VCardException;->mMessage:Ljava/lang/String;

    return-object v0
.end method
