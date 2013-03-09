.class public Lcom/redbend/vdm/VdmException;
.super Ljava/lang/Exception;
.source "VdmException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/redbend/vdm/VdmException$VdmError;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field vdmError:Lcom/redbend/vdm/VdmException$VdmError;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "err"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 27
    invoke-static {p1}, Lcom/redbend/vdm/VdmException$VdmError;->fromInt(I)Lcom/redbend/vdm/VdmException$VdmError;

    move-result-object v0

    iput-object v0, p0, Lcom/redbend/vdm/VdmException;->vdmError:Lcom/redbend/vdm/VdmException$VdmError;

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/redbend/vdm/VdmException$VdmError;)V
    .locals 0
    .parameter "err"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/redbend/vdm/VdmException;->vdmError:Lcom/redbend/vdm/VdmException$VdmError;

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 38
    const/16 v1, 0x10

    .line 40
    .local v1, error:I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 44
    :goto_0
    invoke-static {v1}, Lcom/redbend/vdm/VdmException$VdmError;->fromInt(I)Lcom/redbend/vdm/VdmException$VdmError;

    move-result-object v2

    iput-object v2, p0, Lcom/redbend/vdm/VdmException;->vdmError:Lcom/redbend/vdm/VdmException$VdmError;

    .line 45
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, e:Ljava/lang/Exception;
    const/16 v1, 0x10

    goto :goto_0
.end method


# virtual methods
.method public getError()Lcom/redbend/vdm/VdmException$VdmError;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/redbend/vdm/VdmException;->vdmError:Lcom/redbend/vdm/VdmException$VdmError;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, s:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 57
    iget-object v1, p0, Lcom/redbend/vdm/VdmException;->vdmError:Lcom/redbend/vdm/VdmException$VdmError;

    iget v1, v1, Lcom/redbend/vdm/VdmException$VdmError;->val:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 58
    :cond_0
    return-object v0
.end method
