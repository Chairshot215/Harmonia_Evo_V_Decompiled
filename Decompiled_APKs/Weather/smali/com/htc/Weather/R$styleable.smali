.class public final Lcom/htc/Weather/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/Weather/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final AppTheme:[I

.field public static final AppTheme_navbar_button:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 12720
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/high16 v2, 0x7f01

    aput v2, v0, v1

    sput-object v0, Lcom/htc/Weather/R$styleable;->AppTheme:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12709
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
