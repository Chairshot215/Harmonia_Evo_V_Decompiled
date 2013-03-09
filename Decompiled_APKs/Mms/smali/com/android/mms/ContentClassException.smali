.class public final Lcom/android/mms/ContentClassException;
.super Lcom/google/android/mms/MmsException;
.source "ContentClassException.java"


# instance fields
.field private final mIsRestricted:Z


# direct methods
.method public constructor <init>(Ljava/lang/Exception;Z)V
    .locals 0
    .parameter "cause"
    .parameter "isRestricted"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/Throwable;)V

    .line 37
    iput-boolean p2, p0, Lcom/android/mms/ContentClassException;->mIsRestricted:Z

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .parameter "msg"
    .parameter "isRestricted"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    .line 32
    iput-boolean p2, p0, Lcom/android/mms/ContentClassException;->mIsRestricted:Z

    .line 33
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .parameter "isRestricted"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/android/mms/MmsException;-><init>()V

    .line 27
    iput-boolean p1, p0, Lcom/android/mms/ContentClassException;->mIsRestricted:Z

    .line 28
    return-void
.end method


# virtual methods
.method public isRestricted()Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/mms/ContentClassException;->mIsRestricted:Z

    return v0
.end method
