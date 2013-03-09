.class public Landroid/media/TimedText$TextPos;
.super Ljava/lang/Object;
.source "TimedText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/TimedText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextPos"
.end annotation


# instance fields
.field public bottom:I

.field public left:I

.field public right:I

.field final synthetic this$0:Landroid/media/TimedText;

.field public top:I


# direct methods
.method public constructor <init>(Landroid/media/TimedText;)V
    .locals 1

    const/4 v0, -0x1

    iput-object p1, p0, Landroid/media/TimedText$TextPos;->this$0:Landroid/media/TimedText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/media/TimedText$TextPos;->top:I

    iput v0, p0, Landroid/media/TimedText$TextPos;->left:I

    iput v0, p0, Landroid/media/TimedText$TextPos;->bottom:I

    iput v0, p0, Landroid/media/TimedText$TextPos;->right:I

    return-void
.end method
