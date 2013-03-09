.class public Lcom/htc/android/mail/meeting/MeetingRequest$Sensitivity;
.super Ljava/lang/Object;
.source "MeetingRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/meeting/MeetingRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sensitivity"
.end annotation


# static fields
.field public static final Confidential:I = 0x3

.field public static final Normal:I = 0x0

.field public static final Personal:I = 0x1

.field public static final Proviate:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
