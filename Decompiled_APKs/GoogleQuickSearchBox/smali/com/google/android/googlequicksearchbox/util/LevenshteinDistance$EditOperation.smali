.class public final Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$EditOperation;
.super Ljava/lang/Object;
.source "LevenshteinDistance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EditOperation"
.end annotation


# instance fields
.field private final mPosition:I

.field private final mType:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "type"
    .parameter "position"

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput p1, p0, Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$EditOperation;->mType:I

    .line 139
    iput p2, p0, Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$EditOperation;->mPosition:I

    .line 140
    return-void
.end method


# virtual methods
.method public getPosition()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$EditOperation;->mPosition:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/google/android/googlequicksearchbox/util/LevenshteinDistance$EditOperation;->mType:I

    return v0
.end method
