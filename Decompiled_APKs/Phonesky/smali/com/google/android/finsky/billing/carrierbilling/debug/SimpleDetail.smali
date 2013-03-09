.class public Lcom/google/android/finsky/billing/carrierbilling/debug/SimpleDetail;
.super Ljava/lang/Object;
.source "SimpleDetail.java"

# interfaces
.implements Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDetail;


# instance fields
.field private final mTitle:Ljava/lang/String;

.field private final mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "title"
    .parameter "value"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/SimpleDetail;->mTitle:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/SimpleDetail;->mValue:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/SimpleDetail;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/SimpleDetail;->mValue:Ljava/lang/String;

    return-object v0
.end method
