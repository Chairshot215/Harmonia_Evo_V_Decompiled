.class public final Lcom/android/mms/ResolutionException;
.super Lcom/android/mms/ContentRestrictionException;
.source "ResolutionException.java"


# static fields
.field private static final serialVersionUID:J = 0x4c77302b6f0646e8L


# instance fields
.field private mReplaceSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/mms/ContentRestrictionException;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ResolutionException;->mReplaceSize:I

    .line 28
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "replaceSize"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/mms/ContentRestrictionException;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ResolutionException;->mReplaceSize:I

    .line 39
    iput p1, p0, Lcom/android/mms/ResolutionException;->mReplaceSize:I

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 1
    .parameter "cause"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/mms/ContentRestrictionException;-><init>(Ljava/lang/Exception;)V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ResolutionException;->mReplaceSize:I

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/mms/ContentRestrictionException;-><init>(Ljava/lang/String;)V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ResolutionException;->mReplaceSize:I

    .line 32
    return-void
.end method


# virtual methods
.method public getReplaceSize()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/android/mms/ResolutionException;->mReplaceSize:I

    return v0
.end method
