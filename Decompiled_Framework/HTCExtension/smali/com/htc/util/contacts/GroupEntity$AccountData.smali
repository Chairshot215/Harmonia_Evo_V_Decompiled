.class Lcom/htc/util/contacts/GroupEntity$AccountData;
.super Ljava/lang/Object;
.source "GroupEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/contacts/GroupEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccountData"
.end annotation


# instance fields
.field public accountName:Ljava/lang/String;

.field public accountType:Ljava/lang/String;

.field public dataSet:Ljava/lang/String;

.field isFallback:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/util/contacts/GroupEntity$AccountData;->isFallback:Z

    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountName:Ljava/lang/String;

    iput-object p2, p0, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountType:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object v0, p1

    check-cast v0, Lcom/htc/util/contacts/GroupEntity$AccountData;

    iget-boolean v3, p0, Lcom/htc/util/contacts/GroupEntity$AccountData;->isFallback:Z

    if-eqz v3, :cond_1

    iget-boolean v3, v0, Lcom/htc/util/contacts/GroupEntity$AccountData;->isFallback:Z

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-boolean v3, p0, Lcom/htc/util/contacts/GroupEntity$AccountData;->isFallback:Z

    if-nez v3, :cond_3

    iget-boolean v3, v0, Lcom/htc/util/contacts/GroupEntity$AccountData;->isFallback:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountName:Ljava/lang/String;

    iget-object v4, v0, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountType:Ljava/lang/String;

    iget-object v4, v0, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/htc/util/contacts/GroupEntity$AccountData;->dataSet:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/util/contacts/GroupEntity$AccountData;->dataSet:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/htc/util/contacts/GroupEntity;->CompareDataSet(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/htc/util/contacts/GroupEntity$AccountData;->isFallback:Z

    if-eqz v0, :cond_0

    const-string v0, "default"

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ( accountName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
