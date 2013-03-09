.class public Lcom/htc/socialnetwork/Status;
.super Ljava/lang/Object;
.source "Status.java"

# interfaces
.implements Lcom/htc/socialnetwork/Constants;


# instance fields
.field private mMessage:Ljava/lang/String;

.field private mStatusId:J

.field private mTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/socialnetwork/Status;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusId()J
    .locals 2

    iget-wide v0, p0, Lcom/htc/socialnetwork/Status;->mStatusId:J

    return-wide v0
.end method

.method public getTime()J
    .locals 2

    iget-wide v0, p0, Lcom/htc/socialnetwork/Status;->mTime:J

    return-wide v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/socialnetwork/Status;->mMessage:Ljava/lang/String;

    return-void
.end method

.method public setStatusId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/htc/socialnetwork/Status;->mStatusId:J

    return-void
.end method

.method public setTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/htc/socialnetwork/Status;->mTime:J

    return-void
.end method
