.class public Lcom/android/phone/util/PendingRequest;
.super Ljava/lang/Object;
.source "PendingRequest.java"


# instance fields
.field private mAction:I

.field private mId:J


# direct methods
.method public constructor <init>(JI)V
    .locals 0
    .parameter "id"
    .parameter "action"

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-wide p1, p0, Lcom/android/phone/util/PendingRequest;->mId:J

    .line 40
    iput p3, p0, Lcom/android/phone/util/PendingRequest;->mAction:I

    .line 41
    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/android/phone/util/PendingRequest;->mAction:I

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/android/phone/util/PendingRequest;->mId:J

    return-wide v0
.end method
