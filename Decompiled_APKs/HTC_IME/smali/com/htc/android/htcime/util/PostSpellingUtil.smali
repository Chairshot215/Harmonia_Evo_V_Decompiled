.class public Lcom/htc/android/htcime/util/PostSpellingUtil;
.super Ljava/lang/Object;
.source "PostSpellingUtil.java"


# static fields
.field public static final sDotUnderlineSpan:Ljava/lang/Object;


# instance fields
.field mIMM:Lcom/htc/android/htcime/HTCIMEService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/android/htcime/util/PostSpellingUtil;->sDotUnderlineSpan:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/htc/android/htcime/HTCIMEService;)V
    .locals 1
    .parameter "imm"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcime/util/PostSpellingUtil;->mIMM:Lcom/htc/android/htcime/HTCIMEService;

    .line 13
    iput-object p1, p0, Lcom/htc/android/htcime/util/PostSpellingUtil;->mIMM:Lcom/htc/android/htcime/HTCIMEService;

    .line 14
    return-void
.end method


# virtual methods
.method public addErrorSpan(II)Z
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public getErrorSpanCount(II)I
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public removeErrorSpan(II)Z
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 21
    const/4 v0, 0x0

    return v0
.end method

.method public replaceComposingText(Ljava/lang/CharSequence;III)Z
    .locals 1
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "newCursorPosition"

    .prologue
    .line 24
    const/4 v0, 0x0

    return v0
.end method
