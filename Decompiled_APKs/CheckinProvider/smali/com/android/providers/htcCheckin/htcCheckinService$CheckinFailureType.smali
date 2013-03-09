.class public interface abstract Lcom/android/providers/htcCheckin/htcCheckinService$CheckinFailureType;
.super Ljava/lang/Object;
.source "htcCheckinService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/htcCheckin/htcCheckinService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CheckinFailureType"
.end annotation


# static fields
.field public static final BlockedRequest:I = 0x1

.field public static final ConnectTimeout:I = 0x2

.field public static final NetworkNotReady:I = 0x8

.field public static final NoError:I = 0x0

.field public static final PackageInProgress:I = 0x6

.field public static final PackageNotFound:I = 0x5

.field public static final ServerFail:I = 0x4

.field public static final SocketFail:I = 0x3

.field public static final UncategoryFail:I = 0x3e7

.field public static final VerifyFail:I = 0x7
