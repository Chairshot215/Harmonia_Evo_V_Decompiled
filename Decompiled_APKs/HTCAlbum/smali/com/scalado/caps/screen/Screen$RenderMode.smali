.class public final Lcom/scalado/caps/screen/Screen$RenderMode;
.super Ljava/lang/Object;
.source "Screen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/caps/screen/Screen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RenderMode"
.end annotation


# static fields
.field public static final NORMAL:Lcom/scalado/caps/screen/Screen$RenderMode;

.field public static final QUALITY:Lcom/scalado/caps/screen/Screen$RenderMode;

.field public static final SPEED:Lcom/scalado/caps/screen/Screen$RenderMode;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lcom/scalado/caps/screen/Screen$RenderMode;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/scalado/caps/screen/Screen$RenderMode;-><init>(I)V

    sput-object v0, Lcom/scalado/caps/screen/Screen$RenderMode;->SPEED:Lcom/scalado/caps/screen/Screen$RenderMode;

    .line 59
    new-instance v0, Lcom/scalado/caps/screen/Screen$RenderMode;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/scalado/caps/screen/Screen$RenderMode;-><init>(I)V

    sput-object v0, Lcom/scalado/caps/screen/Screen$RenderMode;->NORMAL:Lcom/scalado/caps/screen/Screen$RenderMode;

    .line 63
    new-instance v0, Lcom/scalado/caps/screen/Screen$RenderMode;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/scalado/caps/screen/Screen$RenderMode;-><init>(I)V

    sput-object v0, Lcom/scalado/caps/screen/Screen$RenderMode;->QUALITY:Lcom/scalado/caps/screen/Screen$RenderMode;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Lcom/scalado/caps/screen/Screen$RenderMode;->value:I

    .line 50
    return-void
.end method
