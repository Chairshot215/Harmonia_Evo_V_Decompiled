.class public final Lcom/scalado/caps/filter/clearshot/WhiteBalance$Mode;
.super Ljava/lang/Object;
.source "WhiteBalance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/caps/filter/clearshot/WhiteBalance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mode"
.end annotation


# static fields
.field public static final CLUSTER:Lcom/scalado/caps/filter/clearshot/WhiteBalance$Mode;

.field public static final MANUAL:Lcom/scalado/caps/filter/clearshot/WhiteBalance$Mode;

.field public static final MAX:Lcom/scalado/caps/filter/clearshot/WhiteBalance$Mode;

.field public static final MEAN:Lcom/scalado/caps/filter/clearshot/WhiteBalance$Mode;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/scalado/caps/filter/clearshot/WhiteBalance$Mode;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/scalado/caps/filter/clearshot/WhiteBalance$Mode;-><init>(I)V

    sput-object v0, Lcom/scalado/caps/filter/clearshot/WhiteBalance$Mode;->MEAN:Lcom/scalado/caps/filter/clearshot/WhiteBalance$Mode;

    new-instance v0, Lcom/scalado/caps/filter/clearshot/WhiteBalance$Mode;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/scalado/caps/filter/clearshot/WhiteBalance$Mode;-><init>(I)V

    sput-object v0, Lcom/scalado/caps/filter/clearshot/WhiteBalance$Mode;->MAX:Lcom/scalado/caps/filter/clearshot/WhiteBalance$Mode;

    new-instance v0, Lcom/scalado/caps/filter/clearshot/WhiteBalance$Mode;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/scalado/caps/filter/clearshot/WhiteBalance$Mode;-><init>(I)V

    sput-object v0, Lcom/scalado/caps/filter/clearshot/WhiteBalance$Mode;->MANUAL:Lcom/scalado/caps/filter/clearshot/WhiteBalance$Mode;

    new-instance v0, Lcom/scalado/caps/filter/clearshot/WhiteBalance$Mode;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/scalado/caps/filter/clearshot/WhiteBalance$Mode;-><init>(I)V

    sput-object v0, Lcom/scalado/caps/filter/clearshot/WhiteBalance$Mode;->CLUSTER:Lcom/scalado/caps/filter/clearshot/WhiteBalance$Mode;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/scalado/caps/filter/clearshot/WhiteBalance$Mode;->value:I

    return-void
.end method
