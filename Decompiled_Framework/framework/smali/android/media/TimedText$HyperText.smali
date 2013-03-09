.class public Landroid/media/TimedText$HyperText;
.super Ljava/lang/Object;
.source "TimedText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/TimedText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HyperText"
.end annotation


# instance fields
.field public URL:Ljava/lang/String;

.field public altString:Ljava/lang/String;

.field public endChar:I

.field public startChar:I

.field final synthetic this$0:Landroid/media/TimedText;


# direct methods
.method public constructor <init>(Landroid/media/TimedText;)V
    .locals 1

    const/4 v0, -0x1

    iput-object p1, p0, Landroid/media/TimedText$HyperText;->this$0:Landroid/media/TimedText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/media/TimedText$HyperText;->startChar:I

    iput v0, p0, Landroid/media/TimedText$HyperText;->endChar:I

    return-void
.end method
