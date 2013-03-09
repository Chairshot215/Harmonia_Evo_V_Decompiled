.class public Lcom/google/android/voicesearch/tcp/StunAttribute$UnknownAttribute;
.super Ljava/lang/Object;
.source "StunAttribute.java"

# interfaces
.implements Lcom/google/android/voicesearch/tcp/StunAttributeData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/tcp/StunAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnknownAttribute"
.end annotation


# instance fields
.field private dataLength:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "dataLength"

    .prologue
    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 482
    iput p1, p0, Lcom/google/android/voicesearch/tcp/StunAttribute$UnknownAttribute;->dataLength:I

    .line 483
    return-void
.end method


# virtual methods
.method public asByteArray()[B
    .locals 1

    .prologue
    .line 478
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 487
    iget v0, p0, Lcom/google/android/voicesearch/tcp/StunAttribute$UnknownAttribute;->dataLength:I

    return v0
.end method
