.class public Landroid/test/TestRunner$IntermediateTime;
.super Ljava/lang/Object;
.source "TestRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/test/TestRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntermediateTime"
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field public timeInNS:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/test/TestRunner$IntermediateTime;->name:Ljava/lang/String;

    iput-wide p2, p0, Landroid/test/TestRunner$IntermediateTime;->timeInNS:J

    return-void
.end method
