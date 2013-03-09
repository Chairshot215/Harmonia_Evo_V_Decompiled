.class public Lcom/htc/android/mail/eassvc/core/EASRequestController$EASResult;
.super Ljava/lang/Object;
.source "EASRequestController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/eassvc/core/EASRequestController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EASResult"
.end annotation


# instance fields
.field public data:Ljava/lang/Object;

.field public errorCode:I

.field public result:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 139
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
