.class public final Lcom/coremobility/g/k;
.super Ljava/lang/Object;


# static fields
.field public static final a:I

.field public static final b:I

.field public static final c:I

.field public static final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x28

    invoke-static {v0}, Lcom/coremobility/g/b;->a(I)I

    move-result v0

    sput v0, Lcom/coremobility/g/k;->a:I

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/coremobility/g/b;->b(I)I

    move-result v0

    sput v0, Lcom/coremobility/g/k;->b:I

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/coremobility/g/b;->b(I)I

    move-result v0

    sput v0, Lcom/coremobility/g/k;->c:I

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/coremobility/g/b;->b(I)I

    move-result v0

    sput v0, Lcom/coremobility/g/k;->d:I

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
