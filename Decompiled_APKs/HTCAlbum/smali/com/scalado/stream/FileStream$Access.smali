.class public final Lcom/scalado/stream/FileStream$Access;
.super Ljava/lang/Object;
.source "FileStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/stream/FileStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Access"
.end annotation


# static fields
.field public static final READ:Lcom/scalado/stream/FileStream$Access;

.field public static final WRITE:Lcom/scalado/stream/FileStream$Access;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Lcom/scalado/stream/FileStream$Access;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/scalado/stream/FileStream$Access;-><init>(I)V

    sput-object v0, Lcom/scalado/stream/FileStream$Access;->READ:Lcom/scalado/stream/FileStream$Access;

    .line 29
    new-instance v0, Lcom/scalado/stream/FileStream$Access;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/scalado/stream/FileStream$Access;-><init>(I)V

    sput-object v0, Lcom/scalado/stream/FileStream$Access;->WRITE:Lcom/scalado/stream/FileStream$Access;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/scalado/stream/FileStream$Access;->value:I

    .line 20
    return-void
.end method
