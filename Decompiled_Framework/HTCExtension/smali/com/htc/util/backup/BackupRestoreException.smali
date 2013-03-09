.class public Lcom/htc/util/backup/BackupRestoreException;
.super Ljava/lang/Exception;
.source "BackupRestoreException.java"


# instance fields
.field private reasonCode:I


# direct methods
.method public constructor <init>(Ljava/lang/Exception;I)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const/16 v0, -0x2328

    iput v0, p0, Lcom/htc/util/backup/BackupRestoreException;->reasonCode:I

    iput p2, p0, Lcom/htc/util/backup/BackupRestoreException;->reasonCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/16 v0, -0x2328

    iput v0, p0, Lcom/htc/util/backup/BackupRestoreException;->reasonCode:I

    iput p2, p0, Lcom/htc/util/backup/BackupRestoreException;->reasonCode:I

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ReasonCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/util/backup/BackupRestoreException;->reasonCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReasonCode()I
    .locals 1

    iget v0, p0, Lcom/htc/util/backup/BackupRestoreException;->reasonCode:I

    return v0
.end method
