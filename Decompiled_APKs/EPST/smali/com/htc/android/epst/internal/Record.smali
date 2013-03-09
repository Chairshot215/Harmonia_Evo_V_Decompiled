.class public Lcom/htc/android/epst/internal/Record;
.super Ljava/lang/Object;
.source "Record.java"


# instance fields
.field public customAttr:Ljava/lang/String;

.field public dmCmdId:I

.field public failedstate:I

.field public index:I

.field public indexlen:I

.field public isResponse:Z

.field public isSend:Z

.field public laststatus:I

.field public name:Ljava/lang/String;

.field public nvitemId:I

.field public relation:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/epst/internal/DataChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field public request:Lcom/htc/android/epst/internal/StructBase;

.field public response:Lcom/htc/android/epst/internal/StructBase;

.field public rule:Lcom/htc/android/epst/internal/IRule;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/epst/internal/Record;->relation:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public clean()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method
