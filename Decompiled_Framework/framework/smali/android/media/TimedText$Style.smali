.class public Landroid/media/TimedText$Style;
.super Ljava/lang/Object;
.source "TimedText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/TimedText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Style"
.end annotation


# instance fields
.field public colorRGBA:I

.field public endChar:I

.field public fontID:I

.field public fontSize:I

.field public isBold:Z

.field public isItalic:Z

.field public isUnderlined:Z

.field public startChar:I

.field final synthetic this$0:Landroid/media/TimedText;


# direct methods
.method public constructor <init>(Landroid/media/TimedText;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    iput-object p1, p0, Landroid/media/TimedText$Style;->this$0:Landroid/media/TimedText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/media/TimedText$Style;->startChar:I

    iput v0, p0, Landroid/media/TimedText$Style;->endChar:I

    iput v0, p0, Landroid/media/TimedText$Style;->fontID:I

    iput-boolean v1, p0, Landroid/media/TimedText$Style;->isBold:Z

    iput-boolean v1, p0, Landroid/media/TimedText$Style;->isItalic:Z

    iput-boolean v1, p0, Landroid/media/TimedText$Style;->isUnderlined:Z

    iput v0, p0, Landroid/media/TimedText$Style;->fontSize:I

    iput v0, p0, Landroid/media/TimedText$Style;->colorRGBA:I

    return-void
.end method
