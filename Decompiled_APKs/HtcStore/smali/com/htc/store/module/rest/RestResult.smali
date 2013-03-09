.class public Lcom/htc/store/module/rest/RestResult;
.super Ljava/lang/Object;
.source "RestResult.java"


# instance fields
.field public mAdditional1:Ljava/lang/Object;

.field public mAdditional2:Ljava/lang/Object;

.field public mAdditional3:Ljava/lang/Object;

.field public mAdditionalList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<*>;"
        }
    .end annotation
.end field

.field public mResultCode:I

.field public mResultData:Ljava/lang/Object;

.field public mResultList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/store/module/rest/RestResult;->mResultCode:I

    .line 16
    return-void
.end method
