.class public abstract Lcom/htc/android/fieldtrial/internal/StructBase;
.super Ljava/lang/Object;
.source "StructBase.java"


# instance fields
.field protected TYPE:I

.field protected mCmdId:I

.field public mCmdToBeParsed:Ljava/lang/String;

.field protected mCurrentCmdData:Ljava/lang/String;

.field public mName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/fieldtrial/internal/StructBase;->mCmdToBeParsed:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generateCmdData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/android/fieldtrial/internal/StructBase;->mCurrentCmdData:Ljava/lang/String;

    return-object v0
.end method

.method public getCmdId()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/htc/android/fieldtrial/internal/StructBase;->mCmdId:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/htc/android/fieldtrial/internal/StructBase;->TYPE:I

    return v0
.end method

.method public abstract read()V
.end method

.method public setCmd(Ljava/lang/String;)V
    .locals 0
    .parameter "cmd"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/htc/android/fieldtrial/internal/StructBase;->mCmdToBeParsed:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setCmdId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 38
    iput p1, p0, Lcom/htc/android/fieldtrial/internal/StructBase;->mCmdId:I

    .line 39
    return-void
.end method

.method public write()V
    .locals 0

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/htc/android/fieldtrial/internal/StructBase;->read()V

    .line 49
    return-void
.end method
