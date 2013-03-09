.class public Landroid/media/TimedText$CharPos;
.super Ljava/lang/Object;
.source "TimedText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/TimedText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CharPos"
.end annotation


# instance fields
.field public endChar:I

.field public startChar:I

.field final synthetic this$0:Landroid/media/TimedText;


# direct methods
.method public constructor <init>(Landroid/media/TimedText;)V
    .locals 1

    const/4 v0, -0x1

    iput-object p1, p0, Landroid/media/TimedText$CharPos;->this$0:Landroid/media/TimedText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/media/TimedText$CharPos;->startChar:I

    iput v0, p0, Landroid/media/TimedText$CharPos;->endChar:I

    return-void
.end method
