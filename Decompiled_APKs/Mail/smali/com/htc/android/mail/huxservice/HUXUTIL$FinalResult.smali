.class public Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;
.super Ljava/lang/Object;
.source "HUXUTIL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/huxservice/HUXUTIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FinalResult"
.end annotation


# instance fields
.field public errorCode:I

.field public errorMessage:Ljava/lang/String;

.field public obj:Ljava/lang/Object;

.field public status:I

.field public successful:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 470
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 471
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->successful:Z

    return-void
.end method
