.class Lcom/android/phone/ADNList$FdnData;
.super Ljava/lang/Object;
.source "ADNList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ADNList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FdnData"
.end annotation


# instance fields
.field sName:Ljava/lang/String;

.field sNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 462
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 463
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/android/phone/ADNList$FdnData;->sName:Ljava/lang/String;

    .line 464
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/android/phone/ADNList$FdnData;->sNumber:Ljava/lang/String;

    .line 465
    return-void
.end method
