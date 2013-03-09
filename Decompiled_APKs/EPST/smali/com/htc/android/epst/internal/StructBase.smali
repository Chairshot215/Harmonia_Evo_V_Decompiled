.class public abstract Lcom/htc/android/epst/internal/StructBase;
.super Ljava/lang/Object;
.source "StructBase.java"


# instance fields
.field protected TYPE:I

.field protected mCmdId:I

.field public mCmdToBeParsed:Ljava/lang/String;

.field protected mCurrentCmdData:Ljava/lang/String;

.field mListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/epst/internal/DataChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field public mName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/epst/internal/StructBase;->mCmdToBeParsed:Ljava/lang/String;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/epst/internal/StructBase;->mListener:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public generateCmdData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/android/epst/internal/StructBase;->mCurrentCmdData:Ljava/lang/String;

    return-object v0
.end method

.method public getCmdId()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/htc/android/epst/internal/StructBase;->mCmdId:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/htc/android/epst/internal/StructBase;->TYPE:I

    return v0
.end method

.method public abstract read()V
.end method

.method public setCmd(Ljava/lang/String;)V
    .locals 0
    .parameter "cmd"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/htc/android/epst/internal/StructBase;->mCmdToBeParsed:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setCmdId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 43
    iput p1, p0, Lcom/htc/android/epst/internal/StructBase;->mCmdId:I

    .line 44
    return-void
.end method

.method public write()V
    .locals 0

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/htc/android/epst/internal/StructBase;->read()V

    .line 54
    return-void
.end method
