.class public Lcom/android/phone/util/PhoneStatus;
.super Ljava/lang/Object;
.source "PhoneStatus.java"


# static fields
.field private static mIsSuppServiceRequesting:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSuppServiceRequesting()Z
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lcom/android/phone/util/PhoneStatus;->mIsSuppServiceRequesting:Z

    return v0
.end method

.method public static setSuppServiceRequesting(Z)V
    .locals 0
    .parameter "requesting"

    .prologue
    .line 35
    sput-boolean p0, Lcom/android/phone/util/PhoneStatus;->mIsSuppServiceRequesting:Z

    .line 36
    return-void
.end method
