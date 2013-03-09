.class public Lcom/amazon/s3/Bucket;
.super Ljava/lang/Object;
.source "Bucket.java"


# instance fields
.field public creationDate:Ljava/util/Date;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/amazon/s3/Bucket;->name:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/amazon/s3/Bucket;->creationDate:Ljava/util/Date;

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Date;)V
    .locals 0
    .parameter "name"
    .parameter "creationDate"

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/amazon/s3/Bucket;->name:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/amazon/s3/Bucket;->creationDate:Ljava/util/Date;

    .line 36
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/amazon/s3/Bucket;->name:Ljava/lang/String;

    return-object v0
.end method
