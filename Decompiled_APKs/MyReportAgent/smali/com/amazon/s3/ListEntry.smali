.class public Lcom/amazon/s3/ListEntry;
.super Ljava/lang/Object;
.source "ListEntry.java"


# instance fields
.field public eTag:Ljava/lang/String;

.field public key:Ljava/lang/String;

.field public lastModified:Ljava/util/Date;

.field public owner:Lcom/amazon/s3/Owner;

.field public size:J

.field public storageClass:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/amazon/s3/ListEntry;->key:Ljava/lang/String;

    return-object v0
.end method
