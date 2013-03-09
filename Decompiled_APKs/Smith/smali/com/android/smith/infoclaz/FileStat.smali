.class public Lcom/android/smith/infoclaz/FileStat;
.super Ljava/lang/Object;
.source "FileStat.java"


# instance fields
.field public mGid:I

.field public mMode:I

.field public mPath:Ljava/lang/String;

.field public mSize:I

.field public mUid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/smith/infoclaz/FileStat;->mPath:Ljava/lang/String;

    .line 34
    iput v0, p0, Lcom/android/smith/infoclaz/FileStat;->mMode:I

    .line 35
    iput v0, p0, Lcom/android/smith/infoclaz/FileStat;->mUid:I

    .line 36
    iput v0, p0, Lcom/android/smith/infoclaz/FileStat;->mGid:I

    .line 37
    iput v0, p0, Lcom/android/smith/infoclaz/FileStat;->mSize:I

    .line 38
    return-void
.end method

.method public static groupCanRead(I)Z
    .locals 1
    .parameter "mode"

    .prologue
    .line 55
    and-int/lit8 v0, p0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static groupCanRun(I)Z
    .locals 1
    .parameter "mode"

    .prologue
    .line 57
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static groupCanWrite(I)Z
    .locals 1
    .parameter "mode"

    .prologue
    .line 56
    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static haveRead(I)Z
    .locals 1
    .parameter "mode"

    .prologue
    .line 49
    and-int/lit16 v0, p0, 0x124

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static haveRun(I)Z
    .locals 1
    .parameter "mode"

    .prologue
    .line 51
    and-int/lit8 v0, p0, 0x49

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static haveWrite(I)Z
    .locals 1
    .parameter "mode"

    .prologue
    .line 50
    and-int/lit16 v0, p0, 0x92

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static otherCanRead(I)Z
    .locals 1
    .parameter "mode"

    .prologue
    .line 58
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static otherCanRun(I)Z
    .locals 1
    .parameter "mode"

    .prologue
    .line 60
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static otherCanWrite(I)Z
    .locals 1
    .parameter "mode"

    .prologue
    .line 59
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static userCanRead(I)Z
    .locals 1
    .parameter "mode"

    .prologue
    .line 52
    and-int/lit16 v0, p0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static userCanRun(I)Z
    .locals 1
    .parameter "mode"

    .prologue
    .line 54
    and-int/lit8 v0, p0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static userCanWrite(I)Z
    .locals 1
    .parameter "mode"

    .prologue
    .line 53
    and-int/lit16 v0, p0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public setPath(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    const/4 v0, 0x0

    .line 42
    iput-object p1, p0, Lcom/android/smith/infoclaz/FileStat;->mPath:Ljava/lang/String;

    .line 43
    iput v0, p0, Lcom/android/smith/infoclaz/FileStat;->mMode:I

    .line 44
    iput v0, p0, Lcom/android/smith/infoclaz/FileStat;->mUid:I

    .line 45
    iput v0, p0, Lcom/android/smith/infoclaz/FileStat;->mGid:I

    .line 46
    iput v0, p0, Lcom/android/smith/infoclaz/FileStat;->mSize:I

    .line 47
    return-void
.end method
